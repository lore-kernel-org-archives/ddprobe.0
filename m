Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB3C348883
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780158214; cv=none; b=dmYOmb0ELv1DoexWrGza7pi8bJP6Uh3v/5h3aoPjeJIxjC+vo6tDGwXGFov+8/15/OczrsNNgiYcNVzL2AZxnBWiTbuimFb58WZI6Mb79szLUi+7ju2VG3XhbdsrzK6lFV5IcWyEYXz0MuFMTL2LuM7b65aEJc9HCJeie4desQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780158214; c=relaxed/simple;
	bh=QI2x4Df8622mfY8kvaIossr+gy67Qgft625LmJxBclA=;
	h=To:Subject:From:Message-Id:Date; b=Y6lR5a1cil0yMmdJNdKKKMiWCCjgo30qokNGOoFHRsb9In3HyvcNT/mlZwn1xU2VvzPpfAc9wydLSsezVTS4sFdHi9XnHjyUyM4WZZIKa858ZGLVOVbP0FLTAV/1vsc/bVn8yzi0YW7w3h55c+j7yTpsBudfcehbixH/qVVBUus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha+4fpaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha+4fpaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C746BC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780158213;
	bh=QI2x4Df8622mfY8kvaIossr+gy67Qgft625LmJxBclA=;
	h=To:Subject:From:Date:From;
	b=ha+4fpaVaAioWouMvdpYVcnaYv+LwMndtkLGDchlH4uMcP6h3AKu1yK89tLVCI3j6
	 L3VYluetrC+0OCp+5qaSxw+TT3gbMqTnW43S2qHl+/GBBFWzezJwX7rpbISlUFDUJk
	 5+VS9p9bL4VviNnLLyeM069hheeXTCgz59CqbmNtfdbSRH9pdEuL3Ls7rv66vVA9vW
	 HeptqfR6oTa3PUHKYdL28O+aS9TkVQBSX4ogEyQCKw3Iq53z6JCxtlPXCUP0him9v6
	 DkRC8mfIsdPB68kMqvp8hMh/WFFDMdzXxjkf7VxktpiF6x8QKL51l5UXECfuNtGx4E
	 W59SiKxuBSwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADACCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015821375.29049.917886919483966290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88386db07433f8e54d0d2066dce307b95ecab707e08e5d64fa3240910c1372b9
Date: Sat, 30 May 2026 16:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780158213
