Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D662701B3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398195; cv=none; b=RFDm1+dWfg4DMiAc9jzAsiOA1NCWArQJ7PmO2N8wOIh/Oj05XxlzGxAaw7/w6L7HxKYnB473uMr9KgQOzRDaJ+nioHasHuN0rrOpN1bREF3KLNzdD8R70wdoE+igE6jToQPbXRvZ68ugT6wLi7IqDhFYV6WAhRVNU8U+S+EBnIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398195; c=relaxed/simple;
	bh=Ec4MN/onoizwmtjJ7adzu0SL7ioOs4AFuj21FUdVoAY=;
	h=To:Subject:From:Message-Id:Date; b=gOS2+WP2yDcWzAb8KRGfzawrl0tDsswi4z9BdB2Fu9w188bok75TR38mJCMSREff/hovEH90Ufe9LBZMkmB9m1ur4MTAZTJp42X0RInvneK5edHw6ubFIITgJlyE4lPhyh0zimKTLHlC0X3vOjaqNWUvpMZled9sOYZJ09VTkpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRnJr40P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRnJr40P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF74C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745398193;
	bh=Ec4MN/onoizwmtjJ7adzu0SL7ioOs4AFuj21FUdVoAY=;
	h=To:Subject:From:Date:From;
	b=dRnJr40Prqx54mVhywxDCF9iAFI/07+VB5eU4SCRB267StkHw6+EfFrMgWPIZdMar
	 ncRfxw30fGX9tcnSTbOXAoHlJnS6JbCAG+2jSruQUicWoKbFo3fMabk4VFc8JUJG/x
	 hLUFbFRxhsRr6MsLGaJQV7fB2Y55zigFrAONPoO7Z59gW0xidwxhw09BgSPldwrROg
	 cyM945mLJwjX/Vlbqtnv4RiNEGC386epPG67qhtb0rlVILBdfGcuP2y0JXvBhajwQt
	 2by+k0Be3T7NCJuauy0AUq2fncM8aG+8lmBV4R2j4ZiOGv15yPJdEh9xXCXO2WmL7l
	 avoujXxqVjlzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED19C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539819357.11818.16306316514807254840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f478cf5782682596040f37e05bbdf353ae6555d1b96f5edcfcc801ebe19cd40
Date: Wed, 23 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745398193
