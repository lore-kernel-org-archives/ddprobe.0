Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3A29D294
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775974054; cv=none; b=iEYVMf/2+djL5ZJaxgyU4lLy3GvAfLjZKNhRmvxPRJg+0R+llokWnOBVM7mq0xDNabZ3DOCNWNkV/CHftdsSSJkabggsQm3cZFOdp8RRFSJpJjFJe1NVtG7Wn7SUI7s9AplosyoHn5/Jh3LJ3niwkkhUFxmFAsMusWRJL7xhuJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775974054; c=relaxed/simple;
	bh=YkIKWggetMqz19boXG797xC1ne5HH65NIDRAk75AlMw=;
	h=To:Subject:From:Message-Id:Date; b=qhij6SBPz4ba/ZNdN7ZNdmkS30rAnP82q+6djp/3bYnl5wMZibBYUyUTEHIHN6Q66IK75EZi68xqUegJaL2V2o0gH2MKQ9xk+I1gt9gE7tbmn8G9KaxjtvJ5yfC6Mi2xxPjCfN/Q1KFg2x1PeuOf7r6B1ZYAdmVdQjlCG+CYafQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGPrsBP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGPrsBP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18F2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775974053;
	bh=YkIKWggetMqz19boXG797xC1ne5HH65NIDRAk75AlMw=;
	h=To:Subject:From:Date:From;
	b=WGPrsBP98bZyLeFUiOaHXVqtVrAYBG/yqeHweUfgtQcYd6RmdYY30YYsaSavsfain
	 I8Exl1Ciy4E3eZJ/V5K4eP7Y9Y44yvsy8uN64BaRK33Kmbc248A5W1BoGMwd+cfj9P
	 7t6mXhQayZiEBH9Eaid4xcOqv85GTBU8fmlzsZereFcc2BdErBfhBxKzNEOJxaYKDK
	 PMzz2xpobHiF32IlYgGhuCKWX2H7vERSboSMmUOXXUjIGRpelOvvvXX02x4NYroSlU
	 i9lWEVpc8lAK/uuh97xBW4E5dFIzl5qhpOmXk+6/ot8CTWhv2dEIiTIdAyDcToNZDe
	 lJita7siJeusA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0568D58B04
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597405369.9348.6976121569540446572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b3cba546e349f39e06312da58501c9395e4866f9687fa6f67ade74845f1ded
Date: Sun, 12 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775974053
