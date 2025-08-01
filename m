Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BED1A256E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754086794; cv=none; b=qYZh/HDDRhw3miig0Axk49UcQkqKuoXdAjmq3QgKV6QuHxuGTGG63xoBH0P1Wwabh8RcPNWe5VmKnWc5H2o37UZMkNA2Ur3CwEb4LAZcFvr5oF5pR4Lc1erxVTDC8pwLHDdOLhY6a1AvaZiIPXGeEJEqWljw0ogdqDdl0OBDBVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754086794; c=relaxed/simple;
	bh=y1qWE62bvIlA8W7kYef0RU433C2jQlAuYmPyYVNNl/U=;
	h=To:Subject:From:Message-Id:Date; b=Idf8uErnw70l8NKqVTKNZxCgxpLZWPB3sGIIXw/jjbVWlslZMhrkXaF0GuJOI/+Xp/Fnr3C6YRVBtPp4Odi6nZCr6cgULtXsZV1zbgaKhhDv7WFVl1kOBpEOD7D+mNzMty2NXQmomLP6ff2SkaJdFPiUjmBu1tcFNP6erjqmE6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR1zhcnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR1zhcnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB08EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754086793;
	bh=y1qWE62bvIlA8W7kYef0RU433C2jQlAuYmPyYVNNl/U=;
	h=To:Subject:From:Date:From;
	b=KR1zhcnNWR0FEyaDNwmL1TRAOPb2RnV0LrmvXQ65QS/Up2eTK8WA3LI0jkf/xITS2
	 wYdSAidv1PNiXkySsuCoNdfJdnnpLos9a2LLAZDl4NtMiNYNTldUcNAInU2bbPTM4R
	 UYqpgckApaxWLOhceMcqmmLoNgGjhf1ItLqUosNnQ8Xv90w28So/dh0QW7InysI4UI
	 L/HEcP48FXU50MkH2wIBNmQDUMLJUh/JAXgwzUguYByt2VGFu9hxItmLhCbtiSIyiK
	 SqE4PK/FWnosg47idWrOfAo2Doez0fdDaUVwCuEJDWXdS92YzRSPXiH6+pBiCNNhiK
	 0aYNIuCWKQjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B9C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408679359.6403.16683955444307255543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0920eb31e4f15591c0abac894e9a5bc90113a5e4fccaffb1562db17d5faf65
Date: Fri, 01 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754086793
