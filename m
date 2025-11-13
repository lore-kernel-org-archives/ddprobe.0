Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155D134F486
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763048394; cv=none; b=mlAMJ5GRLm4z1cmFJ9VofPC0owix92utrUQQBPJFFvIFDvKK66zRFJHIflQ/kM3VlKlkG2RHpt8Xvj0k39VPEdsvnRJGgVqu0GGNlvVN45tiCN2oLAHF/H+KqnTeY0Gjr0x2/ksrqeEVE/kAvOTNTF5ZoEjboB0DYMvrMKduPy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763048394; c=relaxed/simple;
	bh=rGFhjNwK6qoKfcSFaJ9GtZOmEyv9xsOxbb7MgkshCnY=;
	h=To:Subject:From:Message-Id:Date; b=ENuG0T8GQg9g8tyqpvtDOD2aLG4UCVWASAI92de5prpt9h0X19u9q1y8Z0WAS+bt0J9HuKJMrkOs05xCcz3G45IoflGetkUfFmhD9yWdxBKIixhNWmi3TFCGMQBwhKmox9rYJMa9HixNXg6s33qNitETJOh1c7IpK0+nAMR8vm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPPQR1kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPPQR1kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFCFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763048393;
	bh=rGFhjNwK6qoKfcSFaJ9GtZOmEyv9xsOxbb7MgkshCnY=;
	h=To:Subject:From:Date:From;
	b=pPPQR1kji1ex/84yanNoXNOGFl451hxH1eqB5xX3/IgddljfW+r9av60XMIpBQlwU
	 3lA45vUGLh08LWi6muarNcxp/rTB/0v1lI+kAIJNG5Fgj5htmpX1ZuVVO2asA7S6bx
	 rgqikS3fSNyxyF0mdE6jWkVbYx84VQ6XF+B36sLGEjpsZdTj5AK2MBeBvoybCOvyl1
	 B3iBR5m5BBCT8SFYbYbrabWNPITODNaYk0IGUAhizsTgQj+VaOwc2MjMfrYrq70dRf
	 D5htyucE6iXQ9eCYo2HE8CfC3BVV0TVnaSlQ4H3CS5nV2z7tZ0SkNTEUyzKcS//X17
	 00sbV44R/jbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2BCD8C94
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304839360.301.9146551390296856533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2647367f039fb3efea2eeceb019fe21e0efb9167bf48159014634b2b20e24d84
Date: Thu, 13 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763048393
