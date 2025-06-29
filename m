Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3822D1494D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751176195; cv=none; b=Cf8fr0BgWO7UWHEe+KnfGV6QRf2+lRGhW2oNexNBzOkdMZdXyYf+y0ELOqlqO9Jc1ETQLyIfZic0788IXiOQVHREql20PgiSML64nrzFZ3pYV7TEIWcrbK7J4r0zqmsT6xufRz6hdLCZLJD9BCCb4jwzWfiXfRMi5iMONPApBfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751176195; c=relaxed/simple;
	bh=feGmJ67J5g8Nb+4sULFUBkFPveJ/vX4ESe4XeOQ21ig=;
	h=To:Subject:From:Message-Id:Date; b=jB/E0mFJy5kaonkVcF9cTG4lX18sUTB33NQkdRr6UmQ/hnf8acGObC0iJhyPKy1gENdWQfxJBAcAdaHzPBLT7r45B11b56fRpqn2EQqOaQpa6ApfSIbHFRVK19Aoi/R4xVb8NdeXnVLzFjF6zncm20HZ74BigsBrdDqBQeGBffI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKd1+0AT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKd1+0AT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8753C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751176193;
	bh=feGmJ67J5g8Nb+4sULFUBkFPveJ/vX4ESe4XeOQ21ig=;
	h=To:Subject:From:Date:From;
	b=lKd1+0ATMV0Z1SvM7LfwVEOvJF+krNTHFmDkGg5oae1yPbhtuupEt+dyetgIFJTRJ
	 VW76W3YaH1UT+iAU/KIFS2BiFCT18EEduot+S5kXT8L/WRSBCcDeoO8BCLOwVCCmZb
	 5T67Toj9Apr/loKb46B+i8kqf5kDfZZirfQuxMAfRHlRNE99eVlbjJHJm2fQSUgy+N
	 dK6FoNSVa2xx0Eumf/Tz6c085nTTCKq4a1p4P8q5ftMKCJgnyV6OoN8XUgGNE00/aJ
	 PYV8vfjLj6c7kJCQ7lhsZh7BXt4WXy4R0cpiKldVeTpYv9gqxOwBn2c3UovRH6ILkR
	 uydicaSJFU3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E29C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117619357.31855.14542595072985287716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2752314165ac732aead05c7aa143b6edc7bd0acf5be85b69b31519279dd76c
Date: Sun, 29 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751176193
