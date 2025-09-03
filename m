Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B8928C011
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756914594; cv=none; b=ILpU1KDnczbxhHkcSisTwUKs48xI3pCvXwyjhS9ShXDituLuhG4kwIaP6kVCcHwE/y0t/xQjyr8kWoWh1fkpaApn+1cH9+W149fo1KmbiVfG6btiVbMk3BIFXjNSKEw2ySaldZG6dAjXYKrIiZv9i8DVFpc0y0/nyErcA4wRkKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756914594; c=relaxed/simple;
	bh=1urRje4gGZeyhrFoTKt65Tg5lj8S1XFunBJEoVDXIMM=;
	h=To:Subject:From:Message-Id:Date; b=cb4tDDfNFt5sI1W5x8PzCbDprIIp7Nrd0SMoHDjGf1QC0iNOfAYOsNjnr3+7qRM4ogTG7EzwljQX1ZAcan8ze8ktYaK+RMuZIKfnu2Pwst5NPg3IOalSys/9Gs0LWBaOeV/Wzus+DJGuHoSeZghpVuczBFyWv4QHpqkGlUG/GQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbNDhcug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbNDhcug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F99C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756914593;
	bh=1urRje4gGZeyhrFoTKt65Tg5lj8S1XFunBJEoVDXIMM=;
	h=To:Subject:From:Date:From;
	b=XbNDhcugzihyevuvw+bFa4Ww/suUtIWBAwTHmYHnwq+F4OmBTWvc2Upj0d5QRWX+d
	 tGqSRskmAiAGeYQ3uU7GeAp9++oLvqOowCg9BPkZHhy4IXJ9Ebh5ixNvBFI20T2RnP
	 adda04+p3ncxNn/pCccuvBMLAuJG4EmDHFCqjquupOwprpa0tuzaTuO/wVnnq49+Au
	 UOPoqpUxIdiESb6QJ+ZDaR+olaNvF6h3sElxZV+tbuNAcHVzD201bIHTwQLoHwJXd9
	 SumwDhSzyOstHyy8eEnSh6rX/tBWoUgkecwkXdhDQc9WS4AhjOwrAJCnfU6E4yPC4k
	 ZGQOP5UKTdfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BCCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691459358.7032.565014932845852242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc579484fc4864743cd72ffa26826f8ec7af1ae436691dbd80b3bacb125682d
Date: Wed, 03 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756914593
