Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2956E13BC35
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732748154; cv=none; b=NI3HYXT7pJyPfRuHFq+SCslrrIWgAiPdrJj3ZVWJ4sg2s32TpQYEqsGOIWNT56IPbh+YwBEuaAq/Y0nIzJpkeQXLRybnA9tzzGlZDvjSPzhXhFSZ9wgyfnhjd7JXl2yLI6552qRr/SHcELyNT2EnyT8pNODTFo4vFyMjWQTW7rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732748154; c=relaxed/simple;
	bh=YoozDU157V81+87UEtWmivBIvqsi7SUT9MVfsuS0oh4=;
	h=To:Subject:From:Message-Id:Date; b=s87SgQPsZtby7X211TqxYdVqe/jpzlm/oOr+xmfJUgAel3G/VEMfkDnBXzcICv9d5IxhSkqiV7tmi9gB0cnMPQDY1GxLoOX9QnYHAl2EmeTghchBVnfvsIud9y3pz4gp+IrLGkuxeQTC5DS9DgMmkSd/4pPuKkw6YutbYWOD5+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWebUq8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWebUq8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DEDC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732748153;
	bh=YoozDU157V81+87UEtWmivBIvqsi7SUT9MVfsuS0oh4=;
	h=To:Subject:From:Date:From;
	b=VWebUq8oCIU6TZVRV1+oVugCO39oZ2/QLAprytH1gx68NryalPY+jEg1zPFaH2xti
	 WWz4iKfltf/chn/Df2ryuSozl9SuNYxT30pbyZY6Aa7nxelftC34SUITD/O5mInxKX
	 5XD7XS1d4DBa5bF5E4F76x0Oom/uwrTZWItXIp46obE4uOLRnUGi+FxOBXBT91bdxs
	 BWCu79iKh+PpV06K6G3GTC7NVd9/TCeO7SMVZ00bGAxEC76ox/5HllelSRtZN69qRE
	 Pish+7BUW+9kURm/9LaJ7ZAcbT68snhclNHJ2BO/ubC77RcwFfsJK+vUf/qMVgpetu
	 qX5Z1O5Tvg0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96699D6D245
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274815359.28439.5963031401463115952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32e4d69762766e49c948e3c66c669de033229eb1c2a67d9cde69e34f5d1fae3
Date: Wed, 27 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732748153
