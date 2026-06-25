Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5044D1D47AC
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782374254; cv=none; b=lZWgbf1OdcKn4CVmumd7LD1jEsL/RNEl399OXGx47r75yCaa8DNDYCIT6xBh0uTgSoE5ORzS+jLz8mynQU0rGgEG3XAKu7CI2utRnbwmBV68dNnXfv9SwZP+4PgtIjlZYKs97oK4BkemNOjMEQb/WfuFdPfNL/ttpc0u68th15Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782374254; c=relaxed/simple;
	bh=201X5hH2YxgNYkmEHO8+F/muVHIm8EfSjnBc5tllKx0=;
	h=To:Subject:From:Message-Id:Date; b=Ixn/kr2lCIzqKEO8bqL+8cCPHeLMEobXsalHJ5UYSC70umt2tU4gHRWkzcONMO6CTScvY8Q3UVUKV9Sb/gA+GEP+GEv5IuPWP1ODonkaoNEwEezCiKqCCSVWsWAC3jMTupSIOOSqIAaHaEFO1BSojtOSbtKm3/EQxZg5lODzRtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRekz3cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRekz3cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC441C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782374253;
	bh=201X5hH2YxgNYkmEHO8+F/muVHIm8EfSjnBc5tllKx0=;
	h=To:Subject:From:Date:From;
	b=YRekz3cDnxY8Y/SwkPIlloKRSsJUwlqrotKKcglDfxvcvdsn1lE2FdbYYli62LvSz
	 JyC4pcJlYxi3XqCFdMSp9gzursgfpMAlppukOjOVzPAToq3nIbCdk0oydYrYm5S6iI
	 ZX4IICFVRZ79EIntQ87wUNInjvEZ7zXn8+DGOYH9Q2Ltuvtry6nK0J78rf0wzHLoSq
	 4DLrew2nGqfmR6sQEHhNQkBm3DenNdFjSB+XFlgZPotu7Lw7259Vq85QTGP3lapb0p
	 3Q2QxsYMS9gPn/uEEp2bx8ZnP29gBBPyt0TruZj0X/ZsniEU5L0H+fo/wFiMpYkZmq
	 xP1aIvXQKNubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B582DCDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237425373.14597.7664088964809835008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0417cd4b621e92dc146c81bf1b3c15ae0371f8ed505280111536b55c55fc09a9
Date: Thu, 25 Jun 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782374253
