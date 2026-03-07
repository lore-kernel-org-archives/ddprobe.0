Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275CA1C3BF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772890494; cv=none; b=IgRFYpCFnDBQENZSNsqzusSkf93syPhFXUe5sNN4AFo3B3HjCHI2ypU/hxQq9ibuU0ktLDqgEnZn5615tcssjdDuy8rrJ24x5KzB651lmO6QP6KRoBctIjNgB8SjPKCiQkqZ7cW0X/3CbavuPRrSoCYKcPBRWhhmTo039f6VP+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772890494; c=relaxed/simple;
	bh=d1cRZaQjURzETTOFTfSdTDqxSj3uQypB7DUbOU2d2Ro=;
	h=To:Subject:From:Message-Id:Date; b=oM9su4JzrRFSTtio8NeaDfDBmShu+73pRyWJyQI66YIBuG88GHAmqHCKOWBGwDfac27n39MZdumQr0DjquX6NejZAUvlh2DTjPARBzlkEK2yKgVsAAHcsn8gG/3Uwea32S8g2+ca2k4QjHxXWNXRygtnB9OYCi4Y9C1CdmnS2WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z06YA4cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z06YA4cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B427BC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772890493;
	bh=d1cRZaQjURzETTOFTfSdTDqxSj3uQypB7DUbOU2d2Ro=;
	h=To:Subject:From:Date:From;
	b=Z06YA4ccWvJco3/5zBwLod3flWgLk4RWis9HVP0x5VTsScj/UqaJ8GuPebR+xTiZk
	 BKCw0UjFnJm2ofgLgR1fs8pUP3Luk3aPUoDSSHta2qOB6ksURpKTKvwKsGPqNUJXq7
	 cVc/VP2tjX/d0NFzyaXL6aZEDjQutq7UfOpSuiFEhvDpW53lwfLv3MM599WXWz5d3S
	 dq5gc6+5DeJmb86zEXkkH53IabmwcbVlu38Dk0PEeqeY52T/Te5fTeZ5l9FEXSClnl
	 LE7Gc7mNNBlleagR3WX+3ZLw9QAXeKiYvUq6Rw/xZ0Nw7ls/Fk/nDXYXiE7iv/TjA7
	 4HyTL4k5fbh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B523FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289049362.22634.14914295942532890764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549929a7cc10386132c10f7d64d98bb4420e61e1d8671f4cd23c9dac3f5dbb35
Date: Sat, 07 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772890493
