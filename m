Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408AB2EEE76
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788208234; cv=none; b=nXDyfZZbn5qh1FS7G3TfuOajB6smNVQkQkQaJlN+0Xavmxl7evMO2Q36+3FNnt0BEt3g0VMseHcp0GIi3b4pHbLQvs7eHMFvXUOA0oBMFh+mc8ssOApj2nkLmpPu0KAWsHlbqpk5GMqq4TrFsid8FQzOZqrA5P16PnaOpAkFegg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788208234; c=relaxed/simple;
	bh=Y00Nu9v9VJ2FRAPODOZ75uRi1jaQ1YGEOFlHW7q86Do=;
	h=To:Subject:From:Message-Id:Date; b=tLvMYMyb4sGv2rP93wUkpftGSMvKABU5UhHTLX2b6Y/R/KREkm9t8o7mH+zScFtm+RHy8uopuGQp3xspsZQxZQ1OE4Mreue31caJc3KCkrty/HMMI0nskvQ+8wXi5zKxXzqVIhIpzvwC0Zxo3IbS8jFaKfGZ7/3222L/4y27aRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlvuoIJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlvuoIJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DB5C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788208233;
	bh=Y00Nu9v9VJ2FRAPODOZ75uRi1jaQ1YGEOFlHW7q86Do=;
	h=To:Subject:From:Date:From;
	b=FlvuoIJ/AzcntRWozCgl7fWcJmbriWeObtPbPS3nYAnFFHZ98lLyzNId+RKtVaciI
	 EH1m2jq7tttUu7KsfeP+UUdguo4KmYuCtWhqFxf5Mg9l0pAwZFec9kE/rFo41ymRWl
	 gycVyq4gKHkIrnLeBC4OGU//1z3Ph9BUYzUA6ACsGYdwV/Or2knuWtH79j3pDKNAnZ
	 LaZ+Ntwc6rJ7Ap9nu18zvVXFEVOI4ubbU20iKwIm4AE8epF5wqDmmZO5jOmXTf9+u0
	 2SGHpk/Tov6tLjOxKGZQIsqtdn+ZCjKn6vyA26hBJESNGrIfY1M6H/XAdJLm+IcKg/
	 3TJARRzQv6mhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25D8C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820823368.22641.5388350678665539445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9c35ca5790ce2ed0544c539ca8bd657485bd0b1ea5927b68c42339abcb8b76
Date: Mon, 31 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788208233
