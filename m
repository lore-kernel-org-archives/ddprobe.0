Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBBE22126C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765767174; cv=none; b=Fj6sxSKhogfGY2lWe06nHbe26WjMZaeCpnblDwKb3mGksqFLyhoX3w1wvcz+o15Ho54UqNuvJF7RstHnuuy0HbyznP+Nu/hbRfmuaUuZHt2yq37ESMPdJ20ka2fg2pNSH0BlWHR7j8fVybNVVQLmlM6IDjyZffj6l6aPL2Wefho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765767174; c=relaxed/simple;
	bh=3wQCgKFa9RdrMzf0bbsQEyns8i2wA2Y731DmIYj2iMY=;
	h=To:Subject:From:Message-Id:Date; b=ueRx5ZnTOrlUWAmMZY17XN8HjnQ2tL4RmrAWcq49qJgBxWp5mlpJtlf0iqyvLkYSQliyzCdksNdwFdEuhS38DSS1k5ATL6firMWHkeRnM3VtnWCGcSOf1HFO5/KUscyUbr1B74NTBCFvyD86pP5I/BERlgNXPZozxhh/hAGzh+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzHnv2K6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzHnv2K6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765767173;
	bh=3wQCgKFa9RdrMzf0bbsQEyns8i2wA2Y731DmIYj2iMY=;
	h=To:Subject:From:Date:From;
	b=EzHnv2K6yFZF37RdV86bBIbPrh8YfTgaDEU34vjgC0GYqZ1mAB8zw4aAfY9lviCuv
	 Ed37GJqcY1euPaf6I04aQufMJjh9g45IhlWlY7ivoUEaNth8ov0pW9Gl6PUxS6eVsz
	 jhsezYRBHZdZgaDcIY5zHRMrFs5Uihe3EfBbq6vy1e4S8gRL+4ChsSoTBubwUcVfSJ
	 NTtQdReC3UdoHrwH8ELL53CuLrwKXhIvwsZqm1CtB+B+GvRel8VjmXtB4eqi96pss0
	 S0DmsML42NpMCYfoVdlyKv03J8ZpO+vQvB6tqfLLjjsoMY0OaFRoma3bKJAcmkoEkL
	 KXkpDwABzVq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A964D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576717359.11391.362030726911927017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abfa1f87c2538791846d6538f59a135780074911539ff844470fbbaa8807391
Date: Mon, 15 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765767173
