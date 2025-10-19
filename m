Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AACE354AC1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760845194; cv=none; b=nvsGoxACUnmdejsKAPD641XfLaJ15LM7f4tD/UU4dwG3uHUYLuai5MzwvRI9jKDGb14SW4WfB6mTpOs0YykEjE4nQ1C9HA/wvZZExRa1sCK9V/CH5QVverplxVWWCd5zC3+mJHdom7Okev5Ufvy9fdzyXHROprViL4YUKpJqJ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760845194; c=relaxed/simple;
	bh=l+rwZiqbnHWXKLZ1PPBtwLrdPO5CzAmRpqHYM7DNR+c=;
	h=To:Subject:From:Message-Id:Date; b=meDgCvgPSMSDD/DxFtSSwp2KfoL5Hj4N/SuNNmEBYCwZTUrvCPCXL2vZEseOWRwVAnCd/iUqe7YKRK3L0DvVPoYqj7Ger1FUaOBBUs93yUksXRVvmsTLfxCEjKYEAckPDwJjppob0mFihs2wngpLzicAZn2Ln720Kp5zpe5ABCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw3ptkNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw3ptkNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A5C4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760845193;
	bh=l+rwZiqbnHWXKLZ1PPBtwLrdPO5CzAmRpqHYM7DNR+c=;
	h=To:Subject:From:Date:From;
	b=gw3ptkNUES793VHCFYVA/IAPyv3tvyBeT3uaoESgsiPzSjEMNwxGTyfN+WzHBrjjF
	 Fd9wF75uKV6sxH2ZbXCb1VwJQgV72R48mMsM+yTZUK3ny8nzwjrjlyekKLtiI68X2C
	 Hu4sQRZ0lOX9o/kU/UERXJjQW6MsQXJ+/JPwKlV1/RVyq8oUZbUi2vM8pe43Lp7y8i
	 DyFyYNkn6sw1jO4xPR8P6VtrTEgoZUbCULDcJIXsAq/gfp4c3ceBG04K9pDPGXY0Kh
	 V4ygTDabV1YuukianupaOkbobIljBlsVXzcBOg/90iBS9ASJ+f63VvRBFGXSpf2/CR
	 M8hURJ+sr7zQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3FCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084519358.13184.4892928444079316568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a8530f0d62f3116ef8fc5a1e37bcf51d26b64addc1f02b0f4ebf6483762050
Date: Sun, 19 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760845193
