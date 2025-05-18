Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3B7261E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747552794; cv=none; b=d3an/xvugCBUF3+GdYAc/KRrVo73WipanRl2AUp6Zay3T53XibAqvGOfo282SvOu8glQqlvENR1mAdIHMxYhJiyzNg4hUnCSdqZF4lQigP6VRv7+gzQflcqft0ovhOhV4nkoG33VLBNVHOWV01o8uPPE5ufxbOeOXzQDjFnxuYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747552794; c=relaxed/simple;
	bh=PUtYiZG1iome1opw9fi6kcQHO5ri5aRU09qZo7DYS8Q=;
	h=To:Subject:From:Message-Id:Date; b=dfJcxZpqZhnLPyo9R5luvZstGfyre2bNcAWNUgyxzTAfjmFexxSRkWc/aXDtCSzaCAytTUawnYXz5cswDiUsrv2PyYRojmBjqDtngF3n5euhAYJ6k01+l+cP8in7Rsv1TKv4ldeQZieFibc5evs3ylrGoHlRnjz519O52bYKWUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeBOT1Ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeBOT1Ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747552793;
	bh=PUtYiZG1iome1opw9fi6kcQHO5ri5aRU09qZo7DYS8Q=;
	h=To:Subject:From:Date:From;
	b=SeBOT1Kib3SRo4yDXgaRqr/6ZtiJss1OBR6B0njuIuO1b9duKPG1qYpybLYbbMsuj
	 fsWXMXEaDae7bMCuQfhmRSnbp88Kqawne6CG8lMASSb40F30pm3DzrUM2a2uRmfDjx
	 SZyqOY2ygfk+lgQ1xfv1fj5w1YC7LWLYo9xtVwjSbFQZ5qmEuM6CR+YUhLpDRkv5fp
	 BbMLWK45N1KdmGFRS2ESimGS3Hil8h1fidC0jYI7VEOmPuL0vxsbfA6XPeI67omZs5
	 JRwIzitwbLfuVF1OOXXcqI5M7YsULxNz9pN1rRIGDzwDoAkWUU6EmMMvl9wuTwwMQb
	 AEyIFRMWDcXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CAC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755279358.21582.4948439079998595669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febff1b2fe19441657f5dfc02c218352d4852b4a52ea0617b789ee42c87d5c29
Date: Sun, 18 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747552793
