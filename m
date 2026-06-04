Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9EA2F1FD7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584874; cv=none; b=q7hr+IRfOVNbme8p7pJRSp6yqluHPKW+7YIRS15lfNhrzOJFG2yw6F40uqU662SXGCtkQgDKX4OYfGddUscu34lpEOdPNiLM9nc94bcLzhOiIFVt958JxfBqgfG/0EpIkcoSrG/KV/tMwz0RSda+cIZEdCgfTxH5q6xylSi8Of8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584874; c=relaxed/simple;
	bh=lJs/vzLi+6hZcvErMYKiDeG2uS439e49PFhx6l8O6YE=;
	h=To:Subject:From:Message-Id:Date; b=mfAGTZ+fYN2LGSXZV62+3Np2QS2pfqXf4rBFT5rByMP+Zdv0WXL1hf/LcTAF9Mf/jAFJAO+7uBE0iYUv0SQM9rlDWVvjj4p9VHNZ1ieYLtOxdsFt+SXkpTiv8YcHsbuLztXJx63bUx5jIlYn/ay8zdvNwfL6Ddoeww9G/VG1+Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ3syy/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ3syy/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C779EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780584873;
	bh=lJs/vzLi+6hZcvErMYKiDeG2uS439e49PFhx6l8O6YE=;
	h=To:Subject:From:Date:From;
	b=IZ3syy/k+rLGT7/uoCTZLtuSc4qmb5fe5HthO3k/fKKYeyTn4uB8nVZ+kpC6azscE
	 gSFW+QMB1gfh6LUiRX9MFCC9aGyqQE9tquBZd4DkQ7nztSBU3Bfg7jmqPS/VdBJgqA
	 1OpCiiZhsW4+A8nvPR5MNkcpcd9VMXkjfWAXV7By8j5sEOz4YYb33esKy5B8cQmLuX
	 VyjBs8agB+FUFDuaA3JSXRaQoSyVGQUuDj25uccJf791HPA/fGSknaEKyZ9gLhuWqm
	 +RNNPAthrpt2H33Gv3brB4UFsziF9LEtVkIZuiMcqg5QjgIc+GUOUu3IuuQCGlW/qL
	 wSfBsLZRusz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9967CD6E6D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058487368.19791.16164417580011057805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e735ecb60e2d3bbb774c2d83c36a0bfed7b31747b38fac2db5e042d93d92f43
Date: Thu, 04 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780584873
