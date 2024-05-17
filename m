Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5134E1B95E
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715933543; cv=none; b=gnilWCQdGX9Cca8ZfDZFUnmuCFiS46ZnxiclDxtqauVTJGrYugbQC+IIhiui2fIHWIIRjOVwmYNzynzeis2/T61WjQjHGnBbW//gKoFX2R2JddyS3A0h/Jwc2pLTvivN+N9bB2DpuMDd1B7c7HXHDpthLDsK8WPbrDDRaIKtaBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715933543; c=relaxed/simple;
	bh=Ho7KUMEhXTwn/4FOKESDYT9u19DSRMC/z2c95pPGeTw=;
	h=To:Subject:From:Message-Id:Date; b=ZHF5oSNbhnuXuooADhdDthnreGZdsWQswQKYZFKhI0Y6lA7KMawrtQudgRJtjwHB11pqT4guvX0r7DwRIBcPw4jvxoO5X6Mixt7CTaxU4BUfRR2nAXoXwqYz9UMG3OX89y/SbA3yzA3Jlov8F80Q6+mskTYH9mXOJ59xeciQxZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVQVec2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVQVec2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D1EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715933542;
	bh=Ho7KUMEhXTwn/4FOKESDYT9u19DSRMC/z2c95pPGeTw=;
	h=To:Subject:From:Date:From;
	b=cVQVec2GvHK4GXYAFbOFf+9v02bFhprmwmRiJblGsxRakx84OMVM806DFC5ZS5WK6
	 kVfOtzIvdRszVMrDV/px908F97lTNgI0yyMhgUVkpkQ/ehPBzO6orOH0TBc800z+GY
	 U53piOvQ+YLUvdn+3dBkr8ZZlHcmnE/XHJLVoAkH4qO60oE98g81OJzmnJzdSZ7pfh
	 g+tOv/+x1h6Hpk1NaKJW3LcwdtsPVx3/p6lMmgrpWMNuJ+WuG5Wi6OGx04wiZ7saEp
	 uO1CkeJ9AfTX4DGOP8HIRnGqPJrT7smPwlVZnfULf2yoIAqQAJ1vdmZcT9ZjEVQlBg
	 xNoGlL15pnuKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02A6C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593354277.9287.11096993925380474273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6467cb33d405dcd76dec90876adbb58e2502bb74c2fdcf3eb7b85feb2f2ad56
Date: Fri, 17 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715933542
