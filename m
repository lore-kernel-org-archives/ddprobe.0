Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE9277CA4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754638194; cv=none; b=lgZxvXCuBSTJ50qvDVba/bFt/g5fMXRERJGQcwbvBLzIh6mkh9XwHeokPBEvRBm5j+9amsnS2OHGC6U5JJtmqVuyJsA/dgg1aygKh0r03UsPufu6F4YL5HXhZrsM8YBYNrKsQk4eM/GwV9TeyB7NE1GpzqwFwEBrRIIpyxd9QVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754638194; c=relaxed/simple;
	bh=/9IF9j/s15mkoBzKs1T84lKE9vCqifKMPLYtDwuyIvY=;
	h=To:Subject:From:Message-Id:Date; b=dGG0aopL6Ps157ErAe2oCB6gTf8KPHSGiYhWq80sqPl65Jkq39Eq/LzklQRWwhIwqaSos5e5T0I13MONBvx5e7vyy73WCVwbw7eM9GK8v3RAEdQ9RtdDLKjf50uTdnz6fjMK5P60jjPul57UNHpLasR0BC9MQsF8vQeW/7NUIZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHhCp0Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHhCp0Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754638193;
	bh=/9IF9j/s15mkoBzKs1T84lKE9vCqifKMPLYtDwuyIvY=;
	h=To:Subject:From:Date:From;
	b=ZHhCp0PxaRd78eu0Ml66iq1uGRdkZLdxgT7mqwB0i01F1zN2ZJj3yfpzZfVQ05c1A
	 2ZMaPfoPKlUoB/7IjYxYI4itEznXRSy5ZJvQX2uHiSv6+9y5iea6gljA2cZfkFnslQ
	 uL2hDa4fIN8jha6JELpaOJyPrchc0pSzWDBmnJaCQiH0PHssYQI/X6H0R2mXWFqipS
	 d3KXm/9HulUMM0/wKCi7BQRwgNDGx1d5XJejM8I9T+42FGHcsmCLX5h2R0FgXro7Jy
	 cEYDMrp3im+q+1a2rqVPwGpVD9HFaax3TqcEWzpmqzo9t4yC3oJGiPzVkx6eaiG8tD
	 7fK44a1AD9ujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040CC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463819358.21316.13509565239409097140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d81035cb29630d14c7378790eedd58974a8f8d9b7bd28cc060cb9ff8bab25dc
Date: Fri, 08 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754638193
