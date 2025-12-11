Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8CB13AD1C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765422174; cv=none; b=hjJ4X5GIDhhYu55zNaW3rcSFLXvS6NS2EOULKG2xvpL2k+3aKyrEj+eAxUNjDJJLDXCGbMMq3JEzVRAAAaWMf1EqzJdMAcAsTROztEw5hTCZN0NHIDy11lAyxMp3sD7pnVezrUZJ14Kw9y5geiQNcVNNc4UkSjsLR3YsbMU2PmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765422174; c=relaxed/simple;
	bh=+WjVlSSdEXpQOPUemmhDQGzvZK7oSHQ0cNM35xEgzYQ=;
	h=To:Subject:From:Message-Id:Date; b=JFzadqdMjXO4BnL9wl+PyuHf7QTc5svnEXUe82sDD6gIYSTcvpR4sPwnaHHQXe43fepjuDJ79At3ux/+G6KlXgjwnTMKZ4h3pQsD6ACI855zIjHS6+4KD/754LHN+rNlS04l1ohqERZba6wyFwvBV93LHQ3r+RJ0YL9wBdfV3QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqW3MefJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqW3MefJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2501C113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765422173;
	bh=+WjVlSSdEXpQOPUemmhDQGzvZK7oSHQ0cNM35xEgzYQ=;
	h=To:Subject:From:Date:From;
	b=pqW3MefJnnujNUrNfYlIx4DAgEZXVL7iSBU2ZEX88ZwYYPlD9F5ATLc4BTrp5FNkU
	 LUxZ4yg2RpctiEIAyU3qP0C6yCUAEG6qqQQ5mUsN4qvVJtk+fu6KddTDALoCMaV+fD
	 JGngfMKvBUiYfVmsrrzebh87RV/1Vz4+Uf7Qop5bF/0238cIb+LuZKDD7MOlAXvxfC
	 XivS9TxZimw4NsNmLisaXlA/fN6Qtu+cEATQLCh/fpirO3oQeCF3WF09m0KBoU2yxZ
	 AourPsDSuxhLDe82SSDOfQJUjavsKFfMfscmmQj/zaXNXFTNKK+b7BG3iRYR2JewJP
	 1p+ozuVxFgnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B0D3E77C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542217358.22017.17442296421837264175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e8ea67b1b616d8948ecf7491f866edb9a07dcc1ef77af8d0cc5a375ef8edd9
Date: Thu, 11 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765422173
