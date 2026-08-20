Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B63515CE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787203834; cv=none; b=jknrLepi6kHEVOh+xBt6M29l4wWw/IAjzU8w/fgjS9o80+SpJUsNPk/kHaZ1TcY4JghybLUblpQj2s6oQ23r5BrMsqokItpRZ6GWrtVe+i476q1YVEzjBtOzDbUQub+g1IXVou4+iaYKfKlKwQylc1g8XL8JeDvYOgeZfftdiT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787203834; c=relaxed/simple;
	bh=a/t4gK2B/+D5LXURi3rwLWrya5WOzR1OMyMiNuRxSz0=;
	h=To:Subject:From:Message-Id:Date; b=t6pjXRwTi+0P4tpoZ/jk8CBSmL2LiuwVQuFACRIz1eadYW0UOVa8OmVQSv+G4jCiRoI1HNGcLQevOAOlz3545DZ9zVFUDqhfQaTUPnJXKyGcVlagR6R/mm3Qk3IVLsXESP/w2c/M+icNJjA6gFXypsL78ZsEqnYl72qy+HGrLZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alp3dMha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alp3dMha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C6FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787203833;
	bh=a/t4gK2B/+D5LXURi3rwLWrya5WOzR1OMyMiNuRxSz0=;
	h=To:Subject:From:Date:From;
	b=alp3dMha7LuaGYNyVY0Q469yUEEZPytTFFKQvZWpzTPyKWLYythf/uNhNt9YJ1usI
	 LWRVPK7b05p4AIsyzm4OofTwBBgNqEathetZlq8Pm2Dcfdkt+5j8bLFU6gV6uw8TTB
	 vp/ho8LDjUYe2TnDFslNVe03haGpGqOi9R4OQmC69JjUn10B1av78CU765b6mv9+Nd
	 hyY9MYWOtlgP02WwalZcoYt1lmzJxyCBQKiy3b5mzSTuZP3IobKzQ+GQkJdYPWvVWC
	 WLaQbqos9zdWoYR0CIc1gpBpqjlrtZj9uEq4WE6rUOexViiHvkU0+j7aTouwdP2MxA
	 XQI0BT35cfhtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB01C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720383371.22451.5692228621292019914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03965fe229ae117cff66053ed86f339fde8e38227dd38699839ed79b16bcf75e
Date: Thu, 20 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787203833
