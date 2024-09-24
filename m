Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18AE1A76CB
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727192153; cv=none; b=PD9R1118KPRLN/Ysg/Chjd5zkfAYgGqeBie4Ma38sPtiQxoMrweBA6U6ftdRnGY4mDHwfszMOQMFLBbrPxgdQiso9v/ltDW6xoCnD1XgXRprVC6621gxy1xa6G3UVl7QP5r+IatVo3GEeTDlPHouTsuSXJRepnYnFAyhHCBwHq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727192153; c=relaxed/simple;
	bh=w4WdW2w+E6F5XM+YeOp+SLeU4JMJEV18yUeFC3SSJ7o=;
	h=To:Subject:From:Message-Id:Date; b=kGk0TNc7/VUXQE6OzHOw6S5hUBIq3xDz/Hc18p2K+WsJEN1xzzDr9E59WfjPAsU1wuAML712SNd2Bk/qOkoZKq/3qkMoFwPqdynsm3o5A/i2APRMsrk2q77v2ekCjI1/ij6SzFp0xdDMdRveCDeTCuO230v3D6YgKH2+ugFu8Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3vHgTPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3vHgTPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC325C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727192153;
	bh=w4WdW2w+E6F5XM+YeOp+SLeU4JMJEV18yUeFC3SSJ7o=;
	h=To:Subject:From:Date:From;
	b=r3vHgTPV44Kx29FeTxXTB+v79nJHwaQVWKzFi9+A8w8bWxgvMb5vfV3HEUYj8ymqm
	 +QPM4uoHUsMP8ZSXE4w5BJ7+uTUiaKwnBKhjPSXUWaaSwq4qHxA8ajo+4rI4wwU6iX
	 o3K8mNnwkRqvCsEShIeU4UJKJbecf/wBZKLYTnG/yagW1bRVoK3pWlkqNr3vyY8bby
	 x1pPtSgnqrgQGU6FR60jSZOSeQCAojm4xyxN4W7+1xSlKOqeZAEcvrFW3TeWBoqFYX
	 uHxKYM0K53BZWEhDGc2zvVTlGWn1bGRYQat37ZwKo/mE7zaZxZsvpmuoWWjOvN+d2y
	 qd/hLfkTfQsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D339CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719215363.15015.8919345696025767565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71d7e0fa58c1dc1b6a8565a91cb70fc0164304af31adf0e238426cd1656a9a5
Date: Tue, 24 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727192153
