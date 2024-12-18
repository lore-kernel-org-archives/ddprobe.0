Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1995336D
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734495953; cv=none; b=ODsHcIwtLxPqvTsPeTo0Gk1cfT5VZkaYZRb5Ps3CAo3R+6neChE8U8zXR1gZfOghIheWZbGsMKkV+XuEyyRJepDAk/NbTsbKsJyi8xofSqPjYxNDlNGup3wiVpz9amZH40AvYne+2B/RlmNOlIn0toOeh6Wv43QJlLpMdCLC3B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734495953; c=relaxed/simple;
	bh=znA0hnquNqY/22MGLfjVmGNAUwERw4lFzAZ0dWifscc=;
	h=To:Subject:From:Message-Id:Date; b=LSSKtvAsCFRvjU5lt1/1a/Iy6bHHHAvUwiIxubN2eQJOl3N5trQR0rNRj74XCKYXtuDrzTWD1PugmNOwBhhCvFjmPGDyrotnvHnolJdllcXTQm5LvjzU43T50JhIJrTTrw/jt3NCUFYtlNCorgzMViXf0QZo3MTp3jQT6cyxqCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx5QOGUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx5QOGUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0330C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734495953;
	bh=znA0hnquNqY/22MGLfjVmGNAUwERw4lFzAZ0dWifscc=;
	h=To:Subject:From:Date:From;
	b=Fx5QOGUlBpI91B0DE4CzW7p4noBClY0LI+NHCxwbuyvPJFP9QJ/XN7qNH55dbn3U+
	 3JXAG4onJy8BfuB3L2MlTAkPS+iKm9cozj3txryekD1KuJkItEY4UIKGFWBug998h7
	 zwOr2myHXbj801h2R5MxkAvM6rTXlnYIsvbTZySkJTdcnvLHdU3v92C1saNS7AP1ov
	 HaSrcRD+UE+U4JJLfKb8PB4ZiWGZeEbi+2DxHET2XfDIVGBTDufyFXFK9oOpUb+5ba
	 70V3rvKEt2mmmhDHx+aSNdFXvvWgx/xpCoHNTBXtiGsoIQqs5CQ5QMrKmxch70wAoe
	 prZdaWxSsLoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E71E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449595359.30815.13725994892182186793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0285280ecf0ac04c3983da1f51ccbb02aaec5474957bd484b505498c3cd03481
Date: Wed, 18 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734495953
