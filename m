Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41B71747
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737082554; cv=none; b=EkmXE2/7hbH4QG0TLZKG1aqnzsXM1HbnQ02AZMtKXXDmQubMC+uktoFL2enc/tVYBEyTJGZ/sVBtW5VURGm2tMG1Jt0wMXp/nvqCOYIv4uwuN9CMainy7AJoWOOIV5AWiXp+AiHKYptfkFjgojff0HCMmTwOB6WHbj3l4odIkJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737082554; c=relaxed/simple;
	bh=VMKl+t6rh+4Xl3c+h4OflKGfUsLtgIIubW5l1mX4mR4=;
	h=To:Subject:From:Message-Id:Date; b=lbXXJyBBlY4SMAjOiXxmLGi/0soOYOvcsIdPRWcK73sh/8KbbAvNBRFp8DO8oAzIrODhzxsrjROswjVOQV24BHb7ykw66TwtTOufDaBUxIHW2ArLc+1Qy4hX1E9bP5ARFdvtwPpWt8PeBcNDHxKKQGhCdDNy14LJ/VTRKxnqUL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU6nxWo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU6nxWo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D0C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737082553;
	bh=VMKl+t6rh+4Xl3c+h4OflKGfUsLtgIIubW5l1mX4mR4=;
	h=To:Subject:From:Date:From;
	b=hU6nxWo/VlmU8NuMsK2e7Zu71EambWbfMZ1oJ9orG0mFxBEboqBU+BdRuiFxO44P1
	 g1QpbCiS1T+EE2VWXXrfuzPgDtJcCTBfL0rfbQsEyIZLzoSzqy7ppQjuddEKi9fJYs
	 S0fXiYp2fCjOfiU/Citlk3D4pUA1lFCUFhF1T/OMZD4rhI6i3l8BXij75eFssXFEOq
	 OAam13f12msosgpX+GVOK6QzCCEY1m6Tiw2s4Orpa1ZOtkA/yv9v6b82jobare2qpt
	 MVlcXzhz+TyFXJm2kGYkIlL8n4ZtVpRZLsI8fsS0rayGkBk5V0eglkUTvayZLWgEl9
	 e8/wOZDwbLvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999ACC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708255359.25080.9736449618703157617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e03b9a3e37ae025059d51f310389391f3787643f757726c9b1c0f24149aedc
Date: Fri, 17 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737082553
