Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75430EF88
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772778294; cv=none; b=r8LmIbZDczzIHSZx5AJ6LPe68iOu0PDcv16rPGNkXbKGhbpEWynOmDEcMhroOuUz6FFJas3neG5BVuVZpoFEQ3bNswdc0a5Wu0bM8KIzVt/oPbtl9LbnEG3XZuklcanYvA0BN0NE+uDJYXJIltEifBfyzT2CDdJ0djFOM/SGkyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772778294; c=relaxed/simple;
	bh=w6oTm9rXuMI7faiXAJ82v/0GOAMQyU5XqIqK96FJCEY=;
	h=To:Subject:From:Message-Id:Date; b=rxgSFNUb3bKZI5D6V1g0Yoh1xaA4WZNpuYyz3d1rIZBRGdwO94VvNdfYj5k2S22COTfYJyLSx9HvaTw/O6JyWQq6br+eYQjd0kvFLXHX7Q5gEd9tIrYtHOTgCxFz0eYTIHHwApEZdDzATYOnWfyQmtPy/Rrg7I/vs4D/eiVZJGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy7f7Jdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy7f7Jdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E638C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772778293;
	bh=w6oTm9rXuMI7faiXAJ82v/0GOAMQyU5XqIqK96FJCEY=;
	h=To:Subject:From:Date:From;
	b=iy7f7JdrLA6VJctclMWRuVK/7RPI0KrwhOXxKQ8KZl3N6m3CFA9gM/Vrs7wgLwW/3
	 FAU5ZkHvdPqdMRWBP2XPckTtCNr670VM9xZ9yo3R7mB7edJ0xIjsHKlf/c0cAM+ema
	 M0WFa3aMhqRlGarn9HG66Z65XGsrsoCIpfECPSPu2JFWGs3YxqRAV2NcAfeFilHzlo
	 lkPpKlQ1goH41SQElrRQY7JP4k6hECbss84oKE0IHfXFHqJcnwfdb+CP+uvX5Hk24S
	 lhFxwZei9qnrcwPm8wNTZvZkAOgfjw7IJBLoiVTFtXS810Tekec/W/0h0YMkeE5+t0
	 PBcCXcnpHLSJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F783F51405
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277829357.3089.8810843668018854471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c405dd2a5e3d26ae6febb970f00c34ec68f97d70eb187e6440c51c6d50d92930
Date: Fri, 06 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772778293
