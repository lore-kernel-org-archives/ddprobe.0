Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65422848D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718676503; cv=none; b=JEiuT1XwBPO37Pzf/DhL9686rTir7namBRdwwNVBXaaMj1FtDeGkjHfDD7bxRPmZKzmXVzDjCAmcDN6KTjgU2PmfX/dmHmu85PpBWood9Qv9VXCJuZCfUx3lg35Kct45fdk9FcbyaKVSXd1zb3LHkrcL1w3wYOqvRuzs7jzeaxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718676503; c=relaxed/simple;
	bh=1dsD/49nzoWGH8zztr+tuOB5taTSSbbQcnWBK5DdHQ0=;
	h=To:Subject:From:Message-Id:Date; b=gfVtqixhTzYQSn0LvbeD1z33twqvSdbSTiSoE/CYt0XnxViB8xsDTec9Ju3JraLx1a/gugqGgGwoo7+kl//bjgfJGv3tZCGLAa5Fd61l+WI0FAzl/oRTY6PD1lJTx5Yn+MeS3MREz11gsJmXUDVM+VE31TzlJLNcClRzsJVi+oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjaztpuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjaztpuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD09BC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718676502;
	bh=1dsD/49nzoWGH8zztr+tuOB5taTSSbbQcnWBK5DdHQ0=;
	h=To:Subject:From:Date:From;
	b=tjaztpukEIHnFl5MjsU1jVE/oe410hmBUvow+VMoCIFegJH3pwWeAQCFcwtTfrvtA
	 iySRNMvkyAhA2ietoyA8w4tmGk86xbECTJPSfN7JEaLK0uUO/5+I33hzloPVTssxcf
	 lq4g1x+pRUnei04zgp+dQ+MPpzNpQrX52GEARpWvbgpuBEOsErfhSTbHMC6O7osh1i
	 YvSQQhnrpwfeC11O1tWRCe6TjwtsKeboURlOQ4AhiypEP77kID/vQ3X57QgQHV/t7k
	 inflbyaTah+l9skI7/z2e9FnB3UqM5AZO3B42elFG0OmsiTsvey7Y8fMIP8TJ2MnjS
	 bjVts9dLuMrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8741C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867650281.25850.15924830980430219784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fa081bb2d85ee225e7afb0701fe2766825e02be5ac8715ceeafae592f83ff5
Date: Tue, 18 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718676502
