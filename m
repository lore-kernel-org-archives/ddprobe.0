Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077471537A8
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727342154; cv=none; b=pikGMj49aGKZ2x+MbWnvC1Tt+i2PRjSW9n/pVnlIqVZo1EOUlTK0/giaR5lrAlRVeYtBrzfrQroLRkxdq76KGpzZhhoaYtCqY+Ei6NqJbW/YFbT1FYC6GORz5Eff+XCdo90f4ltQUMBLvNxPsI/GwMAbqruzcz/IBD5W3hWdSWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727342154; c=relaxed/simple;
	bh=yIQ0nEK9EkNxXzHvPnjEghOUdha3hltzqfxXAnmXaOg=;
	h=To:Subject:From:Message-Id:Date; b=EBgYrCbTajBZyp894Q3QBIPCBzuX0zVYyDO3633VnbzX+k23N78MAirIrSPzhMX7BoJNgMsGKUCMdQRbYlxb5G5yVWiwek5XzmW7Bq17wCuNSrmhZp5G0G3pH0cqUeotbAS2oBhtajRsIME+oNvRc4rum3tzOUcGZbyxy/cslfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlXuLaPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlXuLaPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08EEC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727342153;
	bh=yIQ0nEK9EkNxXzHvPnjEghOUdha3hltzqfxXAnmXaOg=;
	h=To:Subject:From:Date:From;
	b=XlXuLaPfrsGbwdlHe3VyOwsQ7iQfNDh2UPrOzdQhb2I8sfaUEPzr4hNrBx8rscg5C
	 uUT4YCJ/ZnJi6d094b0eB31rVbEz8kqJnBUH1AIS1NXuobpRZnJnzkwXf3G1fGZzsE
	 7VRmqHLUQM4ic8yA3fw8Bp2upTqWb8E5U3JWn5ynvE8tgaCoTG2sOTtAwZuhYwO+TS
	 XkpSt7XD1M5k44AWIVJGTQK/5adv6ltXI7hztMORYy/HwEYtJpQv0mtBBF0WwXyCxJ
	 FbeDvgP+hewVP1Wgu1ZnwqOuhMwSC+Rx9P9LWuV7yxtg13HTh2GEomFliL5C6Gs+bW
	 0SoGKGe0wWKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADACCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734215358.26914.5384119213477121977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6471b88a74973fcc528b9f6dd2b4dd424f1e79a03589a27be81c8c3b932cbea1
Date: Thu, 26 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727342153
