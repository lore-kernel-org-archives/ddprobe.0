Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A9335295C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776777454; cv=none; b=RHYerYAvKaz5wcDrIhxKDSoacY7f9aMyaAW0ZYQ7bNfQqZb0jCk2AAp9OYT3P9X2pz/ymCAoO6fmGUjCJoc+aicLQ4ZqMsQ+Nbx/tDdh9msuyYEbMxDyb97Y0yh1xN1dWrMd0ZWvnGzwv0YwHox8femjCYzkodgtYqcsuc0mOdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776777454; c=relaxed/simple;
	bh=8Lx/57stO7torGXlP5mabAGXU4CGGVvEHTzmiU7AEso=;
	h=To:Subject:From:Message-Id:Date; b=kJs/XLzUr2daWhTqd0l9PlgI98Oeo7rYgzogu2DxK1C+tfG72IPtaKMBrtSifFboky8UEf+eY4AMJT+DMILp+LUDyKyCwftjp7KytYiQ3qqpGe+0XCFypw2GJciUR0gqgt9XDB3iZMXqrLifbvtYMbyEpWDfuDcWHfI0POEkwmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8YcHKKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8YcHKKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9004C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776777453;
	bh=8Lx/57stO7torGXlP5mabAGXU4CGGVvEHTzmiU7AEso=;
	h=To:Subject:From:Date:From;
	b=e8YcHKKX+v8H8joZLSUWQhn2LeSPzc6kKK+31Z4QK7aKxymKKrZqyMdN16s2dOMRj
	 DywzEioeC16q23Sv3W2d1pmixma1AlTzTpa8sdeuIH96mcJcXRW+OOJDq7lK8yKNHQ
	 VxAXqfLynggumH6h500M1m3nCWr2oEi1wOZXgMlSHPk8NWIqKpQ7lHEMBvpErqMhfK
	 Gencl3qpW+mccUJPa80hjnD/+z8N58k21YNXN/4/PavVEFJiI9fTDk1Rt+cNd7qRyG
	 AVMQqJvf84sUp1fypnpv6HH10y5B8YrRewLWrpimzcPJ0hY7BYCzm/HItvaTD6LAcv
	 KoA2fHHVrTFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CBF8FA74
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677745368.5423.3924960304038240243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdab03aa02a38b25fc6092f61160d31c57f896326de9f473e7c4d5214bdcf1e9
Date: Tue, 21 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776777453
