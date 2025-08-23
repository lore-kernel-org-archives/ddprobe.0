Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7B1DF97F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755956994; cv=none; b=n+GJqJrzgRI1K7UxF6NeMHIc67gNLMVvvka/pFctj3le3CrELj9jfJKJywVFOn2+hvmo598btbvJ324T5e3XwSYIvOCcp7P+Fmzc74QOL1OeysmsCh1HGg9MXe3HRDD5nigXdS6GOPQ8JLgRnHQcWcHEaSE8HQp2FNgh2+z4FCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755956994; c=relaxed/simple;
	bh=6upvpmhV7UUe644ShAMlhIpJsa2xA6us20kwBMiiaWo=;
	h=To:Subject:From:Message-Id:Date; b=fRgQAiV/1a6nLyiiZ6NkDtSfWedr83UL5j1SdMNYtNF1n77kWT6LjclFQFdEprxAPBmPDswj0eIu7iMcnVzgVnJb5GxxRkJj689agl4RboKaAkxPOt8XErhPfnV9jSoJhshTBynfQxKlg2NuHK4mp752t/oF//o9REMiGB/++Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4vrOpUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4vrOpUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAFEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755956993;
	bh=6upvpmhV7UUe644ShAMlhIpJsa2xA6us20kwBMiiaWo=;
	h=To:Subject:From:Date:From;
	b=X4vrOpUOMVj7kB1vjKqvWEQmfaFgyqH0jfkL1NB6Pbjna8xthX0U8fbzQHdZBUN4Z
	 LCorucDMIr4o/mIEVuVcXo7AG+RXdPLFu8F3BPT77T7U1QlxO4+l3M7x/sGcpG5XO8
	 y9xxFcmJdztP9o5x/JPrbitugdiVUM5HIJ5OLJAn/2pQG7gJnwaiqvQ/mok3O9atNm
	 SrOQ5b0kthwmb50C0EC9w5aeUdTFQfOem/Xd0oVRWLa5X5ylEySsN7luQyrnIk0n8J
	 JXnHeoGJuWSx/QOzb7EZ5MmsmZi5/Bl/ImLNyXUS6MGeQuE75BWyHCte6A+62ze/GA
	 zfdBmM5yfRtUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0ACA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595699357.17959.4007248510425186291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7237fd65af8f7ed48714454f07fe5db0ca3f18bc8131372cb6ec76aff1d2f9
Date: Sat, 23 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755956993
