Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2974DD3DC
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791555034; cv=none; b=iOnH4KivuMKni1Dy37Vmq74txWNQNkYTBd0wGLANaPPO4oVyacFDxovIPC+gTQCjCdyV/IaoMdkxDYcJp7Bzt/gwNMzW6Q+1+BKV7biXZEyifZAUodj67UjvNJBgGA8iQT7yszjpqqYB+MD0KlbsPbVJPKzZ5PavwMNnw/A8/3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791555034; c=relaxed/simple;
	bh=UMCtIKjNnpW/FrzztmfUx36Ed4edY61joDV4fHy/71E=;
	h=To:Subject:From:Message-Id:Date; b=CE6GxeKe2kb6+ZI/kqh+jFJEpUan1XsOtPyU+AzFbuEPzZsX6NcCXzd+On6tO4FKgcIs9ShZWacwqot0kiKCGsnOGyhJSqAqSEMx6E2xHvHA6NMQ9jrqs030tAKRFtCogZwcLIh6/Y70U2U7kVqkJtY+RUeiuQ+GYNaQos/rj/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5Ayfu7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Ayfu7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51CDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791555033;
	bh=UMCtIKjNnpW/FrzztmfUx36Ed4edY61joDV4fHy/71E=;
	h=To:Subject:From:Date:From;
	b=c5Ayfu7kDlB40gdxNDRMdvaFuEfJ8Nm6WFiiOnRqxzTFd63WIvnBnnw4ynFbNNAs+
	 yXavckxllhufF7Vh/GDIQFr1rumU3UlzF23QlRoaMYaOrx+cvHUZ1fiq9DdCYgDAil
	 LOUZ9Qg2LNFnd7AXER8jyxC8yyC5n0v5MuNdyEJUi+eZax6TV9FKwo0T3s65N2jh2R
	 4nSxbQJTondj0lQIQKqLA4mb8jRPpnRddVTIPapAXN9FsJhs7a0oS7h0nhfxh2K4Wy
	 zZ6045e+byAhSUWSCsyfcdIuTXLYeKZW5kiaYV/Wc6eHPeltFqbEDgrFoZ1CZ84fLo
	 5eD+QnRNwih0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CFCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155503369.12187.18363344545137160922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d897d40bfb54f0bada982cd80cdc2bca9ee1ed460edc7e577480010a3c84793b
Date: Fri, 09 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791555033
