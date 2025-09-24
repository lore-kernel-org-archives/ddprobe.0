Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3594728E9
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758394; cv=none; b=SOGRccnJx8jaSg5zSGQ4yCI5kYbTH5FmVr3IYBPwgnFopG7t3j4oYFYUmDmCibWesKr+JJo2ldn0whYUFNbO85MvrIMM8fgvuHX1ZjOQLhyuHWk3EXzBchbzrBfpth2cqcdCQ0cTTO/s4hJY2FbuBrsWtHXTe1mSu0zC8tMKAco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758394; c=relaxed/simple;
	bh=9wqxtxV+4Sf8qlR3cLKQP/HIVDY63vyN6SwW0jzhTGY=;
	h=To:Subject:From:Message-Id:Date; b=a0ph9+iDHLZPscauSCLUR2q0vTNJiFjuLCjzo3u54YdUmSis+J2DL7P5Dq0DUA7O6mF1DZnxpVpuzgiexEujhwp0nnCHAu8ffK1o6iuCocTmpHvbE8fO2fPEARXXjqu5//yT4iKAYEzgZhg0TznO5egY8TpIbP6xRBvHC2QwilI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTUDDEEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTUDDEEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA98C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758758393;
	bh=9wqxtxV+4Sf8qlR3cLKQP/HIVDY63vyN6SwW0jzhTGY=;
	h=To:Subject:From:Date:From;
	b=nTUDDEEVM7Wd8FEGGkPFZCrmsQCPooHcyvQHg4nO4FSW+15j9vDK+HLGlxdiT3/tJ
	 iRuj9j5bjHeHDOiXOFMl9tQfQcFIQBWCV7hCb621k5kozclEYy458kjFbDYzXbou+p
	 e+T0NcOSFXcSiPV6NHCjaPeMG25eMYMUmeJCHDzAbCPgstTHwuFUcnkNDoMKXDQiV6
	 FMk4dWkYx7nOigATC16EkOY5kDgNCqL+czz8IZZD0ynmHfLsN45IlmyXFejIPaQxPA
	 S0sHwvExKqzDAkSMOqrRGDIy0Y4sWCO2szkzHfllNJaHuOx2wEs9jeCIzba812tiqy
	 XUzGOobn6Ov6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DCECAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875839359.14859.1564191683744406849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a982dfac7d7af24c5ec50126b3ddea11b2980cd99cf765c646bcb065de0d14
Date: Wed, 24 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758758393
