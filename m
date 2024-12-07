Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4A1DDEA
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733577354; cv=none; b=oNBRJE+WuZdlOYZxO6UXoYGV1Sbag+vz1s2/uExWp4s7605PUXcOqzjZ+rU3n/CLt5pFOFjxpd4Xooq8ulGCtUHhbfubgp4aDYGfhx6cLu08GtLkfUPr9jrkv7I0ffKaBK5t+ldCKfQFCdrFBByFbilYOvN+FUsPdIqjY0h07f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733577354; c=relaxed/simple;
	bh=OxUPhDtLevLjGUYI0y3sZvFeOTo2blLj8tde7WbKikE=;
	h=To:Subject:From:Message-Id:Date; b=SW2Co3rDoo9YUijvggXpMo+fDkbQgQAYoWmlD3tvOi4Gw82sLghBowHaIF1L9CoI7WtzjCHgd78oLqKmBbQQOxwUvUb3xNayLaDGEKASO32HS59eEIMOPdqIvMrDpCcHUtvXA9Srm6YS4qeUHQ696RdQAwlbhuGEUuvSlDuuMYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnS5Hexb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnS5Hexb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3689C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733577353;
	bh=OxUPhDtLevLjGUYI0y3sZvFeOTo2blLj8tde7WbKikE=;
	h=To:Subject:From:Date:From;
	b=tnS5HexbACglTy+LZAvta13dbsG1mCoyn/1+Eojek1VjFAX8MfAcY1BTD5CrkNeYj
	 Ws8h7jDViLYOwg8xzPSAkEQp+vWPbQgTm87H0R/8U/6jUX6c+avI0bygNSu2qFQx4m
	 BQP7Z+q+r+rhKOfxjATNlTaf1I0BC037Mp6eLL1xhQngo0nVHVEeyBB4NTNOJbdsJU
	 qCQZPEyKHje1bfGchfaXm2h2Z0BLjj3Hi8DApcOot9HZDgk1mSaxN3ODLf8cHx3epX
	 IwabQ3aB1UB1f5mFNy5R3eCL/kNDJ6jJd9elX8hcPlYUsREI5+OJ4WSAgH1jvFFaoZ
	 2RzFVn4D0k64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBD3E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357735361.9578.9792291495020021052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340c330139504dc486584c133e93a6495fab0cbc2559bb2abf79469458908ee6
Date: Sat, 07 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733577353
