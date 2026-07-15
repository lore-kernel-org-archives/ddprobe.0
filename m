Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D70B40EBA1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784137114; cv=none; b=HpujVud1SgBHqB3hm0Eq4byptXwAGtYi++kHKpBv/DWpyCxrn7VxFBlm0Bl+nAB4ShJNiep0/5YelAVYfdy5KGFOJY4OxZRuLUBwkfoc2mErcTKKH80Pq3APOf/4jG2eddYfQfhqCBaVeAtLpxU6JNThWeJ5DSuzSDymFSReTfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784137114; c=relaxed/simple;
	bh=5plw8I/RiyvBnJv5o3zrm1N99TtPWbYfnc2+hut0ZE0=;
	h=To:Subject:From:Message-Id:Date; b=IGSmvEBuGZxFYgbaj/qxnzdjtvKISaIUNxi1rtsebQOxoJT/xmtAtLPzsY9PassVZ7H741uyHonq0lHkrukbw4CRFqoLLyCUohv2RsFD7v1FKV5RORcmBcfhWJbPdJ9RElES3z0LBxoDAj7wRqWEmR9oV6Dx2wQ0OrxjHTg31Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqvo8GN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqvo8GN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB79AC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784137113;
	bh=5plw8I/RiyvBnJv5o3zrm1N99TtPWbYfnc2+hut0ZE0=;
	h=To:Subject:From:Date:From;
	b=Vqvo8GN5WHLgLzRnsd8T4UsYHueOK2UBEq3CtqPQOuLd2VEDYBGt4O8Rs8LElm71n
	 ONluDt8q7kp1J84TCczxLnARaVQK9D9taeEQSHxeg35a5fh5IDAol/pUKmcvWLd/d+
	 QR/hjqN3lrKFqUpiClsp/qDBq3ha05z+eWIbaqNmBp7jwsToKEdsRGH9qrQml5IvNJ
	 CH7Rywvy2SyGAlUdFYD4qp2yG1TG4tuNvgbKIFR5zVFKAdEA8I7NpepBw/WSvPNDey
	 8iyV5QEceaPGtnd4VdM0QnsezIfAGeM2i1IFBwVCczLp/ERcdskdcTCajd94+Bk1Al
	 AKl7GqqwPLcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B2C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413711368.23061.1162864605428787044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d95da45fdfaeadd5dc1d33055b1e83a85e12cdd562f5832303109cec2c2728d
Date: Wed, 15 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784137113
