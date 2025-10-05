Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246C1F936
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759675796; cv=none; b=e5UzgSQJy8Cxnq7G5YTvLtfJgquqYUWRkv5ZBm8trHYFP9gMmkC8RT3fQ29srK9eftOGB7Rsv93fHgLh2+e/FaBMYT0b1ok+7pamBbtTxogsUJ62ojuds37+C9+NI6315D6KEZbRcEHXp6UmGRPZfy2rJpQ3TkwweEqVusX9Lgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759675796; c=relaxed/simple;
	bh=X3kDizTas8KXXyFHx4Q79nZ3upLRXLb7XxmvrLZiS1g=;
	h=To:Subject:From:Message-Id:Date; b=gW5gwI8T9VQZYRAmkaOw9QcDnidogilk9q6+4ZQ8Zd253cJu3zZKdTo74L+9z1rZDLHrrdHlyOXikJqo9qOwTm5zV/XFzdXbGjaHkW+MJLW0OYsbpTtiNQlK6H3jWbdmdLoKMGUwmBe9+wjK1gIkF2Rs9XirlBOBWZ/+I/J+Jks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYbnjPrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYbnjPrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7045C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759675793;
	bh=X3kDizTas8KXXyFHx4Q79nZ3upLRXLb7XxmvrLZiS1g=;
	h=To:Subject:From:Date:From;
	b=JYbnjPrM1HYXLaVEVGi9/kKIrAHJuzEMuXLZJjbrhsNDnysT0j65CUDbpGESFzqaQ
	 TG/ZLLxl+8tUZ50nsoj7EnFWpXWx1bBl1EaJmdmqRwvYwSj1Xy2cDr70FEeNogMa4D
	 KXLh6qDFPXgLH83SSiIdSxZ4VPeSd8/IOMQjmoeS0HFzWZ2C6cPm48ueE8oq4Mquzr
	 hRd2j2Jd0PT/jNWyrKitWh8a2Tw6lbVFlUWHWQsDGz1KEmaPS7zyop1dCuIxFtTjNe
	 PB8QB1UckXMPpMxlPs4bKf0i+Mi83z2Upz6pgcJMdwZXWpHnWG1dl34Z5lsFskwnw2
	 fS20nL7zQv83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95102CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967579357.13034.10097601057216737664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5407d7bc2171d01b28ea08402f5b4a8d09842b8b4b2e785eeb5eb778791473
Date: Sun, 05 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759675793
