Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CC1B2EFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735883154; cv=none; b=WJW5pxlvzcKoSHncQhmYyk/zR66UoOe7BqCveIZ6HT5dRk6yd37onRP50buMfNSwlgC8Gn0khKQFPLJ9Ig3s1+ggcSoqd9gyUTIuA3BIAjEtRLcxIx6YfvUyKfBuuZRzhldIG4PXMuHm8N+0BWZz4fQmMmiFRjLcLSu8+Xk39b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735883154; c=relaxed/simple;
	bh=iZNGTyOad0Wxd//TUpbiX5ofhg9fFWt5caiLZpsTY3A=;
	h=To:Subject:From:Message-Id:Date; b=VyEAtN+lZ4QKaxAbe0uWUEv9T6YD5yYRkerZEE3cHVk+ANYIWOPGO0P87n6Ki1KcaT1EEuKOsk9cyV9+GwiKDsdeudwkewkrjViVA1QTZ1O8CnkwReGndeIkYERTqB7Ljh1JCXYKAq9S+4TMacRPo0BsvfwwhE4uPAfdUD1Scdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnWE6I2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnWE6I2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD97C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735883153;
	bh=iZNGTyOad0Wxd//TUpbiX5ofhg9fFWt5caiLZpsTY3A=;
	h=To:Subject:From:Date:From;
	b=WnWE6I2Vg+TYAUuuXFDIEllifcmvUOYc6wJ+/3ThhoEQtY5TD00DaJlGx2lIoiHBO
	 E2wWno6axwpS0geCeexYrySdnmUeaEw9cx1CI6Erm6Qq78pxDHxuzBLatd8LrvDAXU
	 RAlfAzn5VYpDUWG/2WypW78+ng75UKE8869GN8ZCdNk8xcYkbd+9foOWYc12g2O6i3
	 odKdw4oWr5rCyzfeRUVkTJIVNv2XSHAF7SI7AS2I5PrdwZ5Mob+kZl4dPHv2J34hGk
	 3+rUroxEkePItugK/DrNL+c0Rr3j27dR9h6k6BAUF4WnzN1iQ44mJXz6ERTHvpGe9S
	 DyWIs7iElFDHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C08E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588315360.26656.16357514699048560564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9000b755312269293219035c2bea51d05c902c6beaab475348b623b06004526e
Date: Fri, 03 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735883153
