Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5842CCC0
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765697574; cv=none; b=mi3g6dqfZv6RBLyb6WvUS2xWMQxFE68H93PVoh7jkzcU2gzr4QEfxxuWDyQ08BZc+Fc1LTv4c79fMeCRsvPxgQRCo/qztSYu0Rn1zdlUao0TOInXFz9wrNz6CfSpcqhY6Bsh7Jwe1U+pv2BDfYZ/n4zfXH8ikvWRCxpLKU28yx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765697574; c=relaxed/simple;
	bh=4NdwbLu9N3WTWsTzGK1ELcCRMbC7cioGmnBBytrjbxU=;
	h=To:Subject:From:Message-Id:Date; b=NHgr3YLrjPIfQgPwApRUf5N7A445jJSgVeUb7vRKDYU9v22p73xA+cIHuhhtK+jTSeB9xYfSzsNrrqk83POV+qsj9yP/LFGPNb0AJFn9ltRV5HMUEih2VMxpWWWQa8I14ki829J+ldjj03XygVlBiqfDaaDbQUq3LwZqOLY+wew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBX/qVN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBX/qVN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765697573;
	bh=4NdwbLu9N3WTWsTzGK1ELcCRMbC7cioGmnBBytrjbxU=;
	h=To:Subject:From:Date:From;
	b=PBX/qVN9qHrLwJr5kY2sgi5DTDdbLmpFgMD3rgICKM6K/xG5UE/ENLcnFbfIRN6Dc
	 cdHgXSyou8+oN0vMDKIECrhpaQZYEBgWzX2WqIae+fXyVbxCicUe5d75FJwmhHH/RD
	 CxuIakQG1C4rF4Cb2KRE8hyEy7fni7ASksHlwrHCJScFmaN2kiiejnNdjo05yVoiNP
	 CJ69seHFJxHvqZnWYYyMzBV5KaST3w2k7gfHtYlK/FFiOBpCDjQSHgOXzc4JyfMGIQ
	 6+cBYWLb7zGY4makFrjdx+R1+mAVwkd8fHKf07MLAKEEbY7fn/TrsI5uoiTmrOE9G6
	 NnnbSrxGRwABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FFCFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569757358.31937.11871313288567168061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf6eeff147631088511e2ba9173d4cc1ad249afc18ce02a2ea79711200e2591
Date: Sun, 14 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765697573
