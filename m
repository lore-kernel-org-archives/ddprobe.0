Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30D815624B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765590174; cv=none; b=OesT6aWmxTKnyOk+85cyT+8mEM2D0G0x0fLNv0aFWuJw3ofLN7I5y4rA28eZwEfLyOYn/LB03YloIJlt02ZKlvq7nk4ccF+9DRNh2TiKOb/qTHihQu9btqEsXRWniA/iJP3ijOWXEWUvlS8C7tPZnz8sekYxdFypi0ktUg93Whg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765590174; c=relaxed/simple;
	bh=+fIJC/sly6jwVIneXn1ux1wIujk3UFAeK0Nh+POtSyc=;
	h=To:Subject:From:Message-Id:Date; b=LDI0ratMQ1EAphQQVbxDn6JtiCXS0Zh6FYwjb4FxhIXGOlsWM2xgcH7TeLOGi75+Souk1NRnczo01mRG7+orq1+4KW8rfnbO13hFHKqL34vBJJQkp5q4TbpdnTTBTiRSizX3mlJK/tk86LsmFC2hrA4iJ3s2r8psDWp3aRWaEp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRBD8J9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRBD8J9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14EFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765590173;
	bh=+fIJC/sly6jwVIneXn1ux1wIujk3UFAeK0Nh+POtSyc=;
	h=To:Subject:From:Date:From;
	b=NRBD8J9aib1TiScuCb28kxacg/0mtr7wpmty0Ui/i78j8+jhWnjKzcKiiCUTSMMXI
	 7xBnwfT1ceCcGx5plknGCKA6+fapW60cCdsGhKQh/jSLmkxTkYssRRwCRWr6qAPm4W
	 O88voPYORtK0xU0bMqw6AVVj3rna8Qfsjyxr1rfRaP+hi1WummSN/Cnn7kNoFYo1DU
	 0lYSCOJ557JUoqBpyYp4Wh8q1obZTqwuae0W8EMPzZCSaH7TmnJtrirF/JrAELILRo
	 exb0HcbkKww+2DVBQEidCFjZWbLr88qgTE1OTrDuIVC/vfYhLoqeq7WMOuoHAjmkiy
	 yZEw4EaVkg9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F06BD59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559017360.12283.3110233372760674904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a27d77289f7520202f344263f46b92cf870758b7a47975cbd4626f81b6cba55
Date: Sat, 13 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765590173
