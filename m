Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5444A18DB1F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779569554; cv=none; b=Ii1siaNb6D06LLKSKJPA+P5eQ55M39RaDuhFSQuxSN9a4nF8Hj4ezhAj4tRIzv4TdAUkHIkXgT2akoQ8Ekoj+LWEpd0XIHvccc0ePzswCCgUQFmhbV4sY1Ww7h6V1nL9Nln8HoD5t2ZLm7bQhcipARoALgX2HvVksW5tjd4LLBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779569554; c=relaxed/simple;
	bh=kirJ9KnF+EcGiea6kor9aB+rKCZEv1xVo4x0o0NILG4=;
	h=To:Subject:From:Message-Id:Date; b=lMFA68wpP1yavhM9fuHqpZy9/Z7fiGccJJjhTyQTHY+MEqbflZTIL3n9Na8fcHjAPSrE6ApNAx+gGrj85WuJ/KrdFnLaCHJZXKTA2JbzidZY5ATLDsiLuv+ZrCnqvKQWnFK/8b+Yp4nwN5196WyiOfIQ6B2/B1A4UQHoLTxKggU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKUb6gMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKUb6gMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C517CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779569553;
	bh=kirJ9KnF+EcGiea6kor9aB+rKCZEv1xVo4x0o0NILG4=;
	h=To:Subject:From:Date:From;
	b=PKUb6gMpaPjpBYcXEXbi8u4ABX70Aajy8q0pim3s5mgnfsXHBODoq4sgE1YEqUOiv
	 YSDtTRghoSX0olS59GdHq8bk0J1AEGHKQ3VChHQi6hdB5Gr+3/AX2g4UUf0GRvBBup
	 V3rbIJSSN4pTZFVyr1jYofGWpcXPv27wdAbFLByX4nzh6/YHbm2+toHUi91/v8rBKV
	 /n0+u/OYzuGzvrfBCu/rxev6Z5TVPHs28KhnNUnJXpQc1hliXGGZpsZv3Epz9uBGP9
	 Kn/yhldAjJn9uzO65HAbwmRoRuhFVc1WT/sP3lq2nZUbhDGihLTUx1iYIMR9kVCmTJ
	 t9DdSkKloL6Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C7CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956955368.25981.6675078021175881819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4330c91c8ca136d9f7618118972f36333d19f36558ac4420f271f6d63d28660d
Date: Sat, 23 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779569553
