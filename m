Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3941DFDB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736198154; cv=none; b=mMf9EqJB0ntiiSmZGrp+sWJW5qNdL3p0R5OuWMURHNxlMuXFKRE9zCWn7izzdza28d/3muPiYxjLQMCrx9z9MadO0VPfvhAFCc6KKRIj0gwwWAsRyuag1WqsWPmcXRUaoiVzi2+a3cxVYQqZZ+IGLrznKdbcz1EXrvVbV45O30s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736198154; c=relaxed/simple;
	bh=g7rPM/JialkdlZ2bOXidYw45IvXRsZ6zyN4Wscpbkds=;
	h=To:Subject:From:Message-Id:Date; b=Z6BjUsYOtzjFoSf/1O5IjA1MEV1lnh82sqKnQLfv2ElDiHjB04k40fUE+2G+TcoPNlyzjwCj0B6T6JtB6Gq+Qwc3vjDVDuci1qC/bG0pCilOaSfnrcNdKItnQBdjNksHaW2jgvWzmYRepRuil4AIK4jhxtyXxdi4v8QMrd7L5YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4pQS/ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4pQS/ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB899C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736198153;
	bh=g7rPM/JialkdlZ2bOXidYw45IvXRsZ6zyN4Wscpbkds=;
	h=To:Subject:From:Date:From;
	b=p4pQS/irnJBtsc2SWQMsLGDyYarS2p9CJDFI/yHYbCeqAAKPXP3E7m7uHDML43USM
	 7ma0mNWBzwCfyE/jmjmN0qk8NwFLACZgNHipDP9yHtA6dFdwneYbJ/IRFlJ58FGRkl
	 SYjm8o6nOk4AbSVet3/tykEWmXYfhwOiDemCW4W4HT0LNZHj2cMSvOuLGwEmn6dWp+
	 Agmr7XOtebXiFF+h7cnzFRfMDkzPgZSmrKfcERdBPZT5L5N3UaIhq9dPWO87DheCqi
	 M1PnaEv6k3b697+7j79StmybbTHT+ZiH1HxJKvfc2CnDxFR97guhr/CvVb3bsqMsMe
	 fIHOAviBuQz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FECE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619815361.30993.1163088942493770713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2fcfccf85fb61aa17d2fdd74503560274ed1785e5d640e5374dc7d1e01d92e
Date: Mon, 06 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736198153
