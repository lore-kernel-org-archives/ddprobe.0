Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDFE28ECC9
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750147194; cv=none; b=NfubkFKMupJqfm63sWcGv4Yd7urMloGv200TsC0RxvLHW2eMz0yfJVb1x8p0jhPkddZuxT+sFnZHnrBAsx5dObkmS4/nW42ZHDVjK4zK9/afdAI42VAqRthx+y6kPj8FEp0gZKNNtqm9ZyAHE0K8jAL+qOTce17PNZIhzig3vBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750147194; c=relaxed/simple;
	bh=oZZ5XmCIGrYCqWP0bqGNosK4IHfAHzcRvuhmXpy8in4=;
	h=To:Subject:From:Message-Id:Date; b=NJadLY8BRsba3aGh1rLlrGoQbHYj1mxadFhMWCCkE5OKJUtLXS3D2g6/c/mcw9KHYabpl3OQr3pulGQlIvv3OGUQT1eISbNtWJnQ6J/ULGr/cdvgRVOBJFvl+qCzmR4itsXF432X8Pw2LSnA85bTVF1vfVdb6LQW9j+d3+f26bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSyXoSTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSyXoSTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAF4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750147193;
	bh=oZZ5XmCIGrYCqWP0bqGNosK4IHfAHzcRvuhmXpy8in4=;
	h=To:Subject:From:Date:From;
	b=PSyXoSTTk7sjgcDIOM/YziHUyaI2NT+336nJoLdcl8Fvmw8ydE9b/ic47YJGjD+xN
	 UE+LNd1uPMNiw3o+R3lXHO1BE7ff/cqjdJSzjQ2ACNM6rZ9KUJ/lXjn9Cv8XbLQuZS
	 FeQTvwCejmWIcVz3gtKK1fdHHKgYnBEkOcFoqzvHjwIV2WQPlYY8FMHfO7oFPMqehw
	 wqqSn1gHngt+nzUoAFh3OxAv6GYGQdje09Z7mnnH3ULT6mAZhLlCXUNBXj0mrqLB5c
	 CFMP8FI9CfJyDdKmoe6gjiKmVuy+zJDXeE6DGpO8MuIIzcUMyhlbtJpJMFAkSlSkok
	 5gO78AvBtTdkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5A3C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014719362.29447.1306013184016643519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd8fe2fc70bee87d28d909afa5f21cb6adb87d4205b4b81b8b91e6d63560e4a
Date: Tue, 17 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750147193
