Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCEC35C180
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785420034; cv=none; b=qI/tMWsAqD0NTFBKLkpZweSYNqlMHLTDyGLvDRamIYqVFppiffFK2ZL5Gw2vAiaUdVDsbdwoYaIfKsmqTzhYh6Guwd+t5qtZ5Qyzwnv09RAbVfmoLpfxPPvisPRaNL8+4K2oeuTBgWkI6C1rgd+Qq3ZBtyzbM5aBypyqj8zhayU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785420034; c=relaxed/simple;
	bh=ISnmv+q0+LNy5g/mZjOjFA7FhGG7tsJDTVQs+eLdf2M=;
	h=To:Subject:From:Message-Id:Date; b=WKaHDCOShPu2jMbzoglEAftMrRnfMlWrfzDeZSrefxwaWr4nZ8Q67hTZE7YpTM9beCKMJ1CE1c8Qm2RWEpRlcVEux6rfNNb2BEkRgy3w1yMtwrgIyF8AMZUURozWMrxCPWveQdtakeomupa/sLRRyRwK4vqmSdKrykSfPcJzfDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdLJ8Uht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdLJ8Uht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF15AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785420033;
	bh=ISnmv+q0+LNy5g/mZjOjFA7FhGG7tsJDTVQs+eLdf2M=;
	h=To:Subject:From:Date:From;
	b=jdLJ8UhttOfIMxs4OysCwBWpflFPRO4XxXM2DneE1xLym2a0/iSb0BlqOd5Er75B4
	 9d5Jjq63zsVJ6ppIH4CiShROz3pQkpfta8D18z81PafUaVdUma2H0pBrOwOY9K39n8
	 TZoddZh4FRYv7Tu5JKKe4R0cN5GkwgUAPyh3I+YaWOqHL5CyUzzYWBJc1Ck0paVetR
	 J6YMhEhZDTOZW04z/CHeiL8MqHoVVP3UCjdILr3v5BpsmAO30j1N+AqPb5Vw1VmStu
	 XUzGnkYqXBV88M2r1W41i/+ft9tIXXmmz/QO8VzszsAqnPWpIl2tab0lHjnbS2cfl1
	 UTl5pZ4NB88cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA754C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542003368.16167.16679437308556724481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3f6e023c8281ec81b63523dba0ebcdf78b1bb65f95e167781e49a0e03fbd31
Date: Thu, 30 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785420033
