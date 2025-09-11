Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17521145A05
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757573394; cv=none; b=Y/fgxfEWGP0EhCrIcUVtfQLiWLStvsmtdz7ugOu8Qu4rgZ8uzTRTVRbESw+uEY/AulqmQwE5Ooy/e71ft0RLeQcpHB+7uMLeuzj6Zj4xF++nrhHbIuRp2/tMx0fwKsA8spI1PRPasOSzRocd9XK9Hj8xC5PlV5vOhH2APfouKN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757573394; c=relaxed/simple;
	bh=mNFy8yddNI8TnKkBc9JqyNMn2Tk6O31fBAgjpZ7yw9o=;
	h=To:Subject:From:Message-Id:Date; b=HxO6KNf57I+OHRI4deiPKDXk8MJV+DOk9SMcn2xaeUJJDGa80lrAKI06mR1PZ480nNtoQAdZGOPjPDubqxwDh1Nyuk4tmgMLQMIHBA++apum6dZT8qXflcH3P06oSo+isuXUoUh6sSvm3K37nJSLAMoMHU30D3bZ9+de0lFPjOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0/3ADvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0/3ADvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757573393;
	bh=mNFy8yddNI8TnKkBc9JqyNMn2Tk6O31fBAgjpZ7yw9o=;
	h=To:Subject:From:Date:From;
	b=d0/3ADvTNXLsXyMB40oHsmml75ytuSkC9HP1Yuo+misoJYSEg8lfsyd4TP9SBK7HV
	 ohnUKI3hnASf4OJbI8ppsKnBduXDUhpSNQzKpTN0g3Ks/r4o2kfS7PC3l2spDgRGo1
	 N6j/siBAoD/rS0DZJs7PmYoofnhRJwgB6Q84cS2hlcxv/w5iJZyrvAL8Qk52q2CUjl
	 4W9NJW4bBVZ8wNZ3xsYqVM2KxdH37R82+cAwzZd5XGlso5mG+ajKmyxNgOvHNHHGRg
	 54DJAgTKaEIQudI+lKJmQO1CbUvaFCacvYxlRYiu4KgHi7CobFU2NHxvE8aCJcaRS0
	 hyYGnYmiGcPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B8CAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757339357.17024.1338347657935038439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af698e8ed25ddaeca86aea81be62a5ea25b7b98dbc13e1265c6af254407c708
Date: Thu, 11 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757573393
