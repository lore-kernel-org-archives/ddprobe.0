Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43214199385
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732794954; cv=none; b=iTAPVNpciVCUNo21HTZbEVAVeKRlAq692ZIyeTWELOuDNZEu5nBp06y1YZD6RUhk+3BsU9vDpeLpHbJqjXVb8bQiG60k70vm77QIDdy/ca67mavDHj/z0Dd3AiJgcOh/cvDNonHPd3wi3XScPXzWuko1VCRM6dODfsBpcnGeRmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732794954; c=relaxed/simple;
	bh=uwaQWM/GRGeT6YPtgkoYPx4ctnavVsjbAvlOCUKXsCA=;
	h=To:Subject:From:Message-Id:Date; b=X0WHE8O96s4dnyEQItsmk1Ld6CwScXw3AKhigYSvSSyIex2+dbJ/WpIKzT0n3yXIFPKcOs6oBt4hdqfJrJ9T7N2TnJLxiKrRf5Av7i5qTUJ35/5srBm1zVPwC56K7AUeK2BvSxVP+ISJAJmSMl5oKLRRSfGfhaVC0rxJbJSPi5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE8tyhsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE8tyhsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4E7C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732794953;
	bh=uwaQWM/GRGeT6YPtgkoYPx4ctnavVsjbAvlOCUKXsCA=;
	h=To:Subject:From:Date:From;
	b=UE8tyhsmcBflmXcFbw9GRhVsqx9dHxfiCoiTmaXIAiFcBln/AuyA+jGwRooNt06or
	 P4jWEY+MzfVRFDVFSjM3/ogMHSQRWvpbecep6u7dkj1j/AodkX22wmmYnsMglCwJDh
	 BQhUw5lTxmB+b9R3I53PyCbOzYQt7otKeOWCoYnHrQ/7LrGevaQtpYUJSKxHfEhPa5
	 EbHapkmvIBfZWzicx/MNdNk5OuHXkXQDOGr7KOoJP8Jxh5a7EbpqqHKVs5mW6b7Qp8
	 PUCm1fwdTRVuSM1qVm7qxOl3gfvC4B1Hj6CCNe9/hUR0U41mb5USckPQ7/Z3covT5L
	 g1eL/5YqjdqRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E9D69100
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279495365.29723.18155686340460359030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3ba53cc70fbf24ca53466d77448c69cd3b61377728fce49ab7f967bafd2747
Date: Thu, 28 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732794953
