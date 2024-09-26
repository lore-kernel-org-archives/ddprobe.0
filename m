Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17F3FF1
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727370954; cv=none; b=OTGUHH9CXAhI49KIwc90ByPSCxyAvvlG0OYYdYRzIHfI6+FZNO9BfTdnWq8biX3LNyxFQsULDQk44PrnjEQB+tkPuJrdk9kwaxNLhEktshwbH+VOASuKQUxjykGUPpKbatOU7XDf4jdMjBVy9ydsuZgVPA46UylUt53EMBj65v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727370954; c=relaxed/simple;
	bh=Ewx+j8CyyIeZvI+i+bBpoLlOtIgvKt5puaptlcUAax8=;
	h=To:Subject:From:Message-Id:Date; b=hZ22CD1PkPi5wjXLc6wdSomKpWJooBr9tybNpuTg7m1Ajju2qJqaq/lJ29sb0Ix8pv9hCgZCrKrENV0i/TTiWbpV3VkFv97biuMIf7QbGjcVQcAV4wGsDtFVuM4kwTSgX1jlRBASzevX7Rm6XEG+MXfWBzNEFXPhxi3YTP1x4Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGInRGNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGInRGNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37CAC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727370953;
	bh=Ewx+j8CyyIeZvI+i+bBpoLlOtIgvKt5puaptlcUAax8=;
	h=To:Subject:From:Date:From;
	b=PGInRGNAzt/Oy1fDr2mXkt0BG7NQbX6z0BPIy89Z3gXGOWCrKb+LgpuJjXnHfQ53z
	 99UYCERd6/kyWccoYzhuWoKtJxBL5vbZNAu9aQQMmMGOzSeei3NHFxfBXIwmmRiskX
	 8K8ViwwCROGrPjaKQXCkFwaZUWQPzJV/xXv9GPgZgv6udMc/Udvc/oZVE36J5R93cN
	 iY6uoKE/+HXdHB9THI6IV1ExMdOjROcFtMRe/VjcKdxuaG69oGPwc1QbWG1mkBnuGo
	 6QvEzCyvVIClPakLt2x2up9EdiPmSBfCl2AU27kMQ72PW5e8MrxJMvx37fp54fnKB9
	 6mL0CSp/9u0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D60CDE026
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737095359.25845.2041593292442605488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99df4396d7269fc621ed62e71344286481024ee860b07f54347ac5c47b85e89
Date: Thu, 26 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727370953
