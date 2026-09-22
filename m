Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BB646D0A8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790103634; cv=none; b=iI8+6/l0K1mzRiVolUwhtLiHDJpLROVoOwQ9Bt0jQs7hMLkWOJeo18zbi+1GsitDwdps8xPEEm3aePCESScD2TYAhKh90LbskhOEuIaeA6zDMpBm5Yx33Pv83Nz6Mj3uQlR4SLoxQwPCaQqsgEQcoxfgCgS/TEnmzJjFaJIx2AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790103634; c=relaxed/simple;
	bh=cPlbGlUW2Nz+cI10p5607p4KIPacl1ZI5Q8Pd3xYP90=;
	h=To:Subject:From:Message-Id:Date; b=dZbE8sFcEumWdrVlCe7Kvz9iJAC6TsAlhptNzvJUNjcq5zbFBJg6JCY6otnSnhxI9yCEHw71Kw/HWRwvXitZtDKOszjGXuk/ie0afVFcaiO5L2nMIeiGnBQUd5iPaqp5dQtvpdec89lamuCGXUtV2qh9fRcfEgn2dITpND2iCXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2/NPUJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2/NPUJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1768C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790103633;
	bh=cPlbGlUW2Nz+cI10p5607p4KIPacl1ZI5Q8Pd3xYP90=;
	h=To:Subject:From:Date:From;
	b=o2/NPUJcckoO4f9w+nQJQZtg/HGmofe8rCJbTKZZqKZBjcQJgAbq5kJssnrX9qt/I
	 lFXKvy+g/htm2llput9Ge4sH4HCU7dNhDCRU440d27QGU29HlyLUX6vBc47igDajTL
	 bNBlwbALi0EOMBK/PVbsKaoXDzDnLWBIMa4QgeTdhsmPc+7TMnuHOybvuf4EA7qwg9
	 GV55kS3NEHcGONoVcMT+iqGBXCvDuk9jQVDYi4Pbg5VPImsoJww2wsjCAWJmIFPQ5L
	 FyZZLfbcqoHSUA/yjnIlHo+DC0FFthkrpKIPj7NiYmi+Y+iQl/Fx3t6epnoMsnLJdT
	 FIsswg8F51ntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B848EC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010363373.8556.10646666026965747105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ee1cbe4dc50ff7155c755bf00cd4311fda0802feebffe0a02a8d00ab1ce062
Date: Tue, 22 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790103633
