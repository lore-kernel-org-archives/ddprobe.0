Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2D2877E1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750247394; cv=none; b=L4SuZF7C7/nStiCYHcknqrO/iyKlMWOin2cYD7Cfrz01xzkGsaeb8j9F5j+70ASkJGGioWz5kirj9Wn1pmAjqLJik+v414wkUrecO+FJScL8fyF7XH6PzkxDA0FUep4DgQ30xy99IHpU/W1n3X+j4SnRt7M4MlUobYYx0geJHTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750247394; c=relaxed/simple;
	bh=zUf3vGB5DXLj6e9v9XXcXyRBUFtKGvjZPF2RW5D/TJs=;
	h=To:Subject:From:Message-Id:Date; b=bhQv/aWmxbv08JPN4PiE7wjOGgNipCuwElh4qOsZMGKVSIw35RTfH5w5KKu2x6LnPbnr1hlhTIxUGt3Gxxm4JSGEpxntTJuIhU6IAI/k0st7Vj9ft3v20lGRBhoWipqSydV14RtcoZUnlSDhe3HCa32CtxEkQpmf3m+j2oN2Z2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrU7fl68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrU7fl68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750247393;
	bh=zUf3vGB5DXLj6e9v9XXcXyRBUFtKGvjZPF2RW5D/TJs=;
	h=To:Subject:From:Date:From;
	b=jrU7fl68RrfgLwWGrWBjXiyPG/86fNNSKS9AKmhYklZqiA4eRSdFDNKxR/I2ncOOW
	 r0RAAQRJXP01JxeL2Mrq3SJaKnSX1vzy5xO7gPVpoS8w+B0yMLXZ1XiFjYC5Hotzh0
	 03M6I5v+t+s1TbVwqYZZu7z7MveGRLGI2XOki+OsLN6JfXnhkxsvztQ760ZJ8aIESn
	 dxU8QeuF+LI6Dla7QS3iYUeQeXFKreCS4mvTCBurXf16PogxfiRbrjXBNH16+1TCqt
	 oYM+H+Dt6tCP/QgSPjV8WBaUyPXCWjAT0zh0rd1B2lsaSP+MhiKS7lBb2gODmKic2B
	 ZBfFi1wD61BaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F37C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024739358.11377.6057380565980511596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b1de4019906dfefa7e8981a64321216dbfee57cc517aca805c68fe395d1887
Date: Wed, 18 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750247393
