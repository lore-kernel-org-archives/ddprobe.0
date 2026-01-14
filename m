Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069C72FFF9D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768418034; cv=none; b=l4kz8yT3az2qecbxbdREmEmF4NUAaCAFiHwP0kxDe30iduSjuEGACT5cLN3mNOAab6xQm0KC1E/imLP18RIKih3dakHaWeb9EQ14BMNMN6C4sAKRpMn7gAAkiaobMEV2w45uA5KJJgMNQnbZTPnVvPchlJIZONA8E+PPP4iIh2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768418034; c=relaxed/simple;
	bh=xBMJJREM0Udleq8H+GuupGmDMySdY+EMaCwsJngx2mk=;
	h=To:Subject:From:Message-Id:Date; b=dXjbYNpPcBNAK3ZwGKYUPLSJ6IdHti0r37bmNxW/TB5U/V0yi9TdN7ZJ4nEoOE6JjJ8LT6xw5bkkhrnGQDntyDAoUVmdYpSqleu1+oNBuZKfK/wCymcI/lPRVztF9Zs/uU0hoSRPojwf1jxi31fZT5f2BZDHSFOL+WEOh6ZfVK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVyyYTKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVyyYTKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8572C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768418033;
	bh=xBMJJREM0Udleq8H+GuupGmDMySdY+EMaCwsJngx2mk=;
	h=To:Subject:From:Date:From;
	b=IVyyYTKCh15baxXJN8Ub7vTfmMAMfmACFBvwfDozkRkbKwPkORhSGPLpVYKUpP474
	 e+of/xzPuxkSRgngT4aEINBZJg2x7IbSoGb4mNSVCm0GtUvtDdvUJHpKAhXIKqO8/p
	 1DRUVCjOY4cKRtJbTkOE7o4yMewACqVTpC4BWfp9kprLlo4Hy32nnIBrtc7j1AK2Es
	 lmLDoimo+SoIOzn4HgkPe01VsrYojM4nz1bKDsi1llfErmEtMYpjWsqqyo6X9J/2Ao
	 h/yZvHamR2xRmIaL1dbGXLfHHHZ86L1SFpEFqd+X4ymCmX21RgNh3/Dz8bJIb9NvCI
	 S6mDfBSlooYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC7D39008
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841803359.17088.10607787234592116329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c450269e62402ae4bd5c617dc9146e6f274bf91f379be08b9b4e6bb2c3720f67
Date: Wed, 14 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768418033
