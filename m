Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3046B2F4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723932954; cv=none; b=Fx0mW33tdpmVV/WPgHy4UoFhxj7kQEF/BYtOP1cm2/NjtBT0Zr3bz2GBH/TvOaRfS4vIseTqTl9o/9YPIzSfVrc7VrMaRGFj8xAklTlzGm3lH8DV521t2skjeLcgJXEvXJk8wIb/MtywlsF2eaHBslN8tlSWZJgNMHAsknDp8Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723932954; c=relaxed/simple;
	bh=TyQzrEE5Qg+ipIt4OJ8U5FUBtGU5SX9jyOToNR6IHlo=;
	h=To:Subject:From:Message-Id:Date; b=id8qKY2z60lkfOP5Z/U2Oxb1QdKXu8dP/mi2jKMvC10O317eV+hVTgoAe5dtClGEAdCBG8I0I4mptigSPoyK5zg0dCyBX5aNxKxoEYyAGDkztO638yfRoOIgstXvH0xq+aezq98SlzseO1HiRm3C86cQfrZQ6UVvRy4twX/8zqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DicEEfnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DicEEfnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3EFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723932953;
	bh=TyQzrEE5Qg+ipIt4OJ8U5FUBtGU5SX9jyOToNR6IHlo=;
	h=To:Subject:From:Date:From;
	b=DicEEfnFaBqEEgfFR7aYOUhO7dJ9yl6Oyahu+l2G4mt6jYXPjlnOR97sLIyqTASlQ
	 D2/Uz/R4wYeImD3XhGw8+1/usK6fiJ0w3VkR0wTmXJGiblW7vJB1gRjSt9iG5XM6Yp
	 1qCoj4tL/uaTHxYNcDMxS1eh19YqLl2P8VWAdm8UL3gvUW98M48hx6KiMo8/uyLg6D
	 f0zZEG/0Q1I20OQMQIAzLpz4HDQlqW51Qcv2e4J0fEzF6CYG8Bcl0vTDhjNtW4HZij
	 dBEwK6P1IESmhsi5Qa0AJEwYyGhGGFIdVFjHAXlIcUuiQo8/tSW58VT8RGey1xPVEe
	 XnPJaDwBhEOGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B223C531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393295359.29334.8687399464639820522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701ff8ad4bb45ccd66ab9c353656b477b93f1d5d834d07871e2e3f4a12572a3f
Date: Sat, 17 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723932953
