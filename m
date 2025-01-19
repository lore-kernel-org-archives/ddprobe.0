Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4369E3F9D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737323754; cv=none; b=TkpktBKlesInJeaxB4wkAdAAeJQo8Dr7yR9HpcQKyK6g6aAupfeNIsVA24/pflFORhZdMEKuw1nWSKjKpJ7nj+dYMjwHU69zLVUp+f/fEOvEBZFLIi0ICyR4FVBalx0LFCE81+zV3//Bq8RfFgKN+WRrjXNVwcbpL7/rBLWiNws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737323754; c=relaxed/simple;
	bh=Q/Ai485OVpY2fGJiSO1p50TbrEZ8vCNHHTUAh6vIv8k=;
	h=To:Subject:From:Message-Id:Date; b=LRsduaWxc2j/09R+BZUZ2LW0i3Rpxt4w9xaEdbk9v+Llml2Sy7HP4/YBvaWO+vVbqgCwR9Yp73y8r/rC7y2FNozwyLxALaK9FzT9r8DErVbPrVH0BDg0QAJSxp/JyoOvxTCcG0gPu10hWt/ZwTRbo4zBlWDNF2uYad1TQGFvD58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvC+yuxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvC+yuxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B269CC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737323753;
	bh=Q/Ai485OVpY2fGJiSO1p50TbrEZ8vCNHHTUAh6vIv8k=;
	h=To:Subject:From:Date:From;
	b=dvC+yuxBT/owGR21BZuO/JhxnSMo1vWLoWxbUbGLmoOILJOtNck/77K6LOIQiNsNo
	 icCgF4bmO8MKRY+gHido8NYVIm+LuPDFshdq9gbgt/UUizqYcSfd8IeAUATkXy6nvI
	 yK6mHz18Y1bcoSDpjiNnCNAr6os3Eth11MgP632ELUhjL1xYVZc0sNC8pGB2PC7FLS
	 P7pQePhWf+l6IML7+AC4cXIrI/7CEm/kf7M9CHWSa96HbTOGIvComppH90q20KyK3A
	 Lasrsj9U3Gjc9eERw98NC4fkqU/TlhsneJ9Zv1UBRpP0SsmVOn0SnYYOhKShLDzBgh
	 8l+X5wigMTt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E969C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732375363.19996.5526151217375054460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb09eb76dccb06c1b1344674c84642dba8976684e7f310fd1cac44515ca4e3ad
Date: Sun, 19 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737323753
