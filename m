Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF8A46AF2D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775068533; cv=none; b=Ewa6Al31GW6FpolCVqm8G70LvYu1BomJuhaFUTxZJ4nNemYrSmniGn/hagpO7AfY53cJXACKV/KGbt5cDOJGOQ+wWKFjD1ZD+lT1/biWXmYoq3Dfx9yJTGBju4H/yI1Nal4ocSJ97PsRDBERhwh2QiAVB9LBbOyEFJ6YP2gOG3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775068533; c=relaxed/simple;
	bh=1lFGxPd4tq3XQdOMqLWZFLakPHeJp5aPdweXn/g4sF4=;
	h=To:Subject:From:Message-Id:Date; b=QUOhYS+an04tYRfq46DNApOmSRvGqFXGCVPczIaIeJZv03vuzPhf2XGwe7miTgG2NnO3cUXyPLp6miKIo5R/dqQTLP+yD7+peZs1Gs2DNMMF4vuOvmMzrcYXZ8/MtL+K4uteH7C9oCkjD8ydgDN908zHL30DdL33Nl3T6HjmMVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khDHpbPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khDHpbPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0C5C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775068533;
	bh=1lFGxPd4tq3XQdOMqLWZFLakPHeJp5aPdweXn/g4sF4=;
	h=To:Subject:From:Date:From;
	b=khDHpbPEM+ybmd/tOzX+rzFLISt1CyPqXiPiwOTeHePQpsIb0KCXSCCFsgeFXSwYq
	 auBuZQoESMayo0qpjKoyltSZ5wcEfYNEB6uTlbRL+V63zMC5W7MNxZ2WgM8FE6TWKr
	 mDSQvIxFYZOMq6noXcB2g1i9ehwrlxAtMWZdoQq+3194wyUDfd9ZsC348wmGIJLvUe
	 SoQyHtlBTN81J9s30P+sZyXP/f2ACAzlJpHsmaI86OoPNeJCXIKq3rxhOdMEiHsCdN
	 IK4IzfzkXTccXgHx/o74XBbXjHCXHJ5IXyGZbHa/vqIHZlOWf8mOVLA4+EfLkJLwYn
	 0V79fBuyWZofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57710FCAC0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506853370.6374.17567228980904340057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d03d9bc369e9b01bb78a9850039e2ee79556e996b5137443e1b789aa6e94ff2
Date: Wed, 01 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775068533
