Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DE815278E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736687754; cv=none; b=aOsv5pkqPGLGRR1L2NT4w664Dor6gFPXtwOnKA4QVr+rv37aQGLf+zy1QVAeIc1ftwvQ3s9pAC6xanlCqmof9xbYYD2q0R74p65pQV8LU46yYUiXIFEYjYCJ10WdUOxXpkOPSZ5gfgUme6ISQ3KzQ1tjJsrxtVsiYGuM7TMk9N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736687754; c=relaxed/simple;
	bh=HYuIHepUPrjx3YM/priGsM9n7On01dTEdMbqGCGN8ug=;
	h=To:Subject:From:Message-Id:Date; b=BUPmp1+DJy+ogLoGiFhSLcQr6USmNfNrTRDbsdoY2liRgnyZyCVhGX8vHOLeGH+ZiO7XxIEyLPimwtJNnqz+HiagoaGcDuKtPUW85axgFst05mHepTgVmEMDh3aR1z1ZKDi1JaJinLTaX+vshaTfiHAhh14biKpEG2Kvjt8b4aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxN/DvMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxN/DvMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4630C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736687753;
	bh=HYuIHepUPrjx3YM/priGsM9n7On01dTEdMbqGCGN8ug=;
	h=To:Subject:From:Date:From;
	b=KxN/DvMnphiF9mM4xcCuXJ/DYTmVK+wxeYw7KKgZ3kZAaRAHVuXV0irlaPupqjrxw
	 uvNDvlW9te4xtrhjnkdIS4lLcuQhF2DOBBUhQeD+tkQ4xLLs9a9QjxAuZ7v7howvY0
	 Jm8WCMsk6VDOvF5ZsLgpluwKyxXW0eLuZ4OOeXg7JnkbqD/Uf7we7IeSSIDD5P/Mku
	 oztgEIji2N8vJzKjzz0KmNqZHzlk+wJPSp1XWC8iscw85hdEWhxWqzQqK/Yl9+f0cq
	 R/EwL1BYCgK2NBbx/oBIJw92N0QQCZJiV4f63gkahZWfID31OzmtOndtc024VVuH0p
	 2yqiezWosXD6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB20E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668775362.7298.2095782231065585722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c1694963950e6c4b3a1c5f15b40576bb4634b6ec0f4fd7ff7ea96e8305b46c
Date: Sun, 12 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736687753
