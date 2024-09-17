Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECDC15ECC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726575354; cv=none; b=W2gwZAxpMR+a5O3L5ltIMtMS4VSwRXF2TODoRLUJDmweKc95MPogP4mxbH+Jig1ifVwFy6919N9C8pSEKw7AdMMuxOdR7qlWfEPzIlp1SCBfsZrmCJHdk3y/bWyy+1oyCW+vdM8A/8cB8pW2CuByaQY55HaQPSrIsAXQ+i/JdFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726575354; c=relaxed/simple;
	bh=CJn8GvWZUSV2tq/J2F9m1DU67+H/ULuwm2fcONa+v20=;
	h=To:Subject:From:Message-Id:Date; b=CTPuGeOyM1C1WSnsJD9tBx0RcVrpx1uskG+OaqPZagb7Drj/D435QMlzd+OGgYpReHPfj8zdX8/Jzv48Ro27ckbXrF5wrLa/IaddK+9t73kReRZGKISDEDNIfvZDMgMPKuuK94cFreGbiNklt+2vRtkutyMkfWey9dYuFP3Fdow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE8GUEAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE8GUEAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1656C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726575353;
	bh=CJn8GvWZUSV2tq/J2F9m1DU67+H/ULuwm2fcONa+v20=;
	h=To:Subject:From:Date:From;
	b=gE8GUEApl3PApIJLfr3POWj/Oq0j42SmaLdzyHBKMK+Ky/3qjohurH0O2azVH31W1
	 BftHhoS0gFAISRvpgvGPnI/rIscEhve3cTly6psabTGKVhU6CpmbHFGsAphq43DqQn
	 hVB9rDuMl5YpLrIpLr9vQGDwDlOBqVOQHowW4oTgb2NvVWVC6o4YQ9qTy55xoSohPq
	 /ppPppDGPTylxn7fRAOSxc/F6uInkTVSPF3TqRUifEFByecTlEeSmudlL9ArVHjsZY
	 pKG8mqF31oEBUAO6NvgKth3GxYSn01njNMrM6JGb5j7qK4Qrzwa5Gws5ZW5apUTfgB
	 ac6DzG/yeu4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AB9C36018
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657535364.32597.4363268128347107258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30aeec29dfd7c72a6bbebe91975a2dc9057901147b48b5ca2e8c0b1bb9972e8f
Date: Tue, 17 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726575353
