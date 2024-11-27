Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145561FBEA9
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710954; cv=none; b=hX2k6RKwYgz5XTj1E/0AqkYyeHNxMbht174VfxScedvN5TDpbbWLJQb7e4VlLySMgUKqx3q1K7NRLQT977zYCZDaaTeyPBUynmWVO2DYxTAVCsz3ezFYMsZGWaFXuV63Pcy7ZbT/+rl0vOhoo8mETxVeQrrKkAompyli1GkHJQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710954; c=relaxed/simple;
	bh=kyG3Rr5GVb6oLH2ogzsGz9oxWj4UCYZcTRLxC5gJTnM=;
	h=To:Subject:From:Message-Id:Date; b=f/9i6VsFq7c5UnLht89NgRXTmsz63F9bcmISPqHWB9jQh1WTmax+bEwVahAgT9sdCEs3Z3B+zk2BJPlMVr5pyfV5AU+uhpqw0wjlzJuEm1QVrfAuuE4/hk+aMmBRkqgtu8HIsCBV1oLphL/KWodFEjVoWplKHO5smOBTNf5Io78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY5jqS8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY5jqS8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA31EC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732710953;
	bh=kyG3Rr5GVb6oLH2ogzsGz9oxWj4UCYZcTRLxC5gJTnM=;
	h=To:Subject:From:Date:From;
	b=TY5jqS8NQf/KOZ9goRlon/4eUFIsOEeuSRCE8FJuz1h9RgSNEqUpoBim3j7XnGS9D
	 WSD7zuM0uWxtJeTwrb6f0+Zye6Y3qAR14huR9/eOzi1A2C7v1LvBTm7zWG8v9NgrDS
	 nGcZOTP0wW0AVYeAPB/+K+TRO0wWPjMkBxPtNSM4gfb+U344pal6179PtatjL0q13p
	 bzhRT4NWaHNn4qhJYukWtmUqYskkELIFqqGJCMvFv1+A929pX45fhRzh5Lq0Ot0ftl
	 iSUR4qebVe6KirtBAAl8Ilfwa/dhAkldviNv8hjYtPSuiAe/Y0Hw3dmBL4TRz9dCxR
	 +dnFM+oV157xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CED6ACC5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271095360.17316.13076144895033617676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e6566d9306233bbe10c818434e8531847183cb5bdc85b43bf51c663682c785
Date: Wed, 27 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732710953
