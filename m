Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477153DBB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729782954; cv=none; b=J3EeiDapZoDi57JZiGdi6sa8eAdF/231r6NWuj8en2NTPF2wrsuEVDDHRJKyrxvJYEiHUgmoQOE/PlEXiphTLuvTEKyNZK8hx6BXrIzA1AUPMKszzrmtnxekwKLf1mfwwN3Dm42f4BuxLsX7VJUervrWepXCwqmBIkUw5O+cfC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729782954; c=relaxed/simple;
	bh=lGg83bMiyxJJpeyA+ZNjNmnbT3PH1zCVbHgpsScIe94=;
	h=To:Subject:From:Message-Id:Date; b=R0uzSJ2fdS1N4iyZ9oy8/+Q+0xM3dEt6ZdG+vCH6YJlh5drEHIH+R9SEPjHGsZoDZxS8G4Cud9lzDR0FE0HS1iI6dD6X8k1oNAbVgBN/pi+b8yTj9O67ogmxQdyfbdIpEqQAcXFmXmoiinmBT/ANzUUxiaC7sUNLe9jzGeMjMkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmCNRiPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmCNRiPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB267C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729782953;
	bh=lGg83bMiyxJJpeyA+ZNjNmnbT3PH1zCVbHgpsScIe94=;
	h=To:Subject:From:Date:From;
	b=fmCNRiPH09+6fSCOgKGXVtzKI1YzUGL+tZXuwUrCSIq2GUAkndEhmMxE1ZkGzxcPh
	 fPGt+LXUtHw2Ez+tGi4DZuiRMekbQlIRepUva69hJEi7AbJxnwmbZNAAMkm6zvk4dV
	 4VHwziXbZtXgACLT96/MBEGaaUqAZgrJXfBnYK3V451nW6T3omU/1qfOS8V+/vuUoL
	 jOpyeMulGDu6A2fkB1oyid2Y8/XQ9uFFgDhzaMYeLDA+2NCKoe7GBpqQukLQwpFiXd
	 6ZMECpZlXT+gCeXLlQ56A8i+7jg70Xm2bE/itzex6HnYTXmUYpghdloq5Rkp92KPr6
	 Pv+D1KsZfblAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AACE8E89
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172978295360.6214.15791229641869519329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20dfdcf89115066fe4b3465c300a5777ff69186b228b116ba7a3b2ce1c7a43a8
Date: Thu, 24 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729782953
