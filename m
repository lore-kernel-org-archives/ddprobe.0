Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673A854763
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789278634; cv=none; b=kDoDwpY5KokBxDnwnRyx+YZFzN/YVJZkAr1CRZvervF6QCDnHv6rTn6zqeeU2uMQg5JPSR//QMzfsMQUC6bmGc4QQ6hjlOMpEKd8cqgUOQKDmLLUD0n43UmXAX4OAXMFESa3sgpAErWutbSchp2SrXANHdHnbm9syHQy+O4cf2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789278634; c=relaxed/simple;
	bh=8V85rfoakIrblZ5QUr+IwfcXtH1ByRRVDWlqYXHTNxY=;
	h=To:Subject:From:Message-Id:Date; b=a1O9bIMsImA5JdtIC7Y6ANcvJQQR8On1Yjm0F2maPXFdM09ppnDbqQVkCUpYWCCYIoTuXcMbn8BeOG+d/556SGhddylRsAHuYxKTMUZ+wLrrHbnYSiOoCUEUc6jl5j9JYLT8DvwRrA81rayzMqFh5t7LNjzspcTjeCqTyrA5+As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntXbSqca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntXbSqca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB309C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789278633;
	bh=8V85rfoakIrblZ5QUr+IwfcXtH1ByRRVDWlqYXHTNxY=;
	h=To:Subject:From:Date:From;
	b=ntXbSqcaqi8l222BqJSmUCN+PeUSWnegJq2D9hItFCHf6QsCHxWM2wA3unp5uEW6S
	 UA1eEr9aYy7n1wj7mGPU4bjEV+c6BZ3ac1SwpaA2B/vqI7BcXtEHMI9/4U+K4AbpTJ
	 qinfDXDBXyuD8scUZ54IsNMzpHwuOVY2FOjTZV2vAAfz9+oSg9mokyfZosuRMCC9Ty
	 1mM4cqT9GMb2siJlMF9rcZOL6X5mPLNxVX00eQ1VhzaTHDnWO+RXBrg7nv8+MkJrkB
	 Cr41uV01aWYL+bXFNSr8rnej8eWnEcXfHBDz9bYACwIdMslwcpwZluWDpPs4oRW+zp
	 GF39MRH7eqGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B038CC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927863368.29319.4381786960781038908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7394e301656b29552e2ade3ad528bd376cfd12c68cf5f1e56285c506282b0683
Date: Sun, 13 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789278633
