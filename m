Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA433B8D76
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791276634; cv=none; b=IZkGwwYozxBXkyzZUtAXzYptKSqVrrvm7Ny8gnQcMAvvVNJsRmhGsjxQQmftc2qHXmSGO3aa2iKpM1c8Qya7qaLxgRi5h8S6tf4WykOtb91LPFVp3VO8yMLWePkrQGBfpEOazqdXe10GkiO/EFqiEkGDpYRY/FuCvRe9TKU4DZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791276634; c=relaxed/simple;
	bh=DMIw46cspBBFSXpcDU4KDd63rNMpwDpRjIpdpfeSj/w=;
	h=To:Subject:From:Message-Id:Date; b=Xukkj6xZQ/dy+UO8RNUd83gnKL10cNrnOs1smjSsL339sC6C50scbsql0VeThsiW5R/NmcuGS4i3D6uVq6mdHf0IsyGFXkUP8tGhd170k5XS+LY2t2sa1DAYDMSw+TnzEm5F85eoLx5DeDZ3trzMl/kXT9m89+3gnrdOAVPC5+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuXGcmi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuXGcmi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE89EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791276633;
	bh=DMIw46cspBBFSXpcDU4KDd63rNMpwDpRjIpdpfeSj/w=;
	h=To:Subject:From:Date:From;
	b=nuXGcmi2x6bo7vLuj08BRBpAo52pryB11ymbcd0XFc0MoEdwPtPAErT1dKjpnioCB
	 McCm0TrEdrv6eXxKLwyvDZMr/HuZJDmkOtyP2DmKPYcp8xAFG5vtfL67aweuhrIuM8
	 EYZcwPBuQrewYCdkCqTIoye0tmVbdIXsXwealdP0dijApeXf43liENHzy7Cydoj6eN
	 w+BYvuTGEPWt/2aiSsial2Dp5CKY4YzKfHAqVjI32sSVYXNzLKc3EHh6Ur3OqW2JwW
	 tVBO7r5KNjh+AKxJvV8Mj3fa0uezUyq8ljs8zgifBedaGGV2Ftkqqz2YMH2qcNyTt3
	 S5sYwFWM/dXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127663368.3162.1725804021538060826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67db3428a48a18a47a3944330fc186f498747e8d42ed2a0342d0fccaebfe489e
Date: Tue, 06 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791276633
