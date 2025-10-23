Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CED2347BC3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761248994; cv=none; b=TMaJQ9KD37LpdW/9ED0OeM8W6XNVI7XsKw1Xmw/a9X07fAsvqkgXPBiYaH5TsUB+OsP00HftrcDhyFh8slIZSaj7rUhsSA8kNH1deQ/TszSydHNkuCZIL62ejAuFyQPz2IA0B9uQmaiu4eEcicDoZFIfw0rZOYfHGumEzF4BYDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761248994; c=relaxed/simple;
	bh=ouf3SR+J55yUykybKyMKl8cUqQRYkpmLiywEIipUNA4=;
	h=To:Subject:From:Message-Id:Date; b=ekMIFkETp1UN5WFTxptwHGwj6t17EodFj+RZ5zmR6zJJJ2SdZdQz/wO5gsp4DzdbVm2InMpPa2pxKlEbE7gISt18Qb3Q/LGomwTtwPNCysKUpyX6b0mUH0RaEURU/zNAk7q9kUUHzT6RHsdwsA+WmbYNpmneUA7lIifrKkcMB+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIk3K8AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIk3K8AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEED2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761248993;
	bh=ouf3SR+J55yUykybKyMKl8cUqQRYkpmLiywEIipUNA4=;
	h=To:Subject:From:Date:From;
	b=jIk3K8AIvJfT5QAAv5zpfyxYXUdj3MLCMC/CzqBwh3ydaYqhxdjq1MRj9KA+RRzrd
	 dRssGcnKMSlNryf+aRqLbQsapioa0rCmirxUTP+tevgwk6D9OYaCAGpCwkyL5zdO/S
	 2g9VwJaHxpjGADJ1fniGYyoB90ydf3eJEnzisK3OJ3glUfHRWdEBrbC7Wpt4/Rr/eD
	 jrl4BOLCD/gGP8lQtk/k+b8jvVw4n0h2toQM8PUkgZVlvb5UF0CBR7ccInN71PWt1M
	 doINWYCPP+iStyVjNC/eYL/WWowYXjx8I7+Mux5SQgDS3jONeoMNt8e1nPWR8gzOnD
	 pbVok+s9hvjhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D9CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124899358.22739.16183397297126483882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d35e694fc6433b2e670ca4f652fd53e9b2f61f3a4641f14f47fa93fd664a94
Date: Thu, 23 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761248993
