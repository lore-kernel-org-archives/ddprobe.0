Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BB363B9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757236194; cv=none; b=rQP2kkAvBUDxZnpadsaDMZ4LxwuyELybeKz9MOiW02pn/aCS757ZVShYgEd6kvwHwPyv+CmI2iS34vXf3V35JYMxnnO/nM0wwRgBkC3INudjkFwpTFLDTwx6brIP1IiwpwVkgmNHPU4rsuBdwxU0C3uZP/NznYRR3GDwNL8ml8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757236194; c=relaxed/simple;
	bh=6UK9fPsEqjyvSCFceFGw0pzTim7GfUdFErETtRIcJgA=;
	h=To:Subject:From:Message-Id:Date; b=OwK/lnUycBjYhpz7okRgyWkQ+z9VbF8VkYdMuboe0lkvA33q6P0Y+f6a04qZFrYsxj4OiORBSdjcC2CiUGHfQYbCqFtG0XRgmKENZ/5HsFI65vk79BJ9PneFl+eMZzvw0zHetDJZ/03xwgILymQc62zwI9hzXClB7cqMQsADtbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKMFJSHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKMFJSHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757236193;
	bh=6UK9fPsEqjyvSCFceFGw0pzTim7GfUdFErETtRIcJgA=;
	h=To:Subject:From:Date:From;
	b=uKMFJSHnbvSiuxkp5JmzSl6OMVc5nWcjvk/p9pikWpX/0C5gbzewvIQVttgHy/5az
	 rQYVQ9r75jZ5wSomc7r1o5d6Yghe+KNHgc4hypklHDydwlzdE2wbeosr/aR+AZfAf6
	 nC1WtFTWNXsZrf7HUjim9g6CS3WcNRblfzaKgRFFRLec3t+KYwoRQl9w1qYnNnE71X
	 JTQ1X7v+GCgJoVCI6eTG6UQzB46DKHhiK7iOgft/cwV+KePCRYupxDOdJ4ylhuxAMa
	 NSGH6Uo8tJVkgQ6BgpUgEuOaKk9D7Rmr1a3GSTbn7bj7+y+HFR7OCSKlT8Kw5NbBRs
	 gaqmpdhKzlUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D13CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723619358.31623.491859368253612891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cf5e77053962ce5bf64ec3ca927669c31deed82f2496bb2b2bd3d560c7c66f
Date: Sun, 07 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757236193
