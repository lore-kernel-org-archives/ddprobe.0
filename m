Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C4B209F2A
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744959594; cv=none; b=gG9TtLNCpWqYJO2MYVbr/+xQDvRU69OjVtf9SAnYffWgjVV5Q7V+PU7zYeRAIJF077Bv+ya5LNOyy3sUSWuq5xNR8W5PUCqT1josjHTcBMT0HrgaYNeJqtcL6EEodHJCKHueqjqrCZEJpYAgqVWbB7t+ZhEaHhiX+stvSu920gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744959594; c=relaxed/simple;
	bh=gB2rWF6NtatR9ZOcKXW2WSoONs/J1L8zKPhI630ERxU=;
	h=To:Subject:From:Message-Id:Date; b=UxAfQt+ICgS7G5/cVjFJViZrFlELX6uC2aTvtffLpSdH66n804zAM/1nNnkjIcS1SIMvOz31ET7rumvsvXGV7qnwhH57MCAUrFbmulwnOVlKy9H8tSUsgiPibJwfHj7k/BeXtYBLG3ZeMd8mYh4vFVMzgUW/b5RdXsCgxBrvbJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/iRLw79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/iRLw79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DD3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744959593;
	bh=gB2rWF6NtatR9ZOcKXW2WSoONs/J1L8zKPhI630ERxU=;
	h=To:Subject:From:Date:From;
	b=C/iRLw79tPWERVkZ8sVywcXJz2kGzWQx3fSY+fapODnlKOVemW/qsRVwvhyJ+n7tE
	 6c0yO64UKZW9wPXq1r03SnJPADT6WqNJOZ/Xff3nf9to68cwVpBum/oeqQWTVnnoOb
	 7HTq9hfLuGLDkvo1powLn3Q7vdG4Mnj6QtNWykIeTPHT13D11Y4Zh5VShXp7YYHz03
	 5GXA/oyPOX2LDrkFkLMQ23UJvMp0/+XKzkwIAsp79o7CccrNeMslkEiJLA50re5JKy
	 0/dKvM2eWJHl7U1UqfTse1wqAl8n/Jn8ewiHiRW0kCDKuOggyn8NI06lwtuUz+MFKs
	 AdXCNAb2R71VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A13C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495959363.4708.1110187744643808161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04775eae97fbbb244d8dd765a47d656b22cde45a69fe7761529e893c05d597ce
Date: Fri, 18 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744959593
