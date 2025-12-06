Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1DB2FB0BA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028574; cv=none; b=SBeAc3vMSkgTqd303CHVnWdx3Zi6ZoagvVBx3OSGo1AufHg1lkXXVju9Q7CW+un9arAhTaePS/sYdYOx++x2a3CYE+Zqgoy/tR50hyzv1kwoC+0cjeTdZv0CdW7joKxDVhDX69MvgPUH8svsRpt1OPXStCQlx5+ZEycXAr3hXNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028574; c=relaxed/simple;
	bh=PX3qzYJG9HLNW5aaZVDlh1BpUigCQX2aUPdp/EnzeBM=;
	h=To:Subject:From:Message-Id:Date; b=s0i2z8St9rkrr4LSxjCqduFy2wD7xvVALbUBTp1ywTIu7fLYaGsQEgx7YNUpTIaiKbKaBglPUbWHv+zTj0uBAJu3RAoTIm9ZWT6KY+nIfCal8TILTJhdjV4gBy73jto7PohPr0f04VX9KVT7fHGqXb1e/LCgCLJZYDhPq1DWbQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5tb0MOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5tb0MOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765028573;
	bh=PX3qzYJG9HLNW5aaZVDlh1BpUigCQX2aUPdp/EnzeBM=;
	h=To:Subject:From:Date:From;
	b=S5tb0MOSOVeJc6YqqsPSZForkB7Auv+JufRcE1FTJaVPnZT7IJIQBbQpluWDh6WXl
	 qmjAOuz4BULVE/Ml/6YPC+NDpqydakekv82b2eiwFD+KwPWcEVEaiLCaxIsNPXg9ma
	 e8dL5xuDuaA5p2+r0YpP6EsiszJksRwqbyNX/vL8AvlpGtWXPdbE3VJH+R3nLjdFqd
	 5AyzlwmgX7wRaxtuz1JPL3uu2GndU6+3hRyBllf8/LS14VXMgK6aZ53BfNxwb+slyw
	 Lf5kkFukSJ6vOVSckt7+63i+EjTNoKFCR29cNjidS9hXkBtLNtLSH22rcfp5c4avcF
	 /6aejdIzVYfRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE6D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502857358.7013.17002813383565711284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f8fd2870da9dac2b4cc46d8a0a1ec9a392031b0744559d78d8d9bf8c3e1fe6
Date: Sat, 06 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765028573
