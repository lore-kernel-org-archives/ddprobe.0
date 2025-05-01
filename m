Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CF20CCE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746121794; cv=none; b=E28olcucNbcyUtJK+hCsI06J7c94uN0vs2J1AsCEbAtGUIQIxmFK/DPTd/k9io2qwdkkt10z6k0+GnhMRFWpm7zZzIVvTU8ToGCuGAtOs9viKG5zpKz/EpnxWbpVUfkdZk0b+EvvH+lckCfSywtf43BAC6XAzsx01YeRXizPlM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746121794; c=relaxed/simple;
	bh=RoGpI9ubS3710ZGa9uKH3yEx2spFTbg51D7EEEvC44Y=;
	h=To:Subject:From:Message-Id:Date; b=reFwEp/d9vcBmwBn9/GjfiTkcAsvyY/y6SCz1Zkyd7hdh8g2PJGgC9upT9FZLdyyhJk5bGxpVBv3/9b2tEFiHIsaSbAv9XwQCyUXnfGmLtqx6GrGuJh6jNv6L+EezLui1WlL8hgkTOJlB3PZwqOYbGybzHYn98Cw7RU0cMnvOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIKK3TwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIKK3TwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67ABC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746121793;
	bh=RoGpI9ubS3710ZGa9uKH3yEx2spFTbg51D7EEEvC44Y=;
	h=To:Subject:From:Date:From;
	b=pIKK3TwThSTZ/9Q+atr35krgnqLq9uOH2TijxBVbGb0nHJSlPzEy67TuEb0QTH3V9
	 M7d+H2MvcoXwL1jEwPehnF8DESpv4UONG6i8kpzBn3s/EBMlL+uyKS9EyDXlSVUZKr
	 T/IcH2kGiq0SfD4G1No0Gmi+nllySRNIfnco9bd2EqeQp7MiGTg/1hn6ADBgCWaovk
	 ulx6tTjWdhTUAvXwyRQHdZP8AU5PlErnI+3U1hRu4bzNantGmX+PswhPJFkB0p82Yg
	 Byc+XUpbO4zh+w+0767NcOGmOtYezXa8kT1Ae5XyNcxROK1znAHPt7kycS4/vtZbR+
	 gvcdUotoGIGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446BC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612179357.16969.13527907225761886615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f2302751692af04a9603a376cb36775438e0e0f2ef499bc98ee935aff650ee
Date: Thu, 01 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746121793
