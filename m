Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FF4396D11
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935894; cv=none; b=fqsqQHFwxyHMCK4X08wyu29x1nod37vdq4/FGYZutMdhTAY+Cp/OCxVJv2Bo468UkPe6MDRcpZaUKeqDxVGoFbct+GWjOpFutxFKOmjHWAhkj5fDg7JQ1l4tfLt2fNaD45SStTg2TfYkEJEDqgycSEqW3UmBuyOTgKC2sZ3Fl8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935894; c=relaxed/simple;
	bh=+aFyP12AkBzv52pii75CK232ASSIhFNO3Y8brPyGcC8=;
	h=To:Subject:From:Message-Id:Date; b=pyN3Tg0+thhSRuNLqXjNDT4vXN+FAaxalS340ZelIgqgs0J47CyQ32zyf1U402bOlap0qmzPwmAchuRvyKj57gnMfult7WM27dCyV8nMAKtM3OCzuelpXXVNbwpZi1FfgT+uyEc2DV0vgaZ3UiFvFl56QaMRW1XI4lJCreupJ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPcH9ObA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPcH9ObA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5432C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771935893;
	bh=+aFyP12AkBzv52pii75CK232ASSIhFNO3Y8brPyGcC8=;
	h=To:Subject:From:Date:From;
	b=YPcH9ObArNFKrwChxcBPH9UF5jFKNib9sWQo3Ru/j2fklR8jEY4dBknasnqurZll9
	 59sTSDVvxGkp+/6LOcAve3jtTeceEGe/mEomgpBd6jgQP70Jzzeju8siRjcaFtYJys
	 7WBpyjAgxm+Hgjyn9Y9CxizzAvtlJk5SrlCdUsvOYlr49CKd6E6DY6OZ0XTtbe3N7g
	 ICs6d2NibNIzsa8yXPFKfgHLjLt0lkcdFkK6TfBhMHABw1NLvs96NGJeyxSSXC9Q4p
	 7iUoIW66WoHKKdyPNZb+PlDGkJp+SWNfb8P8H/ZYrFaQIEiQIUPAk/IAWQmoMF4njV
	 WA4k6xTGK6SQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FBE9B25B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193589359.25868.14002789073509084784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e966cdde652bca1fbccb91611f738b50d8a58bd2898bfd10e8eea410e8af54b
Date: Tue, 24 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771935893
