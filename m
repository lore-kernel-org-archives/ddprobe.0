Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B18B10A11
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718444903; cv=none; b=BexaQt4VDlkZcJryC+Mu/D1rWKJkHn0T1UqbYOwdmfgg7lxJWTM34RNC+wZtLpdfA6tT/uyY1L+BLKyNG3Ga7psNpunO4O3kVuI99x8XNt9eVeQ+U6z9JXZ4Hfd+usNxRKFM8pMtJkrD1hhVpyoFs2jF7cb4r1LiuQaNnRPY0Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718444903; c=relaxed/simple;
	bh=MN/2OvIrvcD9IuEyDpqU6GyxeB9TpCg0CvqjomLWY7c=;
	h=To:Subject:From:Message-Id:Date; b=Sg8MGAFVtKe5M22pkv84Tt41oQ7/CUJHYHyFilE1/Ct8DvwvAJvYefXweWsI0LID/r3g+IoTwr4SwpIH6fctcGCEDNMS8zx4BW9nCWq3J6h4EKodh31JZZpbS7QCJCp7fYonMClfeEuflwUX8WZBdnju+/Vavr+K1t4qlA3NiXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSuHp3B9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSuHp3B9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9053C3277B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718444902;
	bh=MN/2OvIrvcD9IuEyDpqU6GyxeB9TpCg0CvqjomLWY7c=;
	h=To:Subject:From:Date:From;
	b=BSuHp3B931ZFLOsCcmT+BpfSO4+fGxMbFHsjNBJqJnWV2KVBG6C7Fn4vnf5Fw4mX1
	 GKL1bNXLN867THRJ3jC62+1M6SGUrGnrrXTt34kvivdo4I+ySj9/6HUtO7CILFBwVP
	 1prjFcqQoXK5kKDR0F4/EPHyVCltPHnDQYhvXSucOkBWXiaz3XloJX1KNwuiHxxKWo
	 F2yG0gPhuU/dIUBPwmGBl1HFnHhg2OiiH6c3b+vXzQnIoSF4VH8L9EGoQCDMiDm9rd
	 c706ly5H3Cr4GEcbtn3GC4rzv92vRmJyN+25ndPGvH0kzX5MRqOBtRNDvrB0b9VGmP
	 U0k8UJGKIU1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3380C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844490276.27351.16145533268982827583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0005d7f5e89df238148fdc59d2962b67556dc8ec25fcc9dd424aecf12709db1d
Date: Sat, 15 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718444902
