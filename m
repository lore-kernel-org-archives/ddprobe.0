Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13582C8C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708918097; cv=none; b=PTIZ7jsLHQsvBG0gzlRzgLj4m+MbFlvYSZikyEaLhSauznJ2QWK+6vSEH4Kwnt4D7/rLHwgUsYE/DHq/C/5jsC4I8W5OVrRtskL/t6EEpWBmUkZTFbTLNy4syru89mYQdXGPwwbtIrhKz226oXTviyRC3Xqy47SvmbpvfufTu+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708918097; c=relaxed/simple;
	bh=JX5W7OWIt6UbsSuIUwUjKZjSdIRhqrNXQwMfMGAa1WE=;
	h=To:Subject:From:Message-Id:Date; b=GECgEeZ9ACRfJcWemgCwv5i0Xet1d21B+Q2RAyFBTPjIdw5PxuaYUKRlGszJqMPldz6uRT6LrZOklFgV7lN9RNsUsZ7SgwUF43MDYhcvsidFA1Ybd5zYkyNoUJHYR7UPPKiSyhTMyhMtpaMvE/ZDrUhxeXxpJTXwm1BAFDtUKZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsGBuKWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsGBuKWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A8FC433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708918096;
	bh=JX5W7OWIt6UbsSuIUwUjKZjSdIRhqrNXQwMfMGAa1WE=;
	h=To:Subject:From:Date:From;
	b=rsGBuKWsGL0gB/yfyW+XV9eu7ZVA+bYgPyp67w0wZmH4a0+F6HFWt/5OIFfq76Eqy
	 LCZ/ddz5rdE08xqpeiDQR9TYvScgPDtnOq1BPIt1R215+Od/JoAoNDZMqEcxMRxnqe
	 W9oaPVeh2iTHqseOkcWvhW76Zv0MfC5t5x/9jPwn9FxTkFAJXxPoDNtvx4a5+kzWsp
	 +coPWourhizr4Hg0Gxxw5mZyO96s0UsbCj5oNseyQg85I7ochEiawYFaYWNlZpAwup
	 PkLZpaJxf/CrCOifUD2nZ6hP0R+188jt8fvSYnjYrbORbPE5wXuGYrVblHZQiF6EZr
	 /Gi9zNJU4Ahuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D58C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170891809639.17421.3899499515098051745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2e6b4a71433ec08a734b250501cd567cf9e3de24b40a7331a8f35e3e6e4fa0
Date: Mon, 26 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708918096
