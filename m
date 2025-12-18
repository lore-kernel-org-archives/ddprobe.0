Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E9D1DFF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766030034; cv=none; b=bRDWLfABmzp4BwrzgOLZIZ7FtoJx4d1Arme6u2t19kR22FW9NyQ8X35oV0piPfWMABoatnCwdZ/EtaJggwFTCwwcSBFlgbZYO+P2EApDp2X2tOPbGBSP7DoN/TAAP05Lcp6UPQzl8adF27X68dpKh1/N9y765GAtYqR1i45QQBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766030034; c=relaxed/simple;
	bh=1I2xUkEW4c2/G+6ERxus6Bv+59u2yVDpR5dZB9WWqLk=;
	h=To:Subject:From:Message-Id:Date; b=GkrP5Xur83RMoGjF30A41LZyOncd/EB2FKys28Py6ie9dlpv1tll+DSIrDd1T7Q2xnNu+ffC/xlwfbt3z7zeaxY4EA7p6EBH0XLMYvjaKBhP3EtorzaB628PzejHfHSX0YzEvLCC61kWiDtSwjedo7QB6hZZaOgDfalzJSHSkmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1eRHq+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1eRHq+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB01C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766030033;
	bh=1I2xUkEW4c2/G+6ERxus6Bv+59u2yVDpR5dZB9WWqLk=;
	h=To:Subject:From:Date:From;
	b=W1eRHq+ThCtF+LJDSRs0XtdT/gSsk9Lnm8jNtyr5nKf0Z52UKl3gBPogjPVlyj3u6
	 9gCJ9/74GPAe3jpvHeXVa4V73lq8XR3uZhkCoHrw6mtdwMyl9eeoDF69tW1wMzcynm
	 6eqib7d5pGbHTA3a1+IulORJ9nzDR0ULJaMJWIpRoMZj+AvVaJ2QI/g/AUQnKBw2an
	 aJKPN7Q1vk1jWLJjaUGhYyd7lmVAeJBGoh8ZZnBvAHeuON8ixjTW9+W/Y+oilKgY+k
	 IGLWHUQuG9pINK5DXpgILO8eXNd90qA+xfmzQ1kTDDDPBW1BJsmC8q91fRo0OWaER2
	 hZQrYbma3+psg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A310D68BD8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603003360.7174.5153367318474453812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef51fab057299ecfe8ed656a2b534916f44c915c65f9476c25896f4d71da498b
Date: Thu, 18 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766030033
