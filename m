Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA14E57D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717927643; cv=none; b=mt2Ov6ElEDucmUYMWS3Kf7ESC/KTu8LGcfG9u6CYmNr4o5w/B8Bj7N0OZ5iLbtVowiR8SSb+zKC8bmjcP87ABdQUpnRXmEcR1twQNyhShvL+1KAjvZixD2GJeRGQih3uTq0iqqvb/IYqB4h8bZELZFNMFC6BTF5PXCMuKLyXmOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717927643; c=relaxed/simple;
	bh=m6H4loiepYYc7QX1pCkEatb2v3m8udoerEvif4sRYqs=;
	h=To:Subject:From:Message-Id:Date; b=k6j7gDkp44g5HblzKYHX8jloxXYUtcwdX+M74NZ+I0ZLKIYJkUcRsty1lsEXetFg4p647+mXkjraHBhq8BMNoIq1iH9+nfYMA1kjkyIKTIzMnmLPehM2LHKkk/0J+bBXZqOMRKGaiUpxesaKlwUlWETyDWh2tceh1ApdVE/h1XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUlIi2C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUlIi2C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64D1C4AF1C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717927642;
	bh=m6H4loiepYYc7QX1pCkEatb2v3m8udoerEvif4sRYqs=;
	h=To:Subject:From:Date:From;
	b=CUlIi2C8pVzDWkG/bHYe28RgN1n6jeWiZIAhRdfvCWDaiXO3swp4Ebow1uwAyjaW0
	 TsjV2mIzd8B5X3oyRApH+QzPX11AlnDRYpRKlimtCMgfWZlwf1i7zclCZQ6FyHJwaq
	 LAutIgoZNAddXBKeGM6zry9I+w0UIuaLPDiEQkBPSA52XMTssSJwo0tgglXQ3kUVqp
	 Oo4a3ZDiZnDorzQ+yfsNOBhJhaYR+/irIJkwOsxH1CWP4ymrfGFq82sZ6YH+jc9WmT
	 noBY1yR61OoLJhmfRoILALG5UELP3LuPvxkfmNNfN6rHXOXSXlvsY0MAW6HeL/Rqg6
	 OjHOWgjJBsCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44BAC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792764282.7467.546210884752143779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8caf916d28518a0d4e55066b2f28da08683c84c6549e09593f4f8df1c200677
Date: Sun, 09 Jun 2024 10:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717927642
