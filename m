Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B366175A79
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775078134; cv=none; b=bPrddbLW8BJin5EqxUtUEq0M/+T3rOR6iALHkUfLl+636sHsFZtA5y14K3m/iKJrtYVeP0emNuJOnHPOXFT4McS/B7grfFhHfNAW+tnHmd44JxHODoIDZt/Tv14CRWxLdCGf/kC9pQqokywuOV1cpimKE8cCFFTsIiJ2vAkWBno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775078134; c=relaxed/simple;
	bh=9Mit2iK6q1hvEmumZrE/X0Jj3bxa2opkYM5snaLO2Ig=;
	h=To:Subject:From:Message-Id:Date; b=Mnz/6yVBGEp7aqc3JPQLnuaqBHozqmXtRTDBXOgobkC+t1vZxSdv1KdiY85Tuoo/HbC/bxtlxXYPZuwb6TdZEe2GekS9ynaWIu6sdDyEgBBi5ngJr4jMyq+3kvFSJ8bSv5lR6hIRKayfvtrZtdwZlqjoufTh9tucLvs+JJqz0xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhHz6Is5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhHz6Is5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C789FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775078133;
	bh=9Mit2iK6q1hvEmumZrE/X0Jj3bxa2opkYM5snaLO2Ig=;
	h=To:Subject:From:Date:From;
	b=uhHz6Is5vYtRbi0Cp9aSBPSzL0sEuEJ5XEQjB8WkVQuH4tUV/FMv2/nnP5KoqHqPt
	 +BlkAtpnRc4PYDIfp0T9URqbs6CR5iz3goXZoAKu3OINftuVRFhbhUj2CP19KcfOgk
	 aqbSdIheu2ef3Wlera5JGetir9JQ74cVOZkhyU9OEE7GlYrwv41KcNeetZjQdafDgX
	 GWTZ4tWNjqIFifJamCbWFJ+fbgKcuibTHXZZreqG4KP+tA432AbWN5Ta/tCHFN+HER
	 OJ48P/3/qPf/2XgQy8geOHlWpHDnvyB8z6+gyBsy/e+kZXfL6ESC5pj8d/YVvhWvm1
	 EZWqswviZM2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B280310FCADC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507813369.11273.345747165166990597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a59b84ba906048efa2faf8d9c04d694e87c13bc6ff852996e08cf4ad40d03e
Date: Wed, 01 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775078133
