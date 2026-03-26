Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6738229C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774566894; cv=none; b=BNYNU4b4D4gM2mnZ9ZY6S3wBGSVBMkq2AOieXtRMJKWbQ7jBLFCKTTrkHOVw/eicrS0XpQqzPsUxvjQ7vrQRJwB9h2Df2oUMkIZCAEi0TseFNCb2AehlVJzja+8qzRjM8E0gboRB4MwF76EhO9/OOfUP22758AeZhcCZ2K3oAAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774566894; c=relaxed/simple;
	bh=JRgPAx5eGYxztU5dlbFGaewUE2Nf/7BUlf3ZRDoAr/4=;
	h=To:Subject:From:Message-Id:Date; b=EJnZ3CQ8kd2EHatI2APGUF3hAyWFxPcAvrRdGpPV31uHImnA+KSiGup/wwh+qnXhYkgcSRR6RItKrQtQufMvqRKHHjq4g4vst5SUv2SQK8ZGorJy8YHb62MdcrhtEEibcTEXn549KUWyn5mCnwJfSHcn0A1lp/1F6gZ8tdqbM5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c60NA6tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c60NA6tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1181C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774566893;
	bh=JRgPAx5eGYxztU5dlbFGaewUE2Nf/7BUlf3ZRDoAr/4=;
	h=To:Subject:From:Date:From;
	b=c60NA6tmMujgFQdOYWqfcaBDn6BggupoOvvtoEklrUuIpQ4yPSIc62AAEcXTHSXrL
	 p1PUODZePysmRk/M2Pm/DqSD+g9hIG425q+2mtLidbeUpBSBUodbmKi8L9OyO2zRV5
	 TLhzM7qcrfoHnH858oNdkd/L5S9gdVHe0LHryaiI6PWBz6tF3NSIqkmc5hs8RruLAV
	 AGI0SCMBbmXLpY/qLMNzpLb1FkYeETh79yzvOCy+1fF1bYoCGa1+OIX5a3LFI5ZEzt
	 KYEGflFJmOsaxGsnugQlFeSG7d3xRfOe4qLUYcmsUv2cZqCXwktQCm+qymmMwu0eCL
	 KYl68dtPes5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6F10AB82E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456689358.30883.14402274873505640894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7546a15720587226014bfdd6315de7984ebb8c5406f7333ed18562b85b61d399
Date: Thu, 26 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774566893
