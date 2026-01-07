Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359C6155C97
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767765234; cv=none; b=fbIdAqXr5izH9S7vYXn1LryY/7GXFVnt7Q5/FsjyKps/QfFcGa4W6a3KMuHwCw9dKcnks+pAa7mHT3PhoMYV/KjuX57sOl9irH6D6Trx+757SRWUsAfgGAgdyYgt2902ga6bW9OgFtTi2VH4us51k5q9LAmVioZ0Tlf0dzw4gAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767765234; c=relaxed/simple;
	bh=HY5FhWrNbgi7BNHpVLutqRkYo7/l37LPWCuFxErVfF8=;
	h=To:Subject:From:Message-Id:Date; b=MITI2GtuqrrZ2dC9AZvw4lSMVW87+/X6u8o15o6Ah17gdSIUqYjSKVHu8XQw4cVpNP0mMOECkSUAlLXUG1cerL7XENW5UdvmEIBMenOXICrqm7U4N6EawxESZwTqun/+O74OVBYnW9fllfCurvzmiuVNAMrVCBbccQ8HbZ3ncC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZNRO6md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZNRO6md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A606CC19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767765233;
	bh=HY5FhWrNbgi7BNHpVLutqRkYo7/l37LPWCuFxErVfF8=;
	h=To:Subject:From:Date:From;
	b=cZNRO6md2L/EKeut5lvO2nNfawn32hgrlH1uIa6Ac9YVlK5NsViw27HnkcV+kNwV6
	 FwImOJK9rmatIg0mLHypInW3Q+TmrwplBv3T9BzPSyUNiaTDZNH+8oPqfnUMy2Ci7K
	 iBQBhhP5q1l3mXau3oHB6fx+WH4YP4+RK4WUDxKD+Z6nnBR+XQMmgOhiRhUpXc8EZl
	 pDrpxYcnaGXKzme/FvjMqfvo2TD4rJ/wVdqLbcCvMHVc294Pz+bDgv8/Qymcc6SmH0
	 is3AfYzjmY4Voq1JmyTiMlrsfZ2xeu6cFlV/HgDO6Ep+mb809X0FTu1mQV+aXmpwoS
	 ryKSFt8SrAr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94049CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776523359.29003.1084519312657362655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ad7e8bb92be106af1cd6341ac2f733cd63200b7b061ec8355a20cf1c5c348d
Date: Wed, 07 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767765233
