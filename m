Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A12517AF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775046334; cv=none; b=mWLKQwgpWQSD0hs8Ouv4Jr1DwUO/uxgNDftfcs0WVrPhUXe2Ph2qfnE6LYTslfxCR+MdCce2N7JXPQ1S3iUyH8qRG4NGLVe7NbCuhKcAUO9BKPgF51PPrxoShiHmNeN3y/17TBVi80AH6VNV2FLDI64/jaXL0+r0CPNYCVICA6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775046334; c=relaxed/simple;
	bh=tE0/Ge0mM9E9d/8oXZbi4p8BgPVdCbgfa7t7/iCydoA=;
	h=To:Subject:From:Message-Id:Date; b=WaWcrN4bmkt9Kz18SbfDjxLDIva8svfnZTzqnFxfl7nfIIsubJErKONn8anPjq2iMwkDocD8/sDrLDgeETqr7lrPMobiaPvzmpVkdE1criW2hWT1YqVCj48p4f6shFTsw8Iy9yCWvA97Lvw1I2dUEgCZUcFEJB6EX6cALt7Xx9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqHXR49b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqHXR49b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD207C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775046333;
	bh=tE0/Ge0mM9E9d/8oXZbi4p8BgPVdCbgfa7t7/iCydoA=;
	h=To:Subject:From:Date:From;
	b=XqHXR49bgc9h358dcjUthcEOm2lTvfx3wJGGxP078pVafBiJd1rsk3fWx59nfnkbd
	 0HI5pO8VO8TNtyX9p0I9aPUXgGjd/ULyqoc3wBb01/QwKJIhzpQiMXz0n+IV0pfdNP
	 QJ5B3lwhEwdbCiG4Hd9/ZXDI6rbKM7Y832wDpi+Z0AOFEAmS/0eEdY0vvdzvkpMYj0
	 o6dqnXMVkF45mdLI4W0U1wCxNvet6V+0W1vdzi5NohrTJA54euFcC8gyBJi/jMo5LC
	 losca+LbzKzGyrntK8/5G6lUbkeX4TOZ47Q2FBxWs29n6XrGX+yExQcj2+N62PcAYE
	 CHyZ8xW0hJz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA371D35177
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504633368.1730.12488002193677376417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f738547db982399d891fe9c4d593901a4e6a2f266e18fdb974004aaf39fd1d67
Date: Wed, 01 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775046333
