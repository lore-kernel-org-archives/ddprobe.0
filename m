Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D9F314B91
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766655834; cv=none; b=YmmgNdHszvL+IkZCr0L483pRSD5PwkmHF40Vu/2fL977jZ+t6kcsu+NrCTXZyqCK2OMh4mJg3Oosr6t79TG4+98y80Pq2uPsLxmijzuinuWbEExqsgt7+mB5deZ8rHBgEf3q8ZLT9zNh0Ec4E8KHSQMjut/C/WSfVqW0+V2VE/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766655834; c=relaxed/simple;
	bh=46tHLVziPj8AQXjeVmiLVV4jsFdiDT5Suht/Aec64p8=;
	h=To:Subject:From:Message-Id:Date; b=fzyokP0hzgHhO/UBAkjb4jxvyho+aFVtZGuECGGd3Xne+injySBw7rYGm9o+uM5w2cMdE33d83qzz59+ie7t0eMT/a7Tk1urfXgqKgkvfcbQsemp1Ypbq9YV6HKnF3p+cLwqrzq2LfIqar+s7ejoOQpW+DxzJ1nW7ENKpAdEyno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX0eDqbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX0eDqbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4116C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766655833;
	bh=46tHLVziPj8AQXjeVmiLVV4jsFdiDT5Suht/Aec64p8=;
	h=To:Subject:From:Date:From;
	b=hX0eDqbAxu5Keo7518Zffh+7931ViN7e8ZL7wVnWcFj3tD3Z8QM00xrsO4RfWTrNE
	 EO4L+JTIPfWH3mMzhfk3M/CQbmCONPENmzmVALaSFAfako9QIhqe8RjigoD6Yfja0S
	 H2rx8cCAjHWpIr+HrOK4pJBVgYZYmJb9dwuwCxuaDy877Qiu+6UziVAM4Hew55dK+V
	 jIZOtceZcxqk4OeRj0LCN10+SiGOy4FOqGwY0wLcbtazHKxjYI9wtRr/qpDO06LC4k
	 scq6yfzPq9Gc8EV70t7OW/0JT6TeUNCbV/4iMi+18Z15JrQGiMnAtX6/XXcuM20Lom
	 oRaSuncICumUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196EE7AD45
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665583357.15820.1486564847426575858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3c963af3cb6fc4c3d2fd8dad84a47432532098362dd78569505da406e535d2
Date: Thu, 25 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766655833
