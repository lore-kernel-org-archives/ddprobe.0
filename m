Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5425A433E74
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783245514; cv=none; b=Rl+HYt45ZxDB+Rasntge/QgmlJswaVVhc59J5mubaRWAURnzVXOXFmGnAiu0fha5w8B0Xiwvt+VjQw0wLg1nDpgzqqoRuDXL7emV+6fZHsLacwl2FpHlAnpYCtMWuP8fDJKOaK6r4VzyOFvkRWiPjRuHiWkwykJdENNExjiqgTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783245514; c=relaxed/simple;
	bh=EMKSu1DVKe6PIglXuDfpEyzI28LryBEiOflSaEIe3Tg=;
	h=To:Subject:From:Message-Id:Date; b=UEepQcc4NUS1vTwAsZgJ2qT1eLHGhEt6MZDuoB/gU81KhFXbVb+VhDkoGfxrLKMJCt/A6LQSR4GylUDPHlLqE/s4OXjsEnNdxxoV+4peb6W+qH4ICEeHrGSixwKM90Q48JiSpLR9MNsbA0fzloNqtKERPMFcg1AOJQkyQTQ3Qik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMVK/Qai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMVK/Qai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783245513;
	bh=EMKSu1DVKe6PIglXuDfpEyzI28LryBEiOflSaEIe3Tg=;
	h=To:Subject:From:Date:From;
	b=sMVK/QaigkDYhEfN8TLLdT/+uqbZuWLwxpTUKr88G+NOZ2BrlfFASLYKjqCVsrnfV
	 j9tSG04l9Y6rlOQEc2sU2rpGl4Kec32yauYSv7ezPrWA3lfo9G5KToWiQgrdMtkGc8
	 2uWQxqguLDbx/GGTuco36xlbDzcIIseWICItwmksVMrh2CSOJr8fISMqKAuR8kUVPC
	 pJ9XKmYWZGmoDehMoqkfzYhkHLXcQqzddIV/Khb6/tuvX0DxobTI21a0nFdU201AP5
	 Y+URTJ3QJpceevX/SgwKiWkswGrq4jl1ziACDxmYsSGLZlfI8wMuFHEqOtD78jgrT+
	 hdHjRu/yeIz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE682C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324551368.31783.6452208420881486454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d294f8756dac46219bb672edc906072772ad9c60dbb8624ac1f4c34d0b1848
Date: Sun, 05 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783245513
