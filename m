Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7583B993A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788219034; cv=none; b=UV2EFTg3xsm/zdtClPTOmOk1L1/wP06MevY/IefBY9a6Qu0NdhsCyfVmW6zmlGHh/iCA2dQ7S3CDa0ocvdZdYx9Jcv+aJf0FNNidnk1yFxg3IQOcHNblOEO5mCYiDX9dEVfG9BJb7ckdX5dFVP5ZETQYRiZmCxeFlq/zaHfC39I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788219034; c=relaxed/simple;
	bh=439CYJujwUKEq4QKuWy8Dav3qJT7bFkNVOKC7Rouhq8=;
	h=To:Subject:From:Message-Id:Date; b=SO9p20s5JkLb2vLSeNeUFOe19aycnGVvGbIGcCJwUbRtl6DcacIv4GjnR8XKV8s5K6MvYZrQkpi8I+rsV/v5tX2e4VWjijshF7FUaNiUh5D6OQIcDfYdN4fpxUJgnhY9sgnfWAjQvscvYA9TN/ez213gNg6sPotI7KLYU1RJgQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujSZ5NHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujSZ5NHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEBFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788219033;
	bh=439CYJujwUKEq4QKuWy8Dav3qJT7bFkNVOKC7Rouhq8=;
	h=To:Subject:From:Date:From;
	b=ujSZ5NHEzdb0YORJ90XQOvX+Z3VlpEb8gH/FR6Xf/EJg/2xUnj//NnuD3RBSg4xeA
	 7SeFleOsVnw+ikbUj/kR3M/WWeXfxCr59PHt7mReCkuLDebRTb1GKlX6CtQXsQwzWj
	 jIuU8fplNj8QoVPeLMzzb+iU2pef1WxnLfGEBOVvr0hgMJXVU8yRUhWNUW1sSMul3j
	 SWEXpYk5jHvr9vznPIdCmGDKwXCK6wwsFJjB8ZaTVMInCoWHZQwMgQvHDd+9YIYr0+
	 Qcq3Ev0M+NAJNBgBO0fVAedNVAKh9p1MkrM3lpNNADRSznrNPxs3pXt+x1jm77kyqD
	 TagWMbgymDx0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D4C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821903368.10851.14950222603206220306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d85c48ab8bc37a15846506540151f3def51836aed2aa9f7e0e037dfee272f1
Date: Mon, 31 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788219033
