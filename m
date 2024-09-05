Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5310E9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725508554; cv=none; b=ApDZbg3BADACclFM8mEJb/yPSUhrINKTrXhmL43jPI66t9G3okt9RfiG/jOrCAccNYzptX916ilhftZ3+EpY5PaN/QXKGnwcmgtnb31A78e/fn3drKrRM8JH5GBHRJnzAsRg7QlkIKTbVAhWT5Ks+Po7TL4xilG0HdeEyHfQ9Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725508554; c=relaxed/simple;
	bh=qSkZZD8IV6+8nfAH62f2m6O6dl6HXZkAABiRJEE8Dm4=;
	h=To:Subject:From:Message-Id:Date; b=fjCw1ct7y5EGR5QMst2P99TDiISdqtYTqHJ2GLbVR8w8ygpidfVtMitUD6gm2ORaCnfb0/r1Gllw9PkoeKdlTKcNqGku8Y/oIPQuihKoJ3yoACo5PaaUopwscmWzir8vUxvIr5Om015k9DQCUGdH4KXDwWWj2LVsvD/DnCJFECA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrbJnl2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrbJnl2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD683C4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725508553;
	bh=qSkZZD8IV6+8nfAH62f2m6O6dl6HXZkAABiRJEE8Dm4=;
	h=To:Subject:From:Date:From;
	b=ZrbJnl2ilKSpgK6ouRyGtDrV1oFiI1cPX3q5Ay6fIlilcbp+UGXS319Uqav0ANmn/
	 nog2R06uR8FBPysD94L4WaYwc9HY/06yiKQo1Z2fd737ARpwYlOLwZke9hKgSOHiyy
	 Oa6n40s3xlPo3gzuN+fvNOhUnPoXY1fFGy32JXv1+WjqGhfmk1CG4t98khJfVaVNo3
	 akr3FvdMJD+fqRGHDwF0tfS3gma/+MoH7maT3c1yombI91/CD+3Xf3fdluVGMrM1RU
	 vV0cAf+h5c69atN4LQrHfqMylcFDw7KzBUTrUb9Lq4to2kHPLLZYk06v2Wa3OdK/hN
	 n3Izoht5gCrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A685CD4F50
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172550855360.8138.17287170125855679486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0e89f00f0d655fea03362a8e00994906d4ef32af0fafd7a3e56b393f037168
Date: Thu, 05 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725508553
