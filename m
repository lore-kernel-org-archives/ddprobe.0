Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3393633F9
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730558154; cv=none; b=J7zGkKMyMPiPJQJB3IZubj8anIipQeEAlZy7sOxHmdinl0Qs8xoMs+Fzsb8AXg/jJOkuSGFsUx51VF1P/ZcQm8Xx+kY06ls55NitoDeQkgv5bPSqvipr9FEq4BoC5Y08emIizMFzFPXMn61wSw70ATMv5q33J3CydePAIZ078cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730558154; c=relaxed/simple;
	bh=Ev+dIRHXpoKnVmchKzRUCKncfrdJpx4Mq737ThJJw0k=;
	h=To:Subject:From:Message-Id:Date; b=KsdRHeWiX857DToQ21VRqqo7RvYGQqwHEtIBLi8o6/wQdh3vmjIza7aqGPwoUIhh385MipEwbNBHyZZCIN7+7KFXNMTwU5wnwpOei1tFDDc5rFklcMlWAJIJVYPnCOK8wICH3hHDWNFiVLdC8frmfUUdF+lVdKv0TqF4AmemAQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSyAC4r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSyAC4r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE648C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730558153;
	bh=Ev+dIRHXpoKnVmchKzRUCKncfrdJpx4Mq737ThJJw0k=;
	h=To:Subject:From:Date:From;
	b=mSyAC4r0EyGKEmcT5Wr628apFYk+i1gAlCohSZpzweC8KVCQUsduLYZLSZH/MNV14
	 LysKnpO4dJIhNYWPZjlovtL5UaYUxnUtqS0LJbgUrmdzhZlWMYecUw/IMwaVdrdDPV
	 wh6RQpnpREvdgIU0RBXfRxomYBdHwk3jsxbIrcR/fT2bGPngq8hr1AyOGkXawGRvNC
	 Bgtm3x59dcHJHpqJCeCSqKD03qqvsuM8MaaHngwuzYjC5NV2OXr0t18Kgf4/HnwObL
	 cmakN5Jlt3vTJT/cOIEI+pPZeWehVVemU903ab7hz1EZ1AjlIW2JYxwjr4eAL76kEQ
	 64bSIxY45zXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CEE677FF
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055815359.16679.10934610896059707498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcc32ec40779ad419c30550696f86e77f17b32973cef7da8aed799b29762788
Date: Sat, 02 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730558153
