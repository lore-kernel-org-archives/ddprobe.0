Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE71F462E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743779995; cv=none; b=P87tgt4TiqIvx3yvlh8QwXgn1evlFdHUEmREjMuRQnNEc8j2eTCPTaVeGfQ62XJqu6OKcd4etFtzi++3gu05WxvMGCSRnGHGl3noqJtMONw0bJnrxWjMd6NXgfxDEJYe4IHUuh4jZCLy4wioyLPiB5xEutll6r9n8gdsIyzF+h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743779995; c=relaxed/simple;
	bh=8TgRUP91LbTu9yD2qxlD2o5AmBEQ0VCvGy9g3Utn0ps=;
	h=To:Subject:From:Message-Id:Date; b=Hd2G4nJydUCzzGZjI0vpV1TINtPQ2zFmTA2wzKXFokZhoa8jSvN2slofs0ZzHoSo/sFToDRwMuEa+1WBVToHa/gubmlaDG9YCwEPRLhkxTAHCDtFY0/0yqAwmZwz6Vnhm2PDvgxYS6a1Msrp0WMWJtZMpp7neoXKxFlqN4bwf2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnA2cDvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnA2cDvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E0FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743779993;
	bh=8TgRUP91LbTu9yD2qxlD2o5AmBEQ0VCvGy9g3Utn0ps=;
	h=To:Subject:From:Date:From;
	b=PnA2cDvqBl3Dm3VDmUzWRNn61IEKg+aP664FR7yUcq7fV20qYDWNh5k19kk8+3gnc
	 eNTWYyoCg/qgm0Zm1rFhMCZY0BJrbn1AHx+EAlBaSxzDzJx6m0ZurHVbl7ApMNpksZ
	 P83pJDz8XL0NwyKfX9vv6Uz5XN0T+g0JkvDdr8vXsm4rj/C58JrWJ1DRf9GbT5os8a
	 7KxpEEHW/EFKZlHabGIs1LK/sdVyTyoSwqVvtstHofPnXpekro0/BGRsPgGmeu60mV
	 EI4hKiRVY0hIqUPdSBtjf8g5KZj2Y0akXSrsBV1RcnZzPd/Co4cb4pkKW4sY2FpXDZ
	 HLooCAJuO/JXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BADC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377999359.1573.5726314509445440094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c97839e7d2338f57b155e3abd12cf0fcc593c66a038a4c554e26681d1d23cfe
Date: Fri, 04 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743779993
