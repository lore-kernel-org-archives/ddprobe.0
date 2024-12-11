Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314D83D97A
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733878554; cv=none; b=FbJujNL1mzPl+r9KUCW4eMHtZ1eWxV4NiBHEsqb+utgoNEeOfIApqmQ5+7eX72Bh4dFxuYlSo3B+ZCYafu0+xWLmjXYrZHWP7h4XUSKyAPiRKvELTlyB1J9H0nBMAGF3f3u1FWhuq/zfSVeHQQxiquTLYgVwrrx0885tbyIfkSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733878554; c=relaxed/simple;
	bh=wh/fkVOe8XB0/7/7Orub24FzHcS9Z4x0337HKWnwCM0=;
	h=To:Subject:From:Message-Id:Date; b=GdH0rAuBzO+RatABgehhKtGGePY/4KQERSDh/MHejfki7Y0iJxo//flCYpf7/OvEreG1V0LLnNq8HuLnVHftj7/BCJtM31mhsDFJMTA3WM/B3Cx9l+GEDdz0MDvmfty3dV8NJH1r6rOYvV5u7zRvy4W4QOSy9hYUdnt6v6zZLuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esK/zeXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esK/zeXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF23C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733878553;
	bh=wh/fkVOe8XB0/7/7Orub24FzHcS9Z4x0337HKWnwCM0=;
	h=To:Subject:From:Date:From;
	b=esK/zeXftJZh1fltapDm4LZgHCwiApUM5tupPSRtGqVoHQGP8h8hyUzUhxIuvBINN
	 HQl5M1IjxfxAy/DJ+1dyAc+ADrWV8JLBZWDzUcbuJ1Hu6tmi6+WAH+munDW4rn7zwT
	 M2nRr9dP4ZMRl3tjsvlSOWo+CAfTu/vAATeW5GAU/AYSZAB93w4RwCeTcqbcDCVvFz
	 e2Ty3UFpA3uF5Zpm6Z8iIB+7M7qjOR3UD9oR8gkitjkD8GhYi8st+v6CNKIduQWMY0
	 4IBaHnSwMChz2dxcuZkjsIzgpUUR2eakr0aOoWeZDZ6kplgCwLDQVmWbX+L5cVthhL
	 dIgvoY7QdycWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0DEE7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387855359.2215.9097578049720758627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019ee74795a8b4e2f951ff3580101320db4da12a90b56e6c993438953bc8d2a7
Date: Wed, 11 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733878553
