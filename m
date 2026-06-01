Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DEA32B9B5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780288474; cv=none; b=d1TQgtmKmnh4H25yyRhfhKKJg1I9ErQsv4o8VZrC3UjMorZHWxoM0FrJukahtfCuM7siZUTn25koOuAORQPEPY1PSX10IRfYml0rixeZfQGUgoYbA2oWT/64twbhzTdILtUsMqtiEgG/xabqIGTvYhhSLn1JT7NpAswtm2MjlhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780288474; c=relaxed/simple;
	bh=7wdqT3MzUmTAeLxBbHlTTw8x+1ChP2EdukFN1NlHUsY=;
	h=To:Subject:From:Message-Id:Date; b=gv7knpMdzDAePZJkdSS61gKuEX9kjRkGP0yTJNpmthD7Rg0N1Z70hhN3As3JxjytYA9yBai3SkVE86GYEBSHyh/U+wKgNtfP159aGOosuSsmpJmrW2EUsrFHTWHrDuhdLkVbfhYTryKX1jBdpueRcJnCnUcH8aXESdJh6042Ip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmGibcT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmGibcT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4940C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780288473;
	bh=7wdqT3MzUmTAeLxBbHlTTw8x+1ChP2EdukFN1NlHUsY=;
	h=To:Subject:From:Date:From;
	b=YmGibcT6LOG6YhyQu1iZX9dY3RqxxE0en9nb560vSdM2f5FYh6F1N/7wSXePyZ3dJ
	 9h9vTaFBnpWWCMFKg5wWp24J8K0bX4yOM4AdlZbtxR0iPqLgM3JLKeCQ96Zm8tTwIf
	 +N5xjkUih1EQmyG4ddNnzxtjg+2SUC2cL6veEYcf0UYFFc8XvYzimAXQ/g9/ND266w
	 cWG4cG5z76EU5O8oATkL2DCkIkEuu/LyTFL1dsRVqfYTNadrP+Y1mZHJxW1C2rWH81
	 9BTiaoQExyLPcSYUWpS5vLmVgWYaDCnIwz5bDE0681B8LlTj3FQgpVau/Vrzn8SbtU
	 giTRy6BUfqAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AE5CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028847373.5543.595761670291876473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91c446d597e625ebd8401164d79801baf5a345c8838d4362e7ef77afd279616
Date: Mon, 01 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780288473
