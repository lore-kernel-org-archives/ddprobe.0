Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8C17BA9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747610394; cv=none; b=dSoD9E+ac0ayKpIpDlSThf0u7LszlQyYkDRNXPLygOX5feTo6GZuoEHM13WVAl6um4Tb9bXvjKfji5Ad4Kwl2ejjJvHadia2a+uTAo3/1E1sOrCd2/8gb8/SoeCFGVKXf0v1uAxatAwPRPrvNklPFsuxDwc9J+QgFcj50/T5QL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747610394; c=relaxed/simple;
	bh=gu0px9LdRbe4xF+FbyDaSJHKT1QcTkNG077ibCaJ3cc=;
	h=To:Subject:From:Message-Id:Date; b=YeYBdMxNhYewfb61lcewVoSkD/fYwdcRKtgaCfCOLDDqFMzJ+hpJ7rBwjeP+MqM+ez59VaUmomZFgaKwJNp1f9p7zOzVG7s+NGurxR2VWBwTY4Ko2Y7Ogy3VxroFNw18RKQf53ejaI7IM3dn9YxR4HGx3Y4Dw0ZTivMXKUxjEpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV9tZEWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hV9tZEWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F37C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747610393;
	bh=gu0px9LdRbe4xF+FbyDaSJHKT1QcTkNG077ibCaJ3cc=;
	h=To:Subject:From:Date:From;
	b=hV9tZEWBShyKmjBLtg+vP8EcJbH7drPrBHq/uHLWpVVpEhRqP3IDeexiJO2MSTtfq
	 tUXSLHVsHeOXUVMuXZ/ie+WHIT75WjtWoAnvnDN1GBBSI4XytIvMe1G6kU22GpfF3C
	 WgOWtjPMvYA9l2w40R+lXtMGyroN+0++ouQjQm952edyF7uR4hNh32BW4lr+/vNS+i
	 N2PXTgDieb5LB0zF3IJCIFjiW/peTC5DZDueNz0QEmdTpr273iG3nXdJWHpJH21HdW
	 SNpfLKHIW+rqbIIEm7FWbPoTuOrev0UMo3EB8oy3/uMg501AFlCTqFbfoVPVDZpp5l
	 LbQUAjJiJoVvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E300C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761039357.25952.9104581688345395578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b148c4d54950fa1b4505a6753a56e1ab5ff52754fb5681fa8289ca18df97df
Date: Sun, 18 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747610393
