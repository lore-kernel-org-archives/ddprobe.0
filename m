Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F58253F03
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750750794; cv=none; b=Gqzher2dRwz4uWHAmI3nBfHuUXTon4nqrr14SOzC9nyenCMnSQEnPOq4tB+VFC3EdSKl27vdcIGU3xquwApTBoNfy3eWBmYvgjURG7b64/RBGI4ucF1TvSnu7cGavvkjWlUby6aLaS+wS6zJ/5/PMFyGp7Uzb1VUAZN9SAexHQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750750794; c=relaxed/simple;
	bh=nQiJmiFPouzy+pwXkOxTVbInzeo33/lWul2rQ17kR9E=;
	h=To:Subject:From:Message-Id:Date; b=lmjRPZady9v/btnZOF9hViuBj/xdRHBSBz3L32WQXSzL0zuDQ3xUJ9VY1XOn6z07AojAtRoWJXtNcCIQHHcgD7EPy4rQdq3iSzHK3d0d87WqRIr5x6RYiNEfuh63SdMGRHiRycKAbZUD63LWdKVtzHECm9ezsAmVQMeHrdK2a/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7qhffX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7qhffX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750750793;
	bh=nQiJmiFPouzy+pwXkOxTVbInzeo33/lWul2rQ17kR9E=;
	h=To:Subject:From:Date:From;
	b=c7qhffX+9v8eTxy/MmEK8VGfgDBwm5lFchWiB+8gYPVJn2Boe4AH8wDObhZcI9R56
	 51F7RVYUDinKzp2QCxDeBw/u/T/L2BLG0PdtN0ENTAyKWy2xfv2qqGvPGsazHAb3Ui
	 YgvsdtnuEbH8NgGonnK6mnHJo+KOtPqo5vA7qCpI0IkcWtts8fO4HcjRC65HdWmLuk
	 rKdhfIFX+W9pT0bc561Wia7eFuvFP4VbVYDI5528E3LWtgRESgcaKE3g8gTKzDGqPJ
	 e6CVD273WsxE0ow8cAyxVPwxJ0Bz1X8c8USI7P8/lmKbaaHb4TEKYA4ttT0aWCH1Q4
	 t+CmazGv8z8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28AC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075079357.17195.8286423602832078173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6b06b05a4d5745dd918d24b1da44da4e9da2d71b35fb76d5f2a1631077c7e0
Date: Tue, 24 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750750793
