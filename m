Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222181EB4A1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722479154; cv=none; b=JX/+FCCjDZ5eICer1xmw5yWuPhkUUz7upCZrMQbuH73gWJLYBxz/lG86PiN/zhUgMEswLldwp7YmZSWo5JQoBMKE469RwMScv/XO5ePSpmw+SsM9tYk++pMSzxpM4z4i10bJFC7StlrT8xTR3/OvTrGPvSV1DN77JtO/8duURUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722479154; c=relaxed/simple;
	bh=NRU2uXqKoSLF+i5Cc7o6hzrbBHg6ZuprQnheoBt0CSg=;
	h=To:Subject:From:Message-Id:Date; b=T9y6MnR4ZI3tN5ZWPqx0t5wZJdsz3JXEs40QYronS/T3Gt99SLK6wIb7eG9eFlC44HT5n//kaUOFhVWcz1DnUM4jWfIhka192+QmQATN8HcrYzocXmgsOQHBTlu/OQRzp04kfe1hhDTELVgJCqS9OxT5AyR720tL4Iw9FTpEyhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeGuTRrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeGuTRrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B078DC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722479153;
	bh=NRU2uXqKoSLF+i5Cc7o6hzrbBHg6ZuprQnheoBt0CSg=;
	h=To:Subject:From:Date:From;
	b=TeGuTRrpWAakBKLq9iTZ7AZ/nb/XvzgbU6Lf2mI1JRwgY1pPW9JD03qUmrc104rdM
	 VLOhROGwIon1v/kAT+Z1JL+Wqrkww8JDBYPlCtgBGtH36DutUjhWO22ilYtOzRRLqd
	 /U14h+KuaJZAb8S4rvDCcuQ5KbFrEdTQfT3hRRja3rytHDemkkgiQ+eSUXIn2g0heO
	 O4yFPlUit5TFc8qLBPdIM7VehOxpngQ4Dl5YqrzXLfnqdNVVd02SPj4+Iriq3ruVIS
	 xNVl34kZvjY/sxq69DTH9CBDQD5EIEp4crkxARv7rmgc8rlZw/RnWM+XKWeDnscx/J
	 o0VK+37Eq+jew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADBDC3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247915360.14776.17622339379337804664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65bf208c496868c82a57cce11d98a7cbef2656d7e8a2c0e060505d8053bf22c
Date: Thu, 01 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722479153
