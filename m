Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5B9224D0
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711592297; cv=none; b=XvcSIqQbenyWDsWdAk0lqdmPRj/OSpsQQclZ2MUdnovdxxSfgtC/mugJgxTCmn6Kn6ED3mLBUJx95ptcvMY3KX6rZHq37u9h58kf8dV1Ajv8gkbw5Hv3NCcN8FQB/AwGcnnPeAFCYS5uG69Gh+LEgqS83LjATqouTUOmM5mTnmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711592297; c=relaxed/simple;
	bh=hDUPa9wWpZZUnw/hsNdigey1BXr24l9dxRoTcamABE4=;
	h=To:Subject:From:Message-Id:Date; b=UqiHoWuIa/3Quwx0tN+mlsaXLMl378VYJtGkOKpajww0V5iPHjRHOsuIEu2AdPMWvTb3fjR9TvRnr5dottCu4ZKiLzjrHHXvm1oVTuinDy0bcCH5UqOOZ4IsudK1kYZvmSW8CPzWq7epQTOP6UIwizu5v8pyOS112/zq8BhElQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkb0h925; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkb0h925"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDE0C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711592296;
	bh=hDUPa9wWpZZUnw/hsNdigey1BXr24l9dxRoTcamABE4=;
	h=To:Subject:From:Date:From;
	b=lkb0h925D9QBpzbPTBe7Ikxh9iLn3vYgNZnJO1uZvwjGiGZEG8QSU1yzwQI31u4zN
	 yIEZO9F+jI54ALgeVSx1Ux43AKxPaTXc0Z2G0Tbkpmif00B1CLAthzx5HEIrdEVP7X
	 HMG7mW9/uFwGj3Eo5G4l+hfVPVA6PD3VdjEuNqPs/xH7wkao2MmWdjohMohxnRXpqy
	 qxRWyEEFKgEuoC2IvPaq1Ql2tHekEKHRKAfrAS5CniAO6AGTBpxn9+sBFLa3rRbBuS
	 fX3fPknFImz/nBUFZmTdDqTMGjLLbLT9vSMKA9jDQv/rJxEfHXJ2f6l8GnoPCz+Buk
	 27ED4aM1+L1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D0A4C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159229647.27579.4904011625378990199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490e5e91b9b51a333b4c5a4087d412b71841b3b3cc33c68d72a15ff5455e8a63
Date: Thu, 28 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711592296
