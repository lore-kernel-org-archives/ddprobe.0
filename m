Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600836999B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769021634; cv=none; b=HLrWC9/LEMYrSM7MCpOp5JYIs3KFkTwd7rzF0eeraWSIwqD4557GzuTVmA97GTRy5tnrBkcfWQlbCx6ej5/I0OUsiAkpDzrXyCVtGCEywIS1jNs1hyNwMhcR74r0qJc4GWHxN3acceEgkjkJFAckYXagKc5mDfXH1gPMGNXCdd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769021634; c=relaxed/simple;
	bh=r5aUngVJ/wz8TRKMs4Ve9fvb/whk1ipTWuVMUx7CuFk=;
	h=To:Subject:From:Message-Id:Date; b=klZ2tZpu1qPNEmfbEY1u/ug+772pYf04FI0DGCecrSvbnvdWxf/v/+RUPd4Padvyr0AJQ5H3wa4vOGIAfIM8ypnnAICQt9snaW7VFnKj9yTsAloWBomVCEJkjHZtWKkRzZmz47rlaCSyveDbA5sV4nMDBXMEMgqs6E7Gmk/26Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ3lm0Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ3lm0Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F366C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769021633;
	bh=r5aUngVJ/wz8TRKMs4Ve9fvb/whk1ipTWuVMUx7CuFk=;
	h=To:Subject:From:Date:From;
	b=eJ3lm0Y3A9iu1HBgaBQOiqtkeGsYq2wwSW0s+XQcnoWQKCXMGfjDYBwl66qIxMFHZ
	 bQ/mYAcAaU1hjqLSUIRmIA/h83VJHOmWuk0VPIKvcVW7xnvya4ghdktxqK/ZkHsbvp
	 EHpNqfHbZ3+uoLRrONwMvkyb9SJ2dcFxE3eEMQsujNsVPf3pmvgh8EA9kGAxsdzQ+4
	 88HWnvLT9zr2Pl2lBmRCKnpKXBOhgnE0ShpNt+y1f/N9p+FW9HGd32e2CF8477998n
	 b0jwMlaS2j1DaHVqJ/2tpA4bzAgDd1wbl041ReVxXAYLa0PDeFKBWDIJiMTafFnhP6
	 CPFrQR4Vb9yEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFBC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902163358.27109.10485209960658186864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb2b4edae4d6b7d4ddc8d686c72bf418604a741d2621f08a34b3a699f285670
Date: Wed, 21 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769021633
