Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76969175A7C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778389834; cv=none; b=oDw/BObQsB1lMWSiLZi/9+xWjgboVQPDns3ukBSovMQQZmg0qvNl727e5QpxirqVMZ1+h9fjTtneexcWlctFtbGta3qyrDNnF7917NKV/YUgek5n5+/xXoPPtwX1Y9QQOEU15v2SY0SuBOG3PIHsWReWwTBkTCZvxD0DyHurJ3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778389834; c=relaxed/simple;
	bh=Ak6w70V5McTfuPuKJwa12gsKOspAQmRERD9nM8TGF4I=;
	h=To:Subject:From:Message-Id:Date; b=N7XN/2wsC9S0FLXgz/z63P9l4whwSBPOV2p4xMNYYDU6Mp1gINKioUQoK0V6Ap4WdPNvsSSOFoNOwEkT/NXqtE/dPRlUNcqVJ+GftSSxcRBCCQo36SOWFxuQlNaiCrHw6HBEbPTC8hLBerJ53G9oe15KQEOXV01heaSlPFORvtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9PybvWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9PybvWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AEBAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778389834;
	bh=Ak6w70V5McTfuPuKJwa12gsKOspAQmRERD9nM8TGF4I=;
	h=To:Subject:From:Date:From;
	b=M9PybvWJU8SPT61+2+GJ3q9Y9z/Xil+R6jHp0cWqQ36MjCPTv3ZZQeU+nRnijQEXF
	 YzXZlaph/cGxFfqouTec5L5n7oUjs4+E0AzQIP2THtFyCfPg0gsbaIlh+2z6o2xrOF
	 AuksPiLE2+JbpYXIcq3cTmB0cwAVGZNpYVALVitg2oICz9tKpSBuV91xA7GpVrwO/U
	 jaRy4kj2/aMepi17D8A1j5eIj1F6OaCDA+O6K5GNhKO8+LnP1qBcr45B6qOCuyUeOl
	 Ckzkfas2jRnSnXOHkfNdbyVpxLfJ7Eyf63R9A9t8hjqC7Yxgu0TXQYfT9L+8ZIh/SB
	 IVCxHEZmM1TTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3E1CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838983379.16393.367155193525812376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de925956c646311b000cc93636b4e6051b506912d9b2a78c120696a745675542
Date: Sun, 10 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778389833
