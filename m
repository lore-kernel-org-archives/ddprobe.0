Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCAA15530C
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762046394; cv=none; b=rmkoFugaK6FoY/xYXmOcq0jK7YRBthnVPx6wO8IRvXhOIMkVc3lwiSbA/DeMLy8Alvw41Sqm7lQ27peq18HavtYZ3b6Uq5/JQguz3/adFnCICVjh8fXj3si6ikCOUymjXLMYsU06gMe6ysHuufksPSKrOcETFJ9hE6LQCFJXRkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762046394; c=relaxed/simple;
	bh=BaUM6QQUY7ewSM/t2Sy9AeSYkKmvfOU08DXt7FShl/4=;
	h=To:Subject:From:Message-Id:Date; b=DReneERFLGt4pJu7ccBO/whLnk+L3OyseZMmumxkXW7Cz252pAP/toynQPm0rfphbuS/I14Ld095oSRR6yqyFUOqlxDMJkToIzmEdVJxZ8dsguPumZHva27DXH0iUhWOEq8LAPqT/nnIdSfHVMFWho2U23LEzk0YIb1hKkYqiXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awK8wtU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awK8wtU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762046393;
	bh=BaUM6QQUY7ewSM/t2Sy9AeSYkKmvfOU08DXt7FShl/4=;
	h=To:Subject:From:Date:From;
	b=awK8wtU2Xg9qUDWH8cO36OZbFm/6axQjGUoE+7ZPs/mGqGdU7qBw5BrHO6IFXm2Jg
	 a1ud2MpF0MroYhO8+Yelk5o27eCICIwZQxpdPo/B0iMqUMehK6YBuzLRiI/+NkflWF
	 h4IKIyy+QsPiU2aaAGjYouWT213voisXsaKXLnhU0tqGK+JoAG+KmhNVyCNjHMpmHw
	 iKzRwDw+F5ffm5DKyh2dUBYpi7WCAcY/G0S4ZUQC6OoVVK+Sw79CgzTBJPU895Gmxr
	 thfHg9ipFikW/I9rJnLH0f6uvgE6iBY/RwipwdlmPvXW/lG9yrsfPJY9DjTBudPhrY
	 7NZxCFVd9CYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FECCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204639358.30393.8024472649702222235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8076f9012fe9faf875a217c783cfa9e65c37b42e8f8fbed87b336ad418101256
Date: Sun, 02 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762046393
