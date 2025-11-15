Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AE71CD15
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763247654; cv=none; b=m9MUtowSYX7za1FrB8k5SQk/aUe0TfpVP/3MkOUm+wk3ZC1eDqUNimP4pG1vKh+vKeNfNQakgM1nn+y5RZxqqrhe1VC6DiCt63InUnBDQ9pxsUiorkgw6VuT0wCa6Ykg/Faw1ks37HYYyAxywNH7mTSvKJ9O3uGdgwaJSHusbY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763247654; c=relaxed/simple;
	bh=DHalPdjmHlYI5lBjTATwy6ABBOuXvACzCDsyCmjP3WA=;
	h=To:Subject:From:Message-Id:Date; b=o6zi9D3QVc/3QPPt/cT//v2T1mabl6I05bO1LkfXrXbQ6FIOeWniOZo34biZ9EEIQvF1Uk493H+ABvSpvmXVYutvxjOHkAVhusmTNtqPU7SFKc4PlHtDJtHLlJNmiyvU3rUd2Lfe7boH7SjRx0adFNn4+cJL5CvLB9DYN9XaNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvklhZ3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvklhZ3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A6C19421
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763247653;
	bh=DHalPdjmHlYI5lBjTATwy6ABBOuXvACzCDsyCmjP3WA=;
	h=To:Subject:From:Date:From;
	b=bvklhZ3wJ9INrY+ZPCBNgoTIi2b9+Lz5I17sD4L7WoaRR19MYi98wiy1Zqg/wDasv
	 /KwIIus8SafoE9+4bf3JjO0+0cIztd0iQ2WQTK+JOF6kPCbT/elsiaxpKLFj5Y01l5
	 Zh974ogdcNNxEsFAibEfO6bSMTwglmkDS9NqjJkcfZiM1hxipylMn1NRuDmGJ7Hk93
	 Mdey4BKnFKzRzbonrU7cvM6SW+mOL2iqwsBtQk5PMioIE0hX6pjTvL6Ya2q1olc1Pm
	 4x3/HN1ZO4GvU/F0w4MZ5e9950fbqHHzNe7Z+AvADf4kf4fZHPwKTb7JUsvAMifnK/
	 eYhBDhxxg9A2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD6CEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324765358.20550.14889940435866015604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2508022728e3074db1bc17263496c4943d3888b86f73b860379f0c5b31f6ba01
Date: Sat, 15 Nov 2025 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763247653
