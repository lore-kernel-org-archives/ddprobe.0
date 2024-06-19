Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D3061FCF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718834363; cv=none; b=NVZIifjm3aix1dXhOxIXb9nBT84aAodKi65kan8Bs8krvMEMNhHi6ta4v9i6CBUlaBJ7MtGpgTa2WQDm0B6hK3PM2xtGZjf3NWxHBltNfSclZKlyzG3xC1iwIw+GhzNSqTHd/1YQ6wJJh1P9ZgQ9/0NPRmYXFRIWjkdj40fhmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718834363; c=relaxed/simple;
	bh=sv/ASRkk0l/5rvaa9jolg9ECflRU6Gx402d5TQTrfBE=;
	h=To:Subject:From:Message-Id:Date; b=sShCTogdYJ5KUZwTcVUZ8POouagK5Xk4UFpC3gkb6rpqnkQ1zd6wK+GGcdddzmKrLCUI9OMEWPlhZ6MMQzU5Re9tl6z/+BRs5OoUxoAR4rPVaq9QHKXmqu+VeFgACjyKt22oxSFQHD3ST+n7ZzRT9J6V6V3WVYzmG8BXnNELJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx3R9jDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx3R9jDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEEAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718834362;
	bh=sv/ASRkk0l/5rvaa9jolg9ECflRU6Gx402d5TQTrfBE=;
	h=To:Subject:From:Date:From;
	b=lx3R9jDSN2YL3QfBsmYyH1ZuibdkO2yX5AAb5YWZtDwr/doLD+mDpgg/O2vJ1hHBO
	 J8La/kmN8OHwzzNBHt7v2beySH0YEpZzSSlGM2YZVr4v8zftPP/rxZSCxnEZO/dDUx
	 xYGHpECtv80Q0ZGvzDCaME4ghSFEcZ3FUpPg+F2UM4OTBHUcMnOupeaaVVzmkdzqao
	 KiwEf2XoSFcaubL0GXsEjfTHvDlur41LNcsKUT46IaA0HTq4fGvxq6HmzKa/YiYnKV
	 NjSXvAehN0Zfup/BcBHfTSUig2obUDZva6g0oApt2I0zQ3m96hHu8CJM1ygWdgYsUs
	 wnxYdLVslgAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DD8C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883436278.18497.15636150826147294115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2fe16d608d77993adb70bcab6fd2807e0342e371f1b11c5ae2c24bb0799953
Date: Wed, 19 Jun 2024 21:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718834362
