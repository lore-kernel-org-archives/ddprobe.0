Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4013612DB
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777669054; cv=none; b=sb56xcKhFxP2xameg2DewMmO/xkPZB+5I6xfJxslH66z8isCxVo+cdPTwnQoWrCj2Z2YPurt5cCifU4cWKfkQexrKj2LftMW1MYWhNf2H20zWXOO8w/y0ux3wRCC1FwYdc+vrvzVGdckKjvxU8WG5xa5RCs6LEdjMwN9kF0PH8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777669054; c=relaxed/simple;
	bh=48pzAwuKD51ep85/HcMPYYfSa6ExxI7WMnvUk6crAVY=;
	h=To:Subject:From:Message-Id:Date; b=EW3N2GjMHIdecAx51UhNbWq1z1E4R9S3nolwwwxnMSW9L0dJWHs7oZJ7Vpbc2AWZUeUX+MhPOMidjZvKn85VysrQ4D9vfTNVq6ZsF56LOaJZFzindTURp8jATavZeBOM5+7wq51sYV/l1kEaXVMxES7r8akycVW7W+8F93IIU+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihCHsrez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihCHsrez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CF9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777669053;
	bh=48pzAwuKD51ep85/HcMPYYfSa6ExxI7WMnvUk6crAVY=;
	h=To:Subject:From:Date:From;
	b=ihCHsrezCHFvWm6dTkG9q40v6unGwB2t62d1KqyGvRzc12eZB3ZH23OiJb/bmWAsi
	 3VXDGYOSjkA38VasOEqHn9LmHUafN6jsc04wSDmeVzkt0GT+PfN9BLt+VZXui5tuOB
	 n5W8x9P6AZHK5X9WqWQG1bQDnUuAmwT8ivHxndsFt4uJzmtfx7K5Ap9U366Kl5/4tq
	 wIW6kVfGdIGlUzndUKYsCuvVhaAawm0M3nkV6BzM1+YE35GrNZxynW6evvaay1CB/k
	 zCVF6woeQux4ClWmOnVIbyoW6jZjPn5yNg/epiYUbUDGDjr8zuExl3/GwWxLxPoRDW
	 sKC1NMa8PBLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF923CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766905368.27026.492944790430225560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3744190075f8132a077bb916e617027a8d516087f20c3a9def99b42eef03a6e
Date: Fri, 01 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777669053
