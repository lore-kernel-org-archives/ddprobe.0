Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301E33EA69
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734158154; cv=none; b=p/n9yLKSI6DrBDY7dPUABybxvIeUCALSEOIlEWGChEV6vCyRq4LO1oB5RzzV7/Tkgqkc38QymO1F1IGSRefHrAd7OU4/L9VDfcW1TT8AVVWUWLAhKcjshCF3i27ND8wRli5AoyIGlhkJZhmeLIV6ajMqkSjVNqfvSZs+xsStEzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734158154; c=relaxed/simple;
	bh=bFca8Nrmj/Rhp9YfHCkDT6/g27uTiRNJZkkKxFvSSow=;
	h=To:Subject:From:Message-Id:Date; b=BJV//2tiX7rOZDgbM512WtbwuzozJTBhuS8gJfmrbiieDEDhHIQWn/TytRzhNVlV1Ezp/AwMZT/Ce4ZcVRDGys2nSVn8oeTcQVthF5fE++hkyHP5VS6k4Fx/Z5sc4aCaF8AxNQ/8aTOjFhSZf+NG3lav04uur3SeifozQ2nSr04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMaRK2S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMaRK2S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3FFC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734158153;
	bh=bFca8Nrmj/Rhp9YfHCkDT6/g27uTiRNJZkkKxFvSSow=;
	h=To:Subject:From:Date:From;
	b=iMaRK2S8aB2as0pGl/ahSih+JIMh96aA10LUzbnA7O3JGalSf/CR4+kzSY/wXtLcB
	 Z/b+e6yEubrqvP0VkGmAtFM1FC107o0o5bTXInXs3LjlV7k29hSRDuPnk8GGmOWtag
	 mI58qGJCWGDCGV26DIEm8FSpWwaQW1DA6niDkAHqVVk4Ysuai2r6J4U7515EU194Hw
	 AaMv466BYnDftG86/8RQyK8lF4ZYGOQ+1qRMVU3XFrdfrixtFt49KdiTf+K14NGcwq
	 n4KNQUEh9jkOK1xJZSL14mI7RZgFBg7BCQ44KS1sLC5KjwdgNpX8L+eK4DCxnY/QaN
	 9jm2yP51ngv+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D1E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415815359.1737.12071166685970786837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cfd17be70b6e28172e677cc2599783d2d62a235bc14cf69630f596990e8a2f
Date: Sat, 14 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734158153
