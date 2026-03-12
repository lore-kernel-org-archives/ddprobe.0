Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F022930BBAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773312294; cv=none; b=qguFH3KUktcyo10Q3OEKkrAVAohj1QIE2gQgzio92qsFn0U4p4YeAQTEJe4Egzt7NmCeyHKBESeCaPhXDB8t1WZ4y76bNk4KtY31Ml9YC2jQTytegHiL4R+Ywrcqy2vMYcAgyIzYNtRIxQAJA36jwGvtzQGnRlsadFR0c8H1FAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773312294; c=relaxed/simple;
	bh=EWqueURtZze7axpIukPDrEwD0XelZ1SeeaQEF/Pi2mY=;
	h=To:Subject:From:Message-Id:Date; b=g/EGlX1N1Yql/sj1yc7Pjvgk96heL4gIs6Pzo4OlqADhJfHAjxV5NB6w5zn6hlhz1AXGusJEuq3M7RNkBW9BBcLhlG9rtNxfUqmD/l/sZs7kFzKaUT4N7+O0O2+hG6mqDY2qFNEsrpArTziqxSGdD/rq79OIgLzKDqQjQOuz+Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX1y6HzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX1y6HzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773312293;
	bh=EWqueURtZze7axpIukPDrEwD0XelZ1SeeaQEF/Pi2mY=;
	h=To:Subject:From:Date:From;
	b=cX1y6HzUaiMnqgbbk+aZOKS5f1jsLBeynDk6PGv6k41X7oAcXtY+3w/9oSeLCec0c
	 CU2rpKCLG7hGH0IXJue6TPtbt7Ooh+b5SXSkcdxEVIMvPSTMSvop4xoDSjvB8llWvA
	 MqOPnvSrzwXbEs3Y9xYobZC6dG2yUHL5rVOz4cmcwx6fHwWqpvVTH8Eu/N4rX+Sc2q
	 ggMs+KlhPGRCEghJTH5g4QHslsPukkS503ZLSywFP2IqPssq2VHXaY2zxQe+o7b3uI
	 FBz4Rc5KEWma4ba7oWDxoBMKrS8BtoLvZxFlgNWzijSxe8EUTwibr+OXIlXNb5JxVe
	 5OW9+naGhLgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6A103E301
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331229358.13459.18190527534083282411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a30bd5e58f60d50d51a922230f098c37cd8180be78b221a0d506dc93afecc11
Date: Thu, 12 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773312293
