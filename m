Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7947A2957B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765860174; cv=none; b=ViSPbl/oZ+wKViJdax/PYIFzXOX21RTng1RTt9kCluNeXazvwul+UtVPZN5L4pUHdGXiOykS9QnvNdmvmB/nkxZdb5P5apIiChbBayn7a2uGCcVuRZqGid11Oy9QuVs5d33a2nBagVinY9yLxSHyn4GgRj9KFZYyowJbNn1B2dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765860174; c=relaxed/simple;
	bh=OhkcRvg6QSgjPk+A56PmdAFyPQffb2gXhIgqcxtuMTk=;
	h=To:Subject:From:Message-Id:Date; b=OJconKci31oxmXkGVw/OooxW0IKqigFhZbCmvSIjzMVSHeOnkgK2GT/0D5bP3DLKbzByFWi1Hv7DvjhOl52UMoo3nyYy4qm+RfNMl6lxNjRKRShCjHrZG/rvVqX5RQrturtN58i4OrFT+TObqG6gYVRT+AVLPlO5GGL/18csq7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfvOAtQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfvOAtQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B90C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765860173;
	bh=OhkcRvg6QSgjPk+A56PmdAFyPQffb2gXhIgqcxtuMTk=;
	h=To:Subject:From:Date:From;
	b=ZfvOAtQfWltJjbtxuZikBEyzro9+/C6f/nwP50FfWDM+IfUMNalN0dmZXDu1wxkVe
	 /c9VmpcQjMuSMv65nXlqS3QiLCDwuM5Tb1cEYe6XKH4BctKxKOj1Og02Ru+ys/C5BT
	 mD5HEq81TDc6lylbpmtLYpYJAVfHMrPveyOvMOG1mCbDrlO2+bnbxxPeLDztWgc/6c
	 o4s7lJ7gfJKDzLieBzCI+2KsK/TnBCDhu9QBN3nRxGMkqUS81u52o6BnnJ7VcBOJEs
	 /2ptEm9m41iG7iDm2Mas+iNoAU6TvsFWk4igoULFfdmJPCpNS4yiwMbu2/0/0QhMtb
	 FZR0cVtr0vMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499AD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586017358.13989.3991244901099038279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fbd1b8f4bca5b48b0a6eecde91445ba71e5e81bf2467feb25d2fd855b80f70
Date: Tue, 16 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765860173
