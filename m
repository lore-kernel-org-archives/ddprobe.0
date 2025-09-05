Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD8221767A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757053194; cv=none; b=TgPUVUs0nscUtFo1zJznZJysl1lCn2B3fNnL7E4q31jb7DkrLrusWL3SBaIBoE3IM6tHsfXLxAPZQFOq9PvEnrY6s+FsYQwBWiW/dhbLSXLIHqDuO4TuE983yquDQo+eEPPDORt8CpbudA+PEIoOBz/n8SCVen2PT7FUIOxH3U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757053194; c=relaxed/simple;
	bh=GWBH8EfneBSb54SE7P2Mf/+TWWmorI+FoBJ6gMRez+I=;
	h=To:Subject:From:Message-Id:Date; b=NLhHDtCFomzBA+pFrVUW7CZDF2xqtCpRMZLLhKmGPKBdFLfVfdjtVT8yOlUlSsxZBlz0z8+bsDaejWYqL5isc+U50IfyKyYXU4+rU5SB1oWb2BfaBMyENEv9EXvHXV6/G5NsNfrCQ3cLmQKNgRV5F2I7hyehu9W2EFW3LjhS/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXiuXqCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXiuXqCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757053193;
	bh=GWBH8EfneBSb54SE7P2Mf/+TWWmorI+FoBJ6gMRez+I=;
	h=To:Subject:From:Date:From;
	b=UXiuXqCL5ELdpCs1A+An4M+a1OArntHIU0BvTpjDZOH4dHAxcpEishxuuzNfGtDcK
	 a/6ZQpInB7qp0xKWb5AL6lRd7lpx/2ADdoRKQxwgVDLYJSyQUnrClQKw9Qr0Ti/A7O
	 eGd6qAjdFLtwBl3e6UQ7vSfMQC4/Kfvf3125UBDoYXmbj9l2dlIOx6yuHNWoQ/ykd6
	 3aFrA3fhlGqW2+MvTJndXTbFcGRDlbF2qtcUxUZvIHrT1hKF6sxy4uO5YNLjRZUWVy
	 /VGLu/BPjfpw+4O2cZDfYGdYMTbeAIyXV0DqIsSP7XP3miwdsUJqQ/dS/qPR+fZgDR
	 mnGp7gAurYDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE0CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705319358.18383.5644738204873171903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9197a7907c855abb781c75b36aafdf166ca0ed7fe083fd1202545f18699623
Date: Fri, 05 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757053193
