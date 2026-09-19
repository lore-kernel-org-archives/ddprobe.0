Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5BC36AB61
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789796434; cv=none; b=HobCqlEXn0GXMKStZDkSzW+nWHxhItmiku5A1j0I58d7siJ704+IlphGeR/rMvn0EEk6KmcYCarrNP20rhjUhp+DmKePxbq5/UQiwZ6m90Xgs16lMmdzeRG8XUsILb9xZvKfvEfrefGbBD3i3vfj3tcC14FtStbOkLfXj6RN9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789796434; c=relaxed/simple;
	bh=eyMBk7m2K1vHFTKCLym94aeCPSyBCtKoNCxjoarRwOM=;
	h=To:Subject:From:Message-Id:Date; b=ID+4Zflgq8V63WUCFXVn2X+pmM5TVVeQfkeN/KThLpZjwd/y4WM2srVYvO1PKMRH2k9ySw37p1XgsUYtmnCN/65rrfYrLo1lmP80Goyl/dhf2Mu6fKSVxVNUbCy9XVNBrlGglju5qPRJy4jVXHPBtq5lysjGTuE8HtStoJbr8Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5/NeY0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5/NeY0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AE8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789796433;
	bh=eyMBk7m2K1vHFTKCLym94aeCPSyBCtKoNCxjoarRwOM=;
	h=To:Subject:From:Date:From;
	b=V5/NeY0g4q6qvDiyD66+Pz5jjdOi8KrhBto4GsB+kw/p6EWg/t8f6cagk30VF1/cK
	 9fiMcWMh94p7SYk5BtPw8hj4E+JVm4eLFemuiN0ygpM9bDbIjG71yVfmVA384iz/3S
	 QLor8NufyVBHqzy+UB3cXNuKqunZ9qNOLWqEK3h80nzYnVhKDaL2qiXCu+p91+5YIH
	 +xDhfShEz/nUJXfnSWDEZyCkcPyxAbBTN2fVDO2nlZlqzcIbIAysX8kC+BNJk68U0V
	 YcPts3pMem0FRyIxL3ZMxLM6YiPnshEZCpoBRC5oV0zVYULyUkxA13gNMYbtQ3OxTh
	 3RqwcQFMg9p7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098AC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979643368.27190.12884610760387801184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c3ddf0453c465c1990843fb1e1665a869d3588d29d34af91889d1ec2df74aa
Date: Sat, 19 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789796433
