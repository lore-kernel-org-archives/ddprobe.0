Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB784A05
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737812154; cv=none; b=KlM/SXqpiM/us5vsppNm4qkig9SKTVpnKnxuoOWGa8ZptCxFC/XISxt21JH5Rqkh2PWw9dLpiYEBbqlr2HcZeorncLRyI63oFC1EEvLFUGfLEYlH1M5fGsbVhTPpYNw6RNB3ckn3NvtJqRZBm0DE4RH1sp4qg7VD3m5rI2DMXO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737812154; c=relaxed/simple;
	bh=Kzh9e5O3UQSJprmAacY7i2GHj0zLpj7jfH/F54ckSac=;
	h=To:Subject:From:Message-Id:Date; b=WzLQZGx4r+uT+lHZ2w69z/w+H9LRAmwuJBV1MkV2TB+SnCH7xgD8u6XUrxTqpaqQajLhRqRSZO2JOVpOVcsIiY0caztwALO6cf9U2v8slmv9AgRAT/niKRxFvQ1+Dw4rjLp3lq/72pbnrXfOW7iuofahnPJhT7jYKF1R3bkyQWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsw6AygW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsw6AygW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5F6C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737812153;
	bh=Kzh9e5O3UQSJprmAacY7i2GHj0zLpj7jfH/F54ckSac=;
	h=To:Subject:From:Date:From;
	b=Wsw6AygWNZ+6sfVcTG1JkH3yNLrJe5WbduTakZwGW7Suw2BVm8K8ktbpdpzs2vzs2
	 hUv6yBNaHY6Q/sIPr6D53DdVk8neH7LIVOk+0V194W/zHjpwVMJqXidn2IusQtS+iX
	 O0dGqKPa/DA74x+0epeeKkLl1SSutgYnZLuT2KFWwpPxY7T0mKE71lAE+l97gWm2J4
	 PZj/Qlj8J+jyZ93q+FndpQDPrm4CwURiON6JqX8g4LMfaGPFEgblrC6+8LYUKvbHE/
	 TLRddHRWRH4jenUpnDQIanZutjskXgk0vY9WqTMfc9jfIziEibupuVwVrOItJPPKWH
	 M8B8z+dic5Djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215EC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781215357.8424.13859639873637123713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5703a703acb713af4c67085eca932efc828e40a261cca12c1302f48bfdda0987
Date: Sat, 25 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737812153
