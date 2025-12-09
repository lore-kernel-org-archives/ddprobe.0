Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A7191F66
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765240374; cv=none; b=Bn8NhL9/N8J45iE/PXbpKUpAFlt19iZHDGdVVDXucVqPQTorZskK36eF7iXOzIohMseX2wk4S++qkjaLsYEOGqcaZ/jgl0AYDwovPTAbvImCQSqmQJ54nfq2urTLSXhjm3JiCTJ+fmGtJTrj+EKZrfp3PC/VnJD6MC/o90rd9YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765240374; c=relaxed/simple;
	bh=J8P0+HtXrkAFNwfimUsyO+7DIE7sIGIC523BV5vjOGc=;
	h=To:Subject:From:Message-Id:Date; b=mXOTq4pkD6v5C8+H2nWNrVBl80iamy949leeyY3mztZEEv6s3erwUJpr2rz8gI4ekZuG5uLc+4ZNGiaojHHQK8ts+PRrt2mqIv25jOLD2moOEuO4kkrKSzWfj2OmAhLZnRJSXPe8mFTHfhs5uAessJs0H0uTZGCq0LDM4g8/qdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmp+lcf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmp+lcf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF3AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765240373;
	bh=J8P0+HtXrkAFNwfimUsyO+7DIE7sIGIC523BV5vjOGc=;
	h=To:Subject:From:Date:From;
	b=cmp+lcf7nva6g2seUf8KtmRW+VESH4shgFOzv6ba6BuusylgmG+zvmQWqbjgHneJe
	 gDegOrQMxFgIagCpSxY5tf9mCYtfYU2DEbIXnwPl6Rkdb6i1KKPNqPd12cxXVUDLIt
	 h3Cn7Kx7IUrL7QzNgZv3xJF5z5Gb9aVTFxHTwqK9AN+Fp3FH2J5UswlZ/RKraPxmwG
	 ZiTCGQfdCeD0+NUClh5VqDRqhT7eYaJkBsJUdLtZkgRxKKVNx1FfLl1cCKMi9o7s6G
	 bpwXIlrdoe2y+gT+FkaDqLy1o+PBo4l+O2An0VyWd8i8nORkgrhiiB+ceKHEpwi/my
	 +3vIRmaaTQpAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A7D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524037359.25776.17211347921060242742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a87f2452effb529d07339611e372f2d2f88df32ea075f6d385deec03af72c8
Date: Tue, 09 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765240373
