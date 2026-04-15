Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2999C39EF30
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776240454; cv=none; b=uxuE0ORJ4BtPb6r+IAmI5SLzzHvGMKwrS9eNxSLpQVGoiQ+U43fxMfyL62lLNnJUdS0rgkgM1L8UUxmQHDX/ckN5pM9s+npEvTwJCtRUXbcW9yPijh3f9nFoYGtvWfn1McXDziPhZAWstN3OtGEnq9B9aIxQey8w1aNQwoaStBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776240454; c=relaxed/simple;
	bh=VrIbzfiF2aI88nM6ipTIFBewLdjvIDo74rsYjMnFXAU=;
	h=To:Subject:From:Message-Id:Date; b=WnP/43d6BMGzYpIrBXMiyhW+5r548wcmVQ0xui0EETuAeKekZ/OfUD4hiCJysW2im9fLeSfE8gGg0vCOqAh79oHDKta40gw+EmTkCFEWNjYv5tRqM2XES4SQkRnWhrkIUbjbG4Jdv0j9pszqzbSrghLH9x+X4SvNOVInYSdEMVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz+EVZL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz+EVZL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6DAC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776240453;
	bh=VrIbzfiF2aI88nM6ipTIFBewLdjvIDo74rsYjMnFXAU=;
	h=To:Subject:From:Date:From;
	b=Uz+EVZL2K+X0q8A4Gklm8fF6F1V+0EfM1BPmsNzt7iLzcVlbLdngptfxIvePa9crB
	 Ob9meHA/xnOe+MB/CRABigw+Ma5WnjFBsf1gJ9j0+IYmPto4lOdz4Q0Rz8IK6UVzRk
	 jYVR/wmfTce/Ja6n0tHEeJBfVV7nfvuEEddHvSlt7sfN7TKuTW0/kWYCvrOaEKBG7R
	 KKThXWkH1QbOJfWqSm9i1u7GYU85lagCChzlzRVfioK3P9EfcHHJEW/+kqm9uopZSU
	 f+zANKG/f65raBJRBd/FgP1ThJP/pGP5UOrp7EIQ3BshIS8+7NYXpLXCY7PdMG7IfE
	 UtzHm95sTCX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D5FA0C43
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624045368.27612.3824064174191121951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3227f4e043a0be7468f830c9116dbe71bd39324cd4fc4344dca88bcd691a446e
Date: Wed, 15 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776240453
