Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA78483BD4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787668234; cv=none; b=WXIv85wE1OU20Hof49qiVwRwUHysOaOwwdP+EF7rPifzeHaot6I7bC3tmOVSK7jdKR5L3cGYi85MwnvElgz/KXeW3C+zpbz6QGj+wJoLJHoJD5aaQv6x6hjf+XDtnT5tJQLBcQyID3RhPiJqS4bwI2yFIDc7ltwYw/bcRl/ZZO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787668234; c=relaxed/simple;
	bh=d+DJ7tum5dhInFG7L8lg/fty3YntILMXOf7SfkChitw=;
	h=To:Subject:From:Message-Id:Date; b=fQcvWxijDPJXhGy7TyC2BL1NrbN6P0ZOBuPx5lb/lF7j4bUWKVbJzTpIMrUzkrx+NZh4+tTvfZeRqCNZC1iHS+oY245Tf3JpQSF9wyWh2ePSeRVAvZb++TiVbRa7teikrxBXzt158H6oGkBpIkjWQe/CaCIacLFm0R9vprnNo1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCE2N+oH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCE2N+oH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE721C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787668233;
	bh=d+DJ7tum5dhInFG7L8lg/fty3YntILMXOf7SfkChitw=;
	h=To:Subject:From:Date:From;
	b=YCE2N+oHu9CMhWVPzaFKlWqIFDgx7I0H7VxhbkmqPSkFIZspuie4EDAgCuCjJwrnX
	 Q0PmWyb8XCtw9FxSDOG/FGcwVF1WOcqmmFQaxrq1Z+FzUt7NfFCnKSqbaoWOzOJlkI
	 C2h2nYPoUXo1RtXhYm/r3ZZBFqTsZkDOtdXq+vz9KI+X+q+gLqXDkLlImMd8H3t3Bl
	 QgTd84miDynvNy/rFpf1p74K6tZp2BkfP0Hb08xqv6nqxrhhfdoPvWkUB3yM8xevgD
	 7pEt2fHD3XD4s7kst6TfLj4j4ID3fA/dTcZMmPu6eRx/0zoyIUZpHi50NkTqZix6X1
	 qBRjR7U9LnBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DEC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766823368.3686.3626051009610827359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6b8e2abca6fa8592e88dd218bfa6f07d3c132fffa7e7db16d3fcdba0afadab
Date: Tue, 25 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787668233
