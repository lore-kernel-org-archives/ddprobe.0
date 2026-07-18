Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF411FC8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784366314; cv=none; b=gbEmUR4qwljqMCZdhtTlk3vSvTlVSKQArB+rN09j/BMg1cFAOICKOa0PrPeEtoRp+lJcmx8t8lOUp8NJ+DVUlHGk36IW6scolbEOYhMjUMMYmNP3EZmLG5A3zidgW0E4LnjGub0obIRAH+EhXns8kjQTivImzuiKy4V7qbmSFLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784366314; c=relaxed/simple;
	bh=NE8Res3UHq4ZmIyDYZnmqMSstvav6+DKiUEn/2UyaVg=;
	h=To:Subject:From:Message-Id:Date; b=LHf69pdmi0iWMDhqrsUpBYtwv/I/Vttgleu+EoWTohYh2/Q3N5/ycUjW6U/RTgENPafeLshDamkjnJC0onx/WmB29juXy309EliD3H1GHdIj/3GOAwuaKtzdJhL34p9prHbavv5Jixa7dZ125JykRiHWkTtL2evr6YY8SsSpYpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnBGda9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnBGda9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48142C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784366314;
	bh=NE8Res3UHq4ZmIyDYZnmqMSstvav6+DKiUEn/2UyaVg=;
	h=To:Subject:From:Date:From;
	b=UnBGda9sj5TSB9nSqnXKgAze/V6ShPkV70HOSC+yQ7r0A148MTWPavCaPhVLlqYXS
	 +Bw3rsZn1t7jwNq1Lv16+AHwS5Nrgc5MsvuM3muJndUj3VZd3V22HrIqWhntiJopMh
	 eYZJ/gZaoOLu/r1/uJ/EEF6Z4FO0/yUl9FQ8EfeH/P8qNiBYrxomCOIi5rbtFjO2/f
	 wwxGADJBTNGbkrKyoj22iLXpAiyjTnDBhLwr8LzkvzGu+Ul8VjblI5ehTs7DlgG/rE
	 NJfNizCwxOrAKhXQK+vMleO79nfEY3Vs/hQIPwOaVYELdtAO3k5l7BpWyZcX1AnI92
	 LOAimlQHcT3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7FDBC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436631392.29178.13126262770162472001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046f45715f38fc7ae5d95618e3a65a7f4c24a2c3ae796f6d31808fc0df3bbfbf
Date: Sat, 18 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784366313
