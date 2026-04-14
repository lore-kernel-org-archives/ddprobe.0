Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BFD1E515
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776131254; cv=none; b=JH7066qCUhy4/3f01TRo7B7j46xQM60Jb2TLBDn72rkMR5h6dwDXJQ7gTwQ91dvapEYa5mpTWohPcCNnbWREhWV7r21AzU9//oXMrV99ZqI/KNhO11/B27voIvAGL0C9ft3XVFHHYjCf/yo8UMtZ5P39qdmMab/dwDjSyhbP3XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776131254; c=relaxed/simple;
	bh=5kVEwiZmtkeHuLsUYqfFLd6m9VzRFfk9u5u99VjtpUs=;
	h=To:Subject:From:Message-Id:Date; b=Q7+wg7WRJYPAebbAiW0YSdiUV7vPbPKYae2/3zWFLkU9gkKNe5V0s+/EvVOzv9SD2jyiuN2I4le8+ZHuzVx6jta9Od4fAcRWcFHAhW5ULkC2xBlpa/oi6mj5/+pllUZICdJ7amHsV4Hf4KPkPK67IyeF3XEgU2LMze3VV1A6u3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv+HcSaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv+HcSaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCAEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776131253;
	bh=5kVEwiZmtkeHuLsUYqfFLd6m9VzRFfk9u5u99VjtpUs=;
	h=To:Subject:From:Date:From;
	b=Xv+HcSaHOs9vW7kbtPzQhduPVwgC8490U638yyYw+nL+xaueNtQHsVwOEJxuTR4A8
	 kIJmePjsO1MYtkxNZqXfVbflTUiYAgCmpHSAO75OHkw2syctWAshuYtY6X0cEALwS9
	 KRQHi1upQhNhlEqrx6L2echQcTkNdsgo14hgNNvX+NjVP3p0bF6nxvQ+uilYU2vF2Y
	 H80EmCJgpLFONlblUdSDiLu38/dMGHq9/mLK4AC8oiLMvGZK+Ssxr5MABWs0U9Q+Ww
	 MK0nKiH+zflV9GHAyuwDaKq/f2URMHb1VZQhLBng0jKep6o357Ol5AtVP/Mh4AD+i/
	 ZIip12TRWHkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE93F531E4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613125369.17012.9031870221472744479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8dde8ed8cd15192702158b6232df38be23d6e5f6f1939a05c1ce32f504d54b
Date: Tue, 14 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776131253
