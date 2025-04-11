Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D87D224888
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744413594; cv=none; b=bSCBVxtgUwaJ6m4Eny4/3aBwFWnYCClpGqQiDbCbyeeyAoPKWeRa3DyQEMf2xQtU6spfIucu/oytoCyDXawJAqyby8zmS4yXqaf4Hg5ORnYXBCzVZQemXUnAUDA1drN4E077AdMIDIbnw815Cr6btb1DV+bmUCwp9DmeZ/33U/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744413594; c=relaxed/simple;
	bh=jtx9QhdGRHkYbdyMLirXvPlumYe0T60/zdBOYe5Fl/s=;
	h=To:Subject:From:Message-Id:Date; b=Lq3y3Fp86r42eQbmzbc267FfVpcIWsHffUVEyGlptq67a46VepJ9W60ysyvOXDUqsJgyLcCnL7htFUmeLizaZ0ZJ17xN/SeGvHOw/k3O/Osu5DIxjiDjomB0sIp73pV4DbVNhi3JHsFdtJCGvDKuFJGj94q9N8PwBGfKLfKvhFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHk+zE4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHk+zE4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B482AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744413593;
	bh=jtx9QhdGRHkYbdyMLirXvPlumYe0T60/zdBOYe5Fl/s=;
	h=To:Subject:From:Date:From;
	b=uHk+zE4W1LYoghzxiBKISnqyN+ctC3eyQzPNxRP1ckYfhUuhjiiKPtcEiPtDY8yXD
	 xbKsCCpX1BqGVt2XnJ/ejokg/67/RMmTPHsVytLQFuZXMaS27oE7azXiVwwzC7VicB
	 kNN2DkT8pkJYqZysZiC1s9cwloZ34zF2vCzXFAtgwVQXO3x/Yik9h9W43IghahSlJv
	 wIrhx0sf5sT9cSRs8ik/U9+LgHxpDWCuIXp2aoNGbn2vhf6GQcFYcAxJPs7EXVsE+8
	 jeqEuHB7RWIjJPaO/xbz8y6H6TaO8X8quhLDbSs5XcLRrYU/+jiIFS/mHpK63tmUNc
	 zpuHyfwD4zt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBEC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441359358.28391.17083341888816456737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a227a3bd7ee22b716fe7bdf9f27bb883c506bc92eead8482f66a64bed97d2d75
Date: Fri, 11 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744413593
