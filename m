Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C192ED872
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776999454; cv=none; b=e2HUtUQsaavE319pAHK+QzOKuUapLYPXvbIAU1Ka4k+eQvn8z/XrX+OIvcYEUhY4Mou+FcwjztiXEd4MHShUtjNB45nFuyW63lQQf+Bgl//LY9SSqZFS8r9m2HDviskh3M8kcACDkiDLHLMiLQKa0DQHTKnFBKIsBO1Y1lBVrRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776999454; c=relaxed/simple;
	bh=2ijY0vb5kDeQx57uQDgIynVQYhEI/KB8mB1wpaDcRpM=;
	h=To:Subject:From:Message-Id:Date; b=jn/ZiXEKlfyuQt2cqnP1H0ZrM9N+ottpl4BV/8Q7flirkO/fT4gw9tJo5/2TcP93lW9RM7l8ijW2oWuWothy5Cm1OGUAaeTHb50VbRlmo1SNTc8gvpQ27680fLDKQgOV9Y7cfgWgXdPsL6IX5e10Hz6BXxfMIYSih5nK9OJUVnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E27lJ7MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E27lJ7MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CADC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776999453;
	bh=2ijY0vb5kDeQx57uQDgIynVQYhEI/KB8mB1wpaDcRpM=;
	h=To:Subject:From:Date:From;
	b=E27lJ7MF4baro76Ez0Wmt5zSj4qoke9QXXE72gB1zyx17XWspLjhxFI6RBI+kMBN1
	 Zo1kbn71JuSEkHDKvRlhtdh/9OmLmMp2Wv9tjjXpaUnY3PUTDSn3hVjBIFprdos7A2
	 k/iv6mLeXWlBBHAFgmg0hWrNrBxU5XheKS0wFDx78TWCL5t+Fp6eceHYY/IRuNwk8x
	 ESDJFjla4Jt7U66ZbVInHtwlqoWJZMdCsHL8HJTG7SBTH5vB9D0nS0la7Q1Nw2BvDE
	 U5peuNR25+5rm1euBG50e9SKluoL/xGt67TUe+eQ+OxE7C1Gb1nbLidsx0nLrdDwjo
	 JJwF1RXiS2eVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970FF34C45
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699945368.3881.10792036314310947231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b7fd1679710204c6200ed3ebb8c201e48fa7ff766042324f64b1362c5dd832
Date: Fri, 24 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776999453
