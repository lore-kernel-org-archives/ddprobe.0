Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F40B645
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717220063; cv=none; b=OE7Gui/Uvdm78PuAxM1pCF8hp5fXkVjhcKY2hMt4oNUE9D7C/p1z17pSsEfuxRPinP99W+8WdlUZ4Ox3b1M+wxNGsmOwJZI0d47NQQV1kdNAqMN50IRZRRWRlfFxgnAa5E+Ekj0xm4sHwqWtIAfcMCNKjL5kpynyL4tN+sOrpVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717220063; c=relaxed/simple;
	bh=t5KDOXQxSvahGrwt3yeChVJEvrp0xE+jkKuyLtIkDV4=;
	h=To:Subject:From:Message-Id:Date; b=uccV1fpdKTz4+xhL15udGdAKiHL1MyDHIF+8ksHsn5dd+Nie6T3//I4+z+mhJPK3hWFL3xa36Vr2SuZ6rpRzVnoGF/7ousAB45BGPLKBfWjT9RK2bouJC/XMEI2YGLS5Sycax3HKj1zjtPEqPvBuKh2LmbpS6vaxYRfLyKIdwSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7IpFURP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7IpFURP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AF9CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717220063;
	bh=t5KDOXQxSvahGrwt3yeChVJEvrp0xE+jkKuyLtIkDV4=;
	h=To:Subject:From:Date:From;
	b=M7IpFURPPyA0fBah6p0Kpu7gjG2XM/sdwBhvhkKgv3CODH6GS2X6wg2dJZ4+OTDai
	 nGUEyAQBeqS43yZwu4aKWJgPgO+TCniWtaVwl5J4CUm6JyP9ydVF3mbUAk4s2fBEhG
	 xWrBhMZDRgzhuzLoSv5CNjfq9LB/5irVxYKy+V3PB5co3HtYebztrsXLctVnSq2D8c
	 n4S5izvTeVzNb085OU4tUd1S2qKOUHxTVRHxQWIlYxYA0TPOBjWU6zfUaAG7ndWKUv
	 ZOsUkY9rvQCSY+RHhK4fDeywDiXIN2i9KswkdQN7etkg6wTKBkGkNatTjD6vEq3XFI
	 PTGEBRnhTHKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0301DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722006286.20390.9669129200191850180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b444229365327aee0bcb761dda1d1a8d22134315eebf112871de33d1220282
Date: Sat, 01 Jun 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717220062
