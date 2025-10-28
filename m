Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2084B2BE033
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761644994; cv=none; b=sycePleX1Drggl2UMOkmzvCJPsbIaOvsnwwxtM21Tv3Hyw3WRGRpty0ST1oK/X0rT+xhwmiCNllsNmVTvxFqr8U1EshLfE5BbRSQgdgK7JIZPs7Rnyz4boRbpWNB03W0ju6DZVainHxbA5Ov5BnGuyjdUmpId5IUp1PAKMmNS3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761644994; c=relaxed/simple;
	bh=eqYdN3lHpFkbKHHnPnNwtkRu2EQ4oOUVZ5NGMFzPO94=;
	h=To:Subject:From:Message-Id:Date; b=lzmmAqnW+owSGXCerWvG0tiivJ4WuPufq+ip3GzVBpsX6Y/Th4D/6cQPV+TMUcZaNd8iW0CX3K7rZCRWXvmrnVmqcz05kW5nIU9D/4DkSxX9AB6rtT6bX3UoNQwVQW/I/yg6ytPcn/ZqR00jEa4ApQPXH1aIOkKE72ofvW+fAzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUJOYHCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUJOYHCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ED6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761644993;
	bh=eqYdN3lHpFkbKHHnPnNwtkRu2EQ4oOUVZ5NGMFzPO94=;
	h=To:Subject:From:Date:From;
	b=sUJOYHCbIQC4hFU6r91huw5uJ3epTc10KuPvtcN7t8EKqFPKvDxbMTigbFgIIyYpc
	 w7rpUydyg90NgxZyp/aNlmdXSThdBG/Z75pC6XCiEmBAP6zdFsOqJGa7ijpip1bzQU
	 qkrloT8OxUew5cskKzM1fbF0v+IaSYtrWPz04rTJEaxzLMrW1bjvsi2wFSgBANM6Ks
	 xTNKwNeHIUheaarmADp5O2U1K+t5OuM/n9fZrpfWU/6t7VgAo5kJqXPwfvch9ppnww
	 /krZcdq3NaQ7GihmIhfGwl+Xwzf33z6TmHnk+Hk+aFgihSXCsNENQEP6JYwaiZ96E+
	 x/uHHTHsS72Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98853CCF9EC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164499361.14282.15480018673732066113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678a4b3c25b7fc05ebc929be25ba17d6a7395ba476c39605f94066589d8c0f39
Date: Tue, 28 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761644993
