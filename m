Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80951246783
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776601654; cv=none; b=TA/UPM5m1RsGRHQOb8MZLSvgI7t4lLcq89cv7U1ol4+QGjBOJ4co42wimFWS50z4qXoVIYxYIfSSvD08GAfMEDwqG+2xDF13hZyNICEYYiGfhiH9rK77xqRKhayinlysYCmrHDNsKV/CB9ee0bBI5YTNn6GhBoMLAMT5+AyDLA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776601654; c=relaxed/simple;
	bh=uhZW2kSdHqea5j42DxQbUNIbQIIhu3Jr2xX69D2E//A=;
	h=To:Subject:From:Message-Id:Date; b=PL5oVYkMM+eMLEDenMJ34z7e9XwTnduuF516gv7P+yvncWL5OdoqySeODMMtzdbJDBvmO/trfiy1r/HgOz0d84iIXP70/4uDa3o0TuxQJjywGg5Rmucj/yF0NH4ihXKgJV1Qc6e86+8lKMhpRCzUVgI6ADM/XJT3KbaLzxPJ6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpIhjUBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpIhjUBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ACBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776601653;
	bh=uhZW2kSdHqea5j42DxQbUNIbQIIhu3Jr2xX69D2E//A=;
	h=To:Subject:From:Date:From;
	b=EpIhjUBYzzdGM0uZPPAU3WpCmx9yiZzzP59HG/VO11vLphL57MsLwpRMVxsy6crzn
	 wOJSCMwAu3q9TCNExSclhiN4iPVb1Q7i63LhW+eqB/x7YI0p2dIja/I+9qFAxspeAn
	 Go7ETAykYz626Af8zaNOZLmXDll8J4RTCEXotj/Vs24vlWVFM9DrkqWrCTjbOZdDu2
	 7V0TKJ758oZRt2stiX2LLkRn3Joeq0xV2MfQwIdZJGNxP1hW2uHDUBJy4sOPoPwC/z
	 LYaEe3UMb9P+CBAjoXYigRBSSvBoHhE90Gi8jWCD5bj/XzpESnKubNs5AyKO8i6I4x
	 9QO2RkeF2lY3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC2CEA7196
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660165368.23874.7931151985308865276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef6b97b3ec3f58936cc96e6c142c29e35075093404d621eac9bae4e0894a846
Date: Sun, 19 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776601653
