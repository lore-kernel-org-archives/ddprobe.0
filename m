Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7272A8BEA
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716071543; cv=none; b=TxvkP9M06ksmxyF0rgUhCn5pMg9sfSinPEAj1kC/PgEqNSYQyfZGHl8b1AfqP8/tIFkWBKCew4ITf+favjUTzcKLfs05WV9RQjjxA5IK8NC3o9+Gp2eVm2hCw3TGneFjvvwb5v6HF6oOTF80TDumk90sAuyrL2EaHAFJBKXtdxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716071543; c=relaxed/simple;
	bh=6a4FiiVSUS86+O3BBQ4YzcSWhvXjw71KJHTb7JoUxFE=;
	h=To:Subject:From:Message-Id:Date; b=QkTzHM8CUaxEeelYaMVs2LyYfYaSdZ0JEaDZDfGzCMq0S1BLO3gLsTU+Lq/l8B4AvjnAJ2h4xV1Uh7Hgy6XnZlExSLXX3pvw5I2KFMbPeuJIhFA4pmyFd4qwdfsc6ONHxpwyI8heJrFmBhH2XkZTwy9+wN+uENXW8lM8eIZ524Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIxv7DEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIxv7DEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47DDC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716071542;
	bh=6a4FiiVSUS86+O3BBQ4YzcSWhvXjw71KJHTb7JoUxFE=;
	h=To:Subject:From:Date:From;
	b=XIxv7DEFvqt/auHlo/0hdxjsxHS2rKHKOq2tjOzQkfUznnHZbAH/Y0XM0FdgEdUuT
	 YkhUFl8IHANWm1k6BHtiORtc7kc2Oiho+UFtxytafeMgyCnSYkVF42RX3B3AOeQvmG
	 gPuo2YCGK+zGLA0hsathiYnCy1y1++OZQoLLmo7mwrXVRj5cXLESUzJVHgEmLRGWvT
	 EbYUMl4fKw7E/LPdq2pYEpmJQyNqfs3bRHipgdYU3yTn0EJND6j6omt/OU+hP2CCnA
	 M5ciewllyGa97vVMVgECw7tBBeSlXQxLSMZNZv07o0+tx4bhGzN6u4QWtKePKYs5ge
	 wkxqMRuXFsk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C918FC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607154280.13564.9889632301536458074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1659f10b365ca4940d437b09ac1428582bd3ebd4a4951d969776eff013d3859
Date: Sat, 18 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716071542
