Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CF529B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728965154; cv=none; b=Kt0CJchb44AeZPtYNDHpp4z01c/c+MSeeHoGirwmjmQ4U4Gpx8edYPriT+Gi19P1GHYVs7R0dG1+HCRsE1Zvu7uSna1E5Ltp/LCEf8/4HGNuWZ7QLurPmdgDqMg89qFNNyKC+EthPgmmQRO4xk5CXf8m7RzCvpHyq3znZFtB09g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728965154; c=relaxed/simple;
	bh=2Xfls1xBmA0CvXr9JJCccLDEf7d8fHLF3PKEoRQr2c8=;
	h=To:Subject:From:Message-Id:Date; b=g2C1aAydXA76gQ3lHQrnAmeb5whTcU8QP3/BdzphdSzfc8WLUZYttoKNegl1818bveCeE1SOZxL9JpAf8ScQQ8M/FEgTFK5JzJxOzrKMKzPnZMGSpd9LGLW9aZuAoofmZ8SMX6WlhR0lqLob/9S32mt9nEH1ZidSwGkaQ/ctzj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP6a4haW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YP6a4haW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD9AC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728965153;
	bh=2Xfls1xBmA0CvXr9JJCccLDEf7d8fHLF3PKEoRQr2c8=;
	h=To:Subject:From:Date:From;
	b=YP6a4haWN+4s7wexcWhKmJ9Z0KT3D+3QXnHoZ+6rCvoCqJdDS7UjIbVcnc5XF3ryZ
	 ZwcffoAVlgJtmflSjmBt42paJrXNq6fNy9lok7q3kAh/XPVXyH5n3h33xDQ/UYMqvb
	 IfbDD3Z9cmkQHgJ+0re9KGZ7E17aMr+GcOAr0HXCp0p0zWp5wbwFWWUgE9onM1S8zN
	 RVywaOPt9bQKI1o/Y4Y4zroVz55wbW/UIOrjUUVCJE8qjFxqWo0LLaUZoU6mayTT/P
	 Vn5ZeYRouTe5aXGzDwrTVJ6s+s+4OZqVZqqtO3FdrdjQ/7f2kChnKOWIhbIYknvDf0
	 EaGSC9RA7ei8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A66BCFC264
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896515359.20014.9995771880685910005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797b4ec339c27e9df7186016e38af0142dc1647c60976d4caa81589c36a7fc11
Date: Tue, 15 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728965153
