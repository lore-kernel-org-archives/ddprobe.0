Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2589F25771
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776535054; cv=none; b=cgbIEpBbZjF/NT5mfENADTnDDbBLrdfnCvxqgqwd7/YqXsV0iAa6U0Z9SP0FBjU2ozLAWQp/ZZPFNnr819DthyTjeBKCHCreL/pwB0ql0dgk77iHhO60QKChEksMABbqlX439JWbpDyDjWW1TaXRmYA20XMPr8srUeSOkrJmhJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776535054; c=relaxed/simple;
	bh=vdAOqzgKWIMhpTbWemKBKdXAjeIaNYTFySs2qG4/4YI=;
	h=To:Subject:From:Message-Id:Date; b=nkZVVr3M0T1Tw/DtSC8wUClU8G19J5JuB27qFVN01UfiqhrcLsYFybofmOBtf7NG/AZllvB56hmBOi1ey+QYR/BkUOFgVS2yaQ86uwzIajKU28MqiC+XcEo2/itm8BXnoRYeqVSMTMWQdKufq7n1HuZyVol+KdvI6CfFxoJdyuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBV1nmvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBV1nmvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E5FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776535053;
	bh=vdAOqzgKWIMhpTbWemKBKdXAjeIaNYTFySs2qG4/4YI=;
	h=To:Subject:From:Date:From;
	b=uBV1nmvgcKs3SLXn19hjkarBbekpu2Clz380JCNevNU+SGP47wBbspCasnKKAzleN
	 yfNLl4bJo8IpN+VXP7JNUB75QYBuVc1xlWcsa4FIYWd2aiENgbv88IFyPiHHtR/Tam
	 SPTv/LHIKoLJzkF+xfjVVP9+3wognTJCzUeZALVo9SYiU150XFDoc1IDEPDO5GO5VW
	 X8erh97N0CyXxw7MpLzQEq7MEqJl2LPkWrrhWJDXd44dP2acBpILHk7QJ+I9gmOTtg
	 N3c9sXEZct9GRIasVh9R/xUiB+JFCgRYMS0dyZWACHjhGiKSEooXt/DKd78uVke6Lb
	 iVv0wMsEhMOzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24DF99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653505368.21978.7609666816921594078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9959993b8c9be27cae4eb0d193059980c40ac66ce875c711f9df8613c013b37
Date: Sat, 18 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776535053
