Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6EF23505E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751928595; cv=none; b=aehD8l/lk/qQlPZS4s/MywmVi4JMzo+ivFJHzuEe/bMO3JzZ3nsOKb492AKVloBgclxVOJT5bccOVt5kTuTvNcsvAGCEFpMqE30iNcD3l42gVi73SP+zlYeOd1FaPY/jXZ+ts4xS5nBVS0fqntP9yJzEEHiEutBmwo1ZD4X/0RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751928595; c=relaxed/simple;
	bh=NaEYTA+Q1+6jTwC6kFxf2kjUaoBLaXW1yVyxaSMayCU=;
	h=To:Subject:From:Message-Id:Date; b=TVbOXRgibklwtUa/xVp8gYoL8QkI5/q33M7fTO5NBKMhPT6zqlwGNiooIsuH0rifLeBZ5PMuhc2871UjkE8ITRqF+LoXkaG6cGCsgM0yVhXBRUE/xPhm8RQ9uJX8slrdM4Y+JRCoPxfs3L9mPsckCT3UkrGj5tIzVdh7xVeh7PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFaBZTGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFaBZTGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751928593;
	bh=NaEYTA+Q1+6jTwC6kFxf2kjUaoBLaXW1yVyxaSMayCU=;
	h=To:Subject:From:Date:From;
	b=rFaBZTGy7pPbsxAPN7/x4q+88LSfL5NRUUFfOOp36TzdkIy9I6aXUE2e5Gj/Ff64C
	 HA85kEvdlJj9WAAtPYmzjVkC3Uo+x8jLYLGISL/RjltTnj7VAzOGUDElyVTif9xMeZ
	 xN1QSwDl3Wh0mcposPBqSvVDQnx2eEVwmmajVMpadX8LDDYBtbLa/1DA9lo+rX1G48
	 6fD6Qkaf71hQLTaubCwE0dDcSzwIpCtKiTGJMi5Yu+kF5e/mWCizLo1pCB2V8TP0gD
	 CpR+wlGRE8VmwHI92scwMpLxhXGFyC/vBIfxOmmof9+ywCgnG82TwqPP7fQkKHrOvr
	 43KyzAc12b6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F5C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192859357.19192.6740444049302623294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cafd464394a440cfa02da0636228a54a59ec9e34aaa60f73df6fd24856cde76
Date: Mon, 07 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751928593
