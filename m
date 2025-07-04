Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F00B2C15AB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751630994; cv=none; b=IDMQkJpCSpzHlI9hVNEAh3UK7tr0xP67w/pFRNFPMj1P2/rC8cD8I4l/RMKPG0b9Rbp1SYej8AvUbnnHh7xg4VBF61QHdTVdoP7ftVGavfQ5NDdgB5bS4Dd3sIKdesJ4s4lAQ1g1HMEL1wVgii/SUmnQ8nn7JbQA3GAXQjR9MZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751630994; c=relaxed/simple;
	bh=p7xbb3LSxor5TdBzXmPJUYYSrAHAv0Tr9TeSOhtYHnw=;
	h=To:Subject:From:Message-Id:Date; b=joiojEUgbZWyMY/+0Rf5ar9KsUPfT/JKu3lmOyFH9pTDmLNV/vEIY4eSC5/mRgcZEKfknXuLRp21GBgUYlMMd0G0IyzkITlLPbKJZyfAVo/AYhy7iFWNWKU62Un8fb1Ic2Fe8enPLWDEk3r8QCK0WCGLeqpvH1h29rxsC8tkMgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIQ3XOUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIQ3XOUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751630993;
	bh=p7xbb3LSxor5TdBzXmPJUYYSrAHAv0Tr9TeSOhtYHnw=;
	h=To:Subject:From:Date:From;
	b=IIQ3XOUSGiPgL9KCmzRGIkqc48wLyDon7oblU2WBDLUGQOsMFjg1QmkXGu8PGc7t+
	 aE8mxdk8BPYQKjjn5ltkZcM2GFWeJ0ZfQ7VjIXCdEa85FBH3KWThbJuVlGSvAMWxbN
	 j1AdPnAtRG7MSn2LZ88DkCfZ9h8yn3T8HgwbHG0SA7zLkdCxsk+sXhj3KMsjlIwH+K
	 6f6zYLMrujTootytLKAA/KyU1Ck1xk0cB+AV6p2Y85UhGo90uJb/4OpqcqiOamNvh8
	 VNvfBOaXpZYfZuoStcU72H6gHN45lgVg/d7b2Dmlyt/eg8eZjdOUkOH5E7i1UcP2l9
	 sNdiokTyeXMYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB0C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163099357.25442.14125459352313494656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c7b2ee672712fb1fd24bee486baff81fc271a2aa885bccd62139118c0579c4
Date: Fri, 04 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751630993
