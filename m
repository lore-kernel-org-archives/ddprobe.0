Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122E63A63F2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782987514; cv=none; b=dDObgSQIAxO+f7vmk6IN/n4/2qbWM+ONNOx6u1dj/qPAOu92W3M/WgxNko+clZIp4TUy9DME6B4rzc170/tx1xfM0UL8xvsI4yOABqUlnQRXqiFX7hJ7oPECtkgARc/fgxVv96X7gm6kxuNK5t6PIeXHGoTGyiw29HMT1P9FQPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782987514; c=relaxed/simple;
	bh=vqebT+z9CImZulK0vxRKh9x3LTWSFjl86CqRfWEfc8I=;
	h=To:Subject:From:Message-Id:Date; b=L61bizjmbSjWunVU2VqmjZ6gRhXly4nqyJwRFbaLlJMTt32TJZBphjYMpt3KiMkXjfrDQzziAEwqJ2P1qU4oGjuFKbiP3inusxjb5nM4x2YeyoiuO7r49uLkiLpniolnGce/Y3kUt35s126XenDSw/jzLhpH53SAkFc/bUe3OTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3cKmowL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3cKmowL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB27BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782987513;
	bh=vqebT+z9CImZulK0vxRKh9x3LTWSFjl86CqRfWEfc8I=;
	h=To:Subject:From:Date:From;
	b=N3cKmowLTbY0txUt2XNloGl9fnnaC+YOzZ7fTuIcjEVkINDxX7dC4PhoOZKl4ocyF
	 kSv2jT/8CTKNe7xOjmNHMuCK9M8GfUVP8HzB8oPzBYztVm7wDElkMsO5Jb4keoMJq5
	 sE+Xio3KfQPopdNv8u1Kz6mUbLSu200MDHjiyXcV3rSmqQSebEn4N7DHeG5FGzS5ex
	 oqTptfHZoFUISTI/4vbyzUzzzhdu1mSRPtix0RITvRI7CMDh5S9Rn6H68qCt4kmS/a
	 IenqRcwCC8Xx5wiuEHTIcdtg9/KfdrgL1yM6XRwyfwbWcW2Jik/9lPLHYLwpLBAVx7
	 9H4LWMR+JaWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8402C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298751368.5915.4372845256013182438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b626638f95c3e9d7871202933efe90ce1272ba0f48b8783603b1c9c7339277
Date: Thu, 02 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782987513
