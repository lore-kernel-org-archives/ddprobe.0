Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219CA1DD525
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770866694; cv=none; b=F9RiySQv9+5Zq2JUEuFeDqExPQ7Ag2m8x10U16LXNBvNkGEcSD2E4nbvJ+0bobd5V7bmQ0SBIwOpusDs1GETdTGqKhWOmTGuu16WlurwVtYQBqKgpYrGbVavAEGLDUjVDH+K9jOF499eQn13A+J8631B/v2/2eppIqDVq7Knny4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770866694; c=relaxed/simple;
	bh=HPBtEBgtfjKNV2rqeULuY56V0HFP3rF5poygGWU2sx0=;
	h=To:Subject:From:Message-Id:Date; b=ucm9LW+hWfpknT+LgvKeeL8aKsveJoMtGOSeGT42CEp8UUJIumcMT5Up0iTgJNWFdoJJXYbf0hLe+G6MV3gdszAuY/4Hs0wHKjeXQZaPAlSyZcaZBWxtqyk/9cfb4ZKvX2LFKg8DF9DVB7iVSEo7AVoZh/yR/Sm8xFUtphprRjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odOx2zMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odOx2zMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD55CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770866693;
	bh=HPBtEBgtfjKNV2rqeULuY56V0HFP3rF5poygGWU2sx0=;
	h=To:Subject:From:Date:From;
	b=odOx2zMRKGprWeRrUAZc8y5aDh7cGJeFFRQ3sfLKCO20IubanyPDvVpfAm0Gsamy3
	 ZHPgcXNHWdz4ESnxJDl7liqoMnuIYjmn/NaHrp3ooW5XwcdpDSzMlDBcWLxbpATgAs
	 KBpa6djgQW+kkAWiI75T36LAI8jW//89T29E/TFXuOtFPk+tPwhb6ePGlQZQhI1YxT
	 43OWRTMpKc0mZC3fnfFHwO5wphF9Ifhx4DdMyvv6ozo55BCEULB/J59w1MNGME/FpV
	 s+XeNgOMIPn1vQpKyWNKV/d+aeMySQT3TJiItxE2OKJX5inoEgoHBmIPzqjVzi2IPd
	 ooln08ogCzn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98126EDF020
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086669361.26256.16262369353620858264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcc4d287fb65ebe9f3b48f472855dd9e4d78c39b4655f470fb50ca005a8d6f3
Date: Thu, 12 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770866693
