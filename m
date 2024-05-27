Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611012E3F7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716803663; cv=none; b=s1Sc5ZBcXMTwfLVry5o0oNkfxTnrUXUfBeMyddSpma8lfKC3LcTPY24pnZgsABx5AbJ23OjxNKEBAkruQkJxElBOdZILnEjyggtRZSiJAOV7zkA+Uosud0Cbmy/95xzkXvzYIz7YQGp7imFTUMSFp5uDhycrkBa+JMwfEonWhXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716803663; c=relaxed/simple;
	bh=vMMtc6ZdXUeEP6UuDHq/rJCdIr8qZWcsJtL6ziimo6g=;
	h=To:Subject:From:Message-Id:Date; b=VYUELo0pLVW5Ha9+0/DBpnGPgdYDofDCN2/aWsnVxJ0JJDK/VKg8vxT3HUlDwgGxLbFjMyYFNPvgS1Y4xz7txvtd18plYfvD4O+P86VAVGNPgYCocb1Vd3+0FUFOM0YTGjYw/+qN/jIu50bug6sw1IaiouKIaH9/xy2X8/wo2pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Trrpatms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Trrpatms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D25C32786
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716803662;
	bh=vMMtc6ZdXUeEP6UuDHq/rJCdIr8qZWcsJtL6ziimo6g=;
	h=To:Subject:From:Date:From;
	b=TrrpatmsIf9LncQFMrj618XoJ4WS8CC1x1r4FJvz0YVlDjc7H/Pv6HwbkdxU3LU3J
	 kDWlZChiPvMMnQGkr2ClTqN6S3vSuwP5bIFaZbjnVvuPYtJQZD9TyR5SHmjXIJXbJR
	 /Oylwkwp9XoLiRcNjGXStDmY0sdxKpy4l8xBWV7YQhqT/IFuYyM9LtxZR5a67SEKOG
	 YVs1kVtnQgxrW7coeWuzNH1KGDcDD83Jb3b3bSuGQNPGLbHAhCqwLaXNcVO6+4YUAP
	 XhTYzKYjMW19D2zObrhOgkHxB3Ad7FaMb/t9/g38bsMLTLcAV5dEKAvFKPSNO8l/G5
	 N1coRZROQcD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AABC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680366278.3735.10681773003525497297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20a2e9d8cdbb3b622bf893a7df3933ffb9a34955c3516f9a15424ab9ae7e87e
Date: Mon, 27 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716803662
