Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AE28A1E6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502834; cv=none; b=KnLYWQtqdpfIgvwjZvxyzkIkodat+kQu+zFqt31jMSoo6AKPtIdy7FdVUFD+Xa+YoIeKr//7R0YP1gJUGPlIj1FUHVlHnykn55U/Cs1hSrk10iiY0TYBTWOIwRL+beWRrmLL8G46qhjREwAJXrzOzPwtCmI/ny4koEJv3eRLR0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502834; c=relaxed/simple;
	bh=dTKIBVlGf5n660CgJBiUr4A5DGXvzBsCz4tr7/s9/2M=;
	h=To:Subject:From:Message-Id:Date; b=PfIC4MdsDB4mzfbHdihP2OzP3wOMhyxULvLGJfFhvpnZTYec9O/OhfyE+6mW+iXVC0ZTp3c9aaawPOcsnp60T1k6df6Ttwxp7yESwv2fr9e/51txGw/ZLPzKsWe+Epcb9P+Q9dNZNE+RrEvpPQvVQCUYSi1AkUC9pmplibJdWA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGm9Autk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGm9Autk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB92AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769502833;
	bh=dTKIBVlGf5n660CgJBiUr4A5DGXvzBsCz4tr7/s9/2M=;
	h=To:Subject:From:Date:From;
	b=FGm9Autk5aNjHCSFWGd3G8+GhttxtZMC8fLXsoanE685YVGEeHarsJxSlefsO4Q44
	 OH8ghmZ00X4oqFV/ELrPSVEm0LIk73qiezwdfVrQRWjhcDBnsdGfFDRit2J8J4Gbg0
	 5nLv+gd4LXlbZi747bIWb/KT0O4DU7qNFbXD5MaF8jDNHozoJ1fPGK7bF87jJLtYnu
	 p7fi9wixdpUpRx4Ga+LrzrAbmFCQG52YE48M9wViaWQRvWdo8XK4HuGBEoHwfby7G2
	 d46eLKu4A67x1PDgStHpe66lRj42uKb9d5G5RI2m44KxuOVZI7aygEoYiu4FTJa//N
	 2Sp48dI6vmqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F98CA6CA9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950283358.3234.6430568776022164244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d3c66980f3331cf048cf46c816d7eb32d5961a2fbe60f120621e183d451ab4
Date: Tue, 27 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769502833
