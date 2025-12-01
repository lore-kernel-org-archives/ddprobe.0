Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B7212548
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764568974; cv=none; b=IqpxOWbcY5hGkWqs15UHIlkzxMJ8EhI6ZBZ3IbJctN5vc4FIbVnDEG0RlUVYEiOB13oIUCt6qaRZ4xNP+wRoHUrMHtsbiNMQ1lR8HubB1umeZY6ft8MpO/194Az7TWKCtAYfpLEsOTn5doQvcd615A6BUeVWd87SnoPfJWbAeqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764568974; c=relaxed/simple;
	bh=Z+8igdjEtiiNgpumet7TyCSyi7CFhIxOEjEYlLWzIok=;
	h=To:Subject:From:Message-Id:Date; b=JmMv1MhEplp9xa3QZ+NT0W6wKsWEzXvTFnJugbp2jOx5rZBL2qzUVSXtfbew9dH7wotHl4OrMywk7DjKGReurrkK/UWO211BZaaPY19cLQopSSqeHkaf9AenyXxHXpRjve5Edqot9T141DWEOm4BB7m8pB8mdWulPmX49/FBR7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCTDOgma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCTDOgma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A366CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764568973;
	bh=Z+8igdjEtiiNgpumet7TyCSyi7CFhIxOEjEYlLWzIok=;
	h=To:Subject:From:Date:From;
	b=gCTDOgmaWQE5BfcAo0oqEXyAtIe4C0BexD5lVTxJca/YQ6uCXFai1uaUzxBZyDyHi
	 95ggwMXrpVcVNvIJDdcRqa1/Kmz2JkbOZ9H3dss3yUm1a+9YNfeAj/13djee3tvG7W
	 jb2PKpdT8ccrA/wZTmPL7DLM0rBBH3y6wHyAwoYKIJXXBh6TvvERvp57Srt6rVgjHE
	 0rKA/euudZZb7QMaRVic0nPFbKEAzNF/pScmzNIFHuYOo/H8fugndZkA11ou7VscAr
	 OouzlEAGyZ9CJd1AZv9PpvB9h+cFjAo7Vyq90hHWDr6zNVJl23qwlBaHRt5dos7KVu
	 kJA00Nx1SfA7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FED116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456897358.1425.7183483848722348195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0c73b751dd306605b3edd1482d241535def5e950f4bb0eb461e140f1777f06
Date: Mon, 01 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764568973
