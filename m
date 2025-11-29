Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69281D8E01
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764400973; cv=none; b=YMhiqIRjYeRONVULPM0vNrWrrbAS4b9OyT/7+MBhh0XVR86fz6ElblbbdFzDcmP1bIIv5EV1C94AG+Ng7xNmv4QgHYYezUumg5QxYGo+rmk/7JnO34c+fASLoWT0ZYsV31q7IIdFNCIhbKtFFXFrjCizRliwHGeUevCL0m7dbe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764400973; c=relaxed/simple;
	bh=ztKEua3P70goP3fMsaY6JmymuIT6cvwKDFIlNAIF+dc=;
	h=To:Subject:From:Message-Id:Date; b=tbWdADVdidXdJ+eg/XIWmeUFR9zd/fGlnlKAV3SIvlC/58a64f3SeiH0YnjVv67OkmuolqgpqFuQjsPSCvizCsgLStjYaUnTd0UZtxzClMRCvTVOCLKbutaQDBwZihn9sgIPKWi0L150IiyZMVEoudNOKLewz0YZCrY5SWy+eSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSNTOs39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSNTOs39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4654C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764400973;
	bh=ztKEua3P70goP3fMsaY6JmymuIT6cvwKDFIlNAIF+dc=;
	h=To:Subject:From:Date:From;
	b=iSNTOs39W6tCrFLTjQzpsIt0RMhVcdD/zdpQPV2Vc0LAQh/ekIsWPh2S8pQh5NJ/f
	 +1AbUB02auzXRjstth4cvIxz1WtgnSTuHFM/AbTO2g7qsxhlt+0cQtjlfNWNeBm+SU
	 xeEcpn6q+N7nsEtdE5BazNJdLxW3zrWVI0mo9RxZZdntBoGCoeKYsr65dSHM7gKp8W
	 Oz6RzyaoVLSSi1MhIuQWOyB9abZgRqi87mO4M1/YWhfXAxTS9O5aMpp+HYx5fYh8xT
	 SVcSmtsL2cAE6lqmNXu1R23Ldxuyq3X3se5/9H7Z0RM030SwFR+N5FWSJuPnjDVxTI
	 VBmGvXQxHeiDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADDD116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440097358.8701.14623096957942558519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201da722e0d50c098df919ac15cac888947d44c41442f09d8e95f265ca589d1c
Date: Sat, 29 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764400973
