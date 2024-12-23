Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5441B4148
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734964554; cv=none; b=sQF5O/G9/OHOcM7CscfGDcygOCdZjKQ+fa9DotJuJkie6bafidjzj05iEzR+4gyVnvd8qs6VzT8C3VcRxEnY3Wd+20Vr4Hsr1TfH2EkhtLuVuHmavK0KVdEPUllb8/HMFsQwuu4o6v4LxGljyordnhFg799pN5PtNkv0205jRWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734964554; c=relaxed/simple;
	bh=GUA6EyyH2CV/tS3911jfDFNECSKp8zmm89Ckh2leDo0=;
	h=To:Subject:From:Message-Id:Date; b=i5uzw++gyiLraqDG8ikq3/RIHAm6J6tsMLQmjdB398mghgNXuSZOb7WD/fZxVDGjRAaEn3J/zzULNvwOUFRBLuw438gpZ2JSEbMGAA9Scq918ChHjB4grEhLFrDL69xRd5kdjXsTUmXaaXMT6f8SOq7RDeNrAsedum1xzk/S1r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcduLbV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcduLbV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D06C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734964553;
	bh=GUA6EyyH2CV/tS3911jfDFNECSKp8zmm89Ckh2leDo0=;
	h=To:Subject:From:Date:From;
	b=QcduLbV/PFvpsNU+RNo+ERmqu+Dh5w8Xx1vVR8xMv7aQZM6vz+K/o2D8n+FPiwUYT
	 FuNfKx6J2+6cdYQB7oHqOeAHoYxmront4WZWVx4fhiTWF0OM+l+gmG9o6LPb0mslnY
	 4O9s8VVQUt/Ppv6K17HPrKfPOvGjepxEpUz7Djx7f6FY71nM8SRdV/ny6fxHi8NpcF
	 RWdUREgZogoCd3SIcnEjN2fnTNlIIAbr7qvT4DlB1yZm4P2Q8cndgllCCfGoVuE4Q/
	 JlaJBTkwbErDSFTQFgU6DDgL9K7DhMqjAbs9aVhWjA/QHf10XPe67ZsasYewxyRFni
	 S4mLZ0U/YmPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0195E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496455364.26863.15914539061283165868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bc8fd6594fec38c4af31c56a44bd66e5ea7dbfaba88f2869450d860694c97b
Date: Mon, 23 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734964553
