Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA73286881
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787807434; cv=none; b=o7JTljEQ0+Z9u7J9UR4u/QmgrNGyfMYZ0qwZPlxq1ezH0hi5+K1F4byJHQ7eZSo4BGwhceNl3rtORULYf4zZJABvK39XioFICESys/ZVSoiq+MJ7Zw27PHq7EZXQRPw7TEEMWjgX7HBEWJ9Goy5btC1v7NHcskARqPlrqE806p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787807434; c=relaxed/simple;
	bh=zUX53qH4DUW7a1W4dA2r0RUkXppeDFx4S+sxU+25LUw=;
	h=To:Subject:From:Message-Id:Date; b=efZJ3nfswQmqDUT/rFLCmBPByKobfN48CQefy2/JjJOp7VcZyvHishtHdBi1gmT2P2H9JhRI5YJn3S/2gjMgub7KQIxW8cmxT428CdLsZwbOjA6rSB9Q3g+xCoq/71ph6DR7y3CQH9BwTvMeMuHNtMAdY8LwpKcaQEE7iaA2aSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oern3ww6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oern3ww6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC13C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787807434;
	bh=zUX53qH4DUW7a1W4dA2r0RUkXppeDFx4S+sxU+25LUw=;
	h=To:Subject:From:Date:From;
	b=Oern3ww6P9kure7SAb5XC/dyzzNiVObMGmh2tQFpI2iMeO1W7offnHC4rKLcj2faF
	 L2W91k2YlwJ3j+H7OsWR6+3hw4hOtzli5JCkOztDF4IF4Ec6OjS+GBZUX4gGZxB1AA
	 mkYhkOHI2DdhA3OsW6gjm7BR8JXCqqx4LNa8qrw/g7PtcOAGMjaKqR+g602Vt4bzQt
	 gjXoVXD/sZPgvxby2e0wUWEH1BkLe4nIZXOW93OsRwf9mWhb5zuQyHrcH91DthA1hn
	 LSsC4Tk7mKfBI+9mmdSob7lppuK/i2yKTZ4HjDczvshWuzDI9zFxNVAeQMsWM8SjEt
	 EHfh5PnUOm82Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C85C5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780743368.30563.8907329030692747691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892239233e7a380417be61f7d5c87867200ac5e4f50de84a513a7b287a3cf0a0
Date: Thu, 27 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787807433
