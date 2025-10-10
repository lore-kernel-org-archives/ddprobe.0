Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23710275AF0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760093994; cv=none; b=l5yrv4bY1IHVbDTLMbyUrtLl4YoG/T2g4qs6/rY8K+QjZiYDCkKlWpugfq93VdB19CrliRYxH/fxVaHE7UCPBgzKJ8emMTBejOO+OQAW5Yli1U3PxJux1ANwNK6tt9HEatRA2bBSfw5bj5rdxhKZnx/8oBDirJaF2DlIJPFBRFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760093994; c=relaxed/simple;
	bh=GMKWR9DWE0+UT9Ko9/fYVbAoPd3kwqt2opjMJAgyf60=;
	h=To:Subject:From:Message-Id:Date; b=o58LtFzA88TgX9AEYzkCdM9ywwE9+6GcXYptf7ZPwFwghaPJ2tdHEAM/Ivpa/zCs9S+chYzbKPPWSmRwey7WS4YnWH/AyevQctiC7vvPxL59LcNrjVseWa2LTuzKdavCYC0x2bjfIOQG8IyTcYzUyn6cRkRS92kmWquxUoNj6Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9WgrDaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9WgrDaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB6C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760093993;
	bh=GMKWR9DWE0+UT9Ko9/fYVbAoPd3kwqt2opjMJAgyf60=;
	h=To:Subject:From:Date:From;
	b=T9WgrDaRv0bs63GP2wXXafMG7r6K7hz/Yfv4GGyu9DBB1ku5FkHGHaI8zpMMZ4k2+
	 7IYgswYdjD8GxPYLIIeaHGMa9FiXuNNR3BQUfGllOi9TpaoOQL72uLO0rclPRjiFoQ
	 L3Y9sBJ4y2H/Ik5P/DJERZ0JGDQL1GY9N773Qhbr9qRZ5KLWXp01Ga9RAb4f84sNN2
	 BxTkdTfj6IN2qQGasDiXghXgYvuKUnpeo44NFRx9mVHTdnjkDm6s9ZA97uVT4LAZU3
	 hAaR3RK5AB4+T5W08Lsft7udtnJdnn08pSq+VdvPcRBfSJEpoH9udblk68r2feGeSJ
	 wJGNThqkmgBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C4CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009399359.4918.8058112116707886739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a9f64adc06b63440682c5970732138dd5e6551ab5a42d69a1b305fa5a9fd36
Date: Fri, 10 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760093993
