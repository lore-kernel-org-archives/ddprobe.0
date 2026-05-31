Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AFE36F8E6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780271074; cv=none; b=sBFyt6q9i5MK9iU9kiyDGr1VE7znezU0Rm/5i7H/P5aETp3MUBkpuZxSCjXt7gNAeTHKCYssLTLjZCi46VKiQXGVm7/8Ej3my6zbAwmWEVAsnIepnDYr3g4zaLAq63k0kj/KDrmlOPvN9kcGNh2t47/I30nU1Ov3oVdAucUzij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780271074; c=relaxed/simple;
	bh=5VqroVDhEAaf0+Ww9uv0f8QUzzT15UKXsLMeZTbvn1I=;
	h=To:Subject:From:Message-Id:Date; b=owV/h0vQ0rY+53GMjPP5d35rDIO15pRoVMKb+ia5CwJmOzgOJUhP87kd7X3xtM66C9Vp4xm7FfFIWtLCIEb/zo38V/EekyP4yTUkZFLt3jjdDPeYgTCedW/oWoDRvGS3lvmUqyvvgweG++LFxfYpuT4asOuxKNJ59oVTkLR8puw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joJhhwD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joJhhwD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A124C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780271074;
	bh=5VqroVDhEAaf0+Ww9uv0f8QUzzT15UKXsLMeZTbvn1I=;
	h=To:Subject:From:Date:From;
	b=joJhhwD2f3PRPQ9FIsDXEPKwVyiZXi4nlLALM6000eLF+lPU/R66eM8gd1T33vbHw
	 VBwTxUh0mAVegV+k2sicjtLF5JQOyhD3BnhXWXSHdBFm4LoTg9TIWetPE7UOuEdO0a
	 XTRHG90H4j2eDcYgpokN4xlbInEOpZVxN49QLVtrGmYHNH7snvyCvziwWVKEvhJ0nU
	 /HdCpxGd+EYQJzp3MhkNT3eNA+qmG7ZTaBHGycQ3MksGIo81A0QvDUVD+I+bNnRjcJ
	 H9oZS659WE+KyPsi4ZdShx4zGZI/KJwSBWLdC5rYxWEUUMqZbl3QQVOqf64+CuNKJ8
	 CQBWEcAvCowRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DA8CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027107379.27925.9824490287826621171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131033d1f4ee54622c7c634220295906b08dd910fa3edbc8f1036ce6e6db881c
Date: Sun, 31 May 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780271073
