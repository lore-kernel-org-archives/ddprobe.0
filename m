Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6B11CF8D
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712990363; cv=none; b=jbRH+3uxCD8Dp7qtTQYd+iRrSj84Tg8CdZq3yK22KLfCH/lk72mtxcVVVJf9Ol6GTdC6MLhWN5umVKAHFtZO6PYFYdMM9IwTx09MNBukTaFvZkgkPM9RUDX6FsilM08CSZRV9AUkpUH8pHdsQIE/UxT0hAnSE/SXXptKKfWkZsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712990363; c=relaxed/simple;
	bh=YIeCphA4r5S94+Vjh4W+v7mfTt7Lm+WaCnwwyOhVXgg=;
	h=To:Subject:From:Message-Id:Date; b=pU7g1lKqmRMEwRiz30E2zKRm+LJ13AyHvjZba8TTAm4/LzNh8yATWlBhqfkS8ay86MYR0t6XA+zEkN/vRjmYhXmCNKWsZLvxMZkwWTf8rDpvmxS8gX/vxGedUoYnsyicLFzREa+Mq77v0O34KqnrWLNtvug5B495FOEDpPnXND8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ1YejSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ1YejSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31B4C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712990362;
	bh=YIeCphA4r5S94+Vjh4W+v7mfTt7Lm+WaCnwwyOhVXgg=;
	h=To:Subject:From:Date:From;
	b=NZ1YejSBUqCMIsxppEYZVCfQsIh8jU/Hrk0S8iFAhz+jnU4mCSkxfU3szq4QRiJfa
	 x8xNQFY6PXRrCRiO9Alc50JRt7mhVVFuq4cAz47TGllL7VwZX2UbyrOqxlVY+2+Q3g
	 3OqZ0HXaS62E5v4xXuQ1fxrugsb9TSTEXJ1IxEK6dKTKT9bVgRZfACVMHlgyYmNCSr
	 tKj+ZnlTYKsye0CvgEYtiztWeUx5dWA3UpkHkzddJtGhwXT4DsV4YPUB+NeazpjfTf
	 Bws+p5B77d1JDk2eaSezjoizzF5A2Ai56ot+nW4FPSld5WjF0sQWfROSO7f6yuEHsO
	 YkHbslaN615hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8A7C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299036275.2615.6189924584590472279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f280e09c766f6ef777c34c92e3d8b1cd4b81fb0e4e9d369bfe5c2ca4ac0e4a
Date: Sat, 13 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712990362
