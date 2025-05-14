Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14A2798FB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747229394; cv=none; b=Gjzeju8fGm3iwFJlPKEE1voq42OYDTDE691dtpXTWtEHhv//xUKhtYT1qfawiSr2kBkrODUrRDLKl4+P0UYtCDSuoYArwDArWV3J9Jsqej7UN3PiUCf6VVLA4WxCZOXb3ZinmU1gqZGzzKd5hD7REV19JzdtyqFBGOrWjU+XpLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747229394; c=relaxed/simple;
	bh=RE+7Q+85CPCQvJoN573+VwJlEQTAI1cX9NUTpUJdSjo=;
	h=To:Subject:From:Message-Id:Date; b=KQVsbCG4D1PEtopqWLdMiMQ44KKU0/OxONB8nIEdcy2E/mWCs5wb2SyuSbni+fFFprsOEvuiVdqi2ImDRXV3t6AtC4H/OOWWgoiPkhkQfvA6E8xVYJyVB8MSWkZo0sWIgoRbLeFpEqQmFXbW7sca0CBnU8uNBT27TkjrAIa7Ylc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AT482bxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AT482bxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2112C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747229393;
	bh=RE+7Q+85CPCQvJoN573+VwJlEQTAI1cX9NUTpUJdSjo=;
	h=To:Subject:From:Date:From;
	b=AT482bxtJK8Sk8HcQqv4LGMUOyYficCPhhEXiU4pxzBRoHa8HkOmQRbOKz5T+kOOg
	 rdJouGDzxeupPzv0siTGZpZoaw1yC2k6GqeyIRCGDSW3jFMUvNCP0o9B6jEfiYzZIx
	 NlvC1ew2LExy3H5LgqoLKOKx9ZVDB+PBML1o9KFZPpMrED9587JMCuODl2JoITvBIw
	 YAM1crANThIQPVPAvmh5VknmC8eHwFO/BTCOEgjcf7d/mkBD6BhHPtAxgmaN/9QS0S
	 HaSRMjxmYDLx0WCHtoFQakhgTD1Uzykd1/oefcKsjFDu/3/6JMW7HkiTYWhvbIk4qH
	 w0ssqyo9e76/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65BC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722939357.12946.2144382880593911135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d3f6a948aedbb2745236da9af5b3e25251a78d1a0a4836e12e214a6cd4ea65
Date: Wed, 14 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747229393
