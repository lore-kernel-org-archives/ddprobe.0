Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257D979CF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747762194; cv=none; b=nuZgCib3piQrR4mos+09pMJ2uaykY9py09KaYQo+EKx/f8QlTc9lPjk3AZ0RTYBMW0gTaWToWedTNBZcFLfXX08I2edwpxzZTqxYbnv9M5QSORMBYWYHMqSHo4nMgdyScYCNHXLwZMdZKjS7DDMaqvRunWvFknyi0V98m0Fu3ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747762194; c=relaxed/simple;
	bh=fkKLN2GKq2BXhehTaRWNSXxfmo8ssQogS4qM6UfJ6i4=;
	h=To:Subject:From:Message-Id:Date; b=UFbq6MDYXKhxc0FxPpCCER1ukqFcgua5HsbZUiq1u+bAfnV20a0HzB0hYRGX0n/ByFVPOULCw8107Bx/OBPrh8dCHmTg83jD34Bfd06lAAorbHsmOTMNu9/yc+ktsxdFVb5I6gpm463/AkYKMF07zoAT43qXS5SrACSxWWHcsT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCIk1Ls5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCIk1Ls5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF4AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747762193;
	bh=fkKLN2GKq2BXhehTaRWNSXxfmo8ssQogS4qM6UfJ6i4=;
	h=To:Subject:From:Date:From;
	b=FCIk1Ls5ePh/Rm2OeNhANXrHZXQWfdIHWn/7SAlKaq4T383sku7BbfaaH7nU3mLrV
	 cAUi1SKrf7pV9EMdNcn0NwCU1Ywj2u1RZW0tsLrzbCdpWTLiHbXQezn2Ut9DhF8C18
	 OexS6iOI2/ebVVu5wqKeRsNtrKLrojEwqw3NlQL/lNrfu3z8yyf7RudG3kfHuGUFUj
	 zTBtmijtUglkH1dGO7w4LqfzjoAzOC2QE8XcoyhxIkZeT/v9gDJX+bwKPNy8HnDB25
	 hbYGR6KxCkvP143jEhEW1qJY21SPSNMHLXHsMcu3GbSKett4p3hdGS55eBopbj690H
	 Vuw0sCSmD5XIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99EC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776219357.27492.15542046748460366929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644dbe88aaf2011f2d1b0c6459a647d4640f4929ab0e6929492c4fb6c8973432
Date: Tue, 20 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747762193
