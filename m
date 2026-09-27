Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAED3C0A1E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790544634; cv=none; b=SuCbusN8g34pRMHe9goUxzi7l1bOY5/1ibOAspkaVwDr/lTNrGl0NZMYygP69OU+Yn5DQ+PnUaO8bCWFESf2BFea8KoyGF+I42feBbAewD7oc7qZNvND9AHYPcS0vWc5ZtZqD4V/nQ2WnhI27LRrQQWPoWYa7ARj3izJt3Wqw3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790544634; c=relaxed/simple;
	bh=c+vMr6Yn7HWLBho2rxJJL6Snd3D7w3tcQPb0iZVQRbM=;
	h=To:Subject:From:Message-Id:Date; b=b/idScPcF5cAxFYtA9Pej4C9ON8JsAAJ23lX8IaE5x00XxNOHHoXfGktUu7oJbbwJKuY5QXNOOtf8UEL+1C1+nB5YuS3x2NeIfEF0JFyRveXAVJNSWfrpt+Pcku6BkVMfyNEuSy9vEsBi+IM4zygzVa6PIEBZWIc95u/GctM4z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoG+ONsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoG+ONsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9918C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790544633;
	bh=c+vMr6Yn7HWLBho2rxJJL6Snd3D7w3tcQPb0iZVQRbM=;
	h=To:Subject:From:Date:From;
	b=PoG+ONsziE+/aHhxBqY3apVI+Ko0RTukSsJP1r+u7xvn8AV25F6A0lBA2J24+KXU5
	 22JYqpyb+vh+XX4IvRZTp3Msmgwb5WwhnpKZ6CuxltaVmRpVZ2oVRSskO0V6jvSCZt
	 rspZiSWJJvuXZ8FhelgSVq9hFX2jS1Pz0r7oW4pdIWvO0MnGVMrBLA5vYtqqX4Ixbc
	 Yic1PW6CCScPUkcwcZ05YLeubofY19p4/NfNeTMA+n8AZ41JumzCLZM4s2MbJKe/qG
	 vW4joIuhSjcXP+MJfQi01AmOp7/eYPWX+hqS68LHuL3v/xpSjhCHeJNmGPOLLdCS1P
	 QoP8Q4o1eYXlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2229C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054463370.28406.5160372930024163904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3b54f7c9cb32253163bceaa8e7590c7c00f3638695f8bb1ef8db22a5962ad0
Date: Sun, 27 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790544633
