Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D74629B78F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780733674; cv=none; b=hr+acG/jDa3cOwdeAaVe6ZSs7gOkGjn4ZAmblr3wFGc0SZaB/9un6JmO3qfH5TxOhFdNhSwVOq1KZlfKSw6CGdzxnDKrFeaqBDF5EQmzefyQQRDuVU4YX7iAFJYRbcxU6QkiInbeBLZa2140KFdSm5pvgOQTuNAK2sjy9pI2PSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780733674; c=relaxed/simple;
	bh=Y4+WRMIYmqsLNsy6sPB1KBmV6RfcEjPbnv/de9OuK40=;
	h=To:Subject:From:Message-Id:Date; b=ZlepgEyT0sOLi4X57uiizzY60+ZmyV5RP3/hkpEvaJfUKNjx4hUvyuMKzWWx/wta06JOJQ1mJ1/UhIWjrHRHa/EF73G56xcfdIPiy60+SlHOFOa2690HouOXPHPwmCUamKZTSGcHW0/zMaeLDRbWDDlfNzGRVJb3tKJ31D39qfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqA+1Wn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqA+1Wn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B00C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780733673;
	bh=Y4+WRMIYmqsLNsy6sPB1KBmV6RfcEjPbnv/de9OuK40=;
	h=To:Subject:From:Date:From;
	b=UqA+1Wn0JRCaIBSr6tTUcCmG2Plg3pX+6SDYuYCrz0KctzQ6fRTG2zwS7lGdBokeF
	 J4UF/SNmRG3j2KG32O6yTRQ4FUgDYucUbVoeuGccLnoCjL3otkclZfVo5IA3dad0AI
	 nRs3yiuD7/RzZ/Fa0cNjIG+4k4F69v9gTYZuWuc2tq6EMMu444/+6ltckG0FZULCUU
	 tFfM3/3k52YObE1bg+B78uD/JSCgeniiBeHSWgL1TrXt/z3Kzj4LHk5/tNQ7oQeKjQ
	 a5wBwJvcVqYHHL82XW6XzChbwvCjyyzlu0zQnGA2lFPY6UPo5fCe+g6jCpLXPYVVPl
	 hhST+BXdNiepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE57CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073367368.27149.1869455389355893794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3fec987d0b1ce7050c480b90623f91778c14061a4c873714a9c39a544b300e
Date: Sat, 06 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780733673
