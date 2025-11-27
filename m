Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366631391
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764214974; cv=none; b=uoQAes733bTbHaIyX5mWeOj4ESi3zP8DZtru6eXu4UutqaOnBnLlSDkIjxggTaX/IhZ9n+0GKn7p02btW/5rnGKQylKFv7lnnm60mwfkUf3tvd/zM7KZTa5pRi8ua4fbEG8P5jpx8B/MmGlIhFau1rMIU3UGy/0Rfc0ijn06ADU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764214974; c=relaxed/simple;
	bh=9zBDK/yA86MEDdZ9EMvkpIVV+jGk61uidUl+HerW7lI=;
	h=To:Subject:From:Message-Id:Date; b=PtRvQktkqiJyfTjq/CfXNaNlcw1xwuhajAYcYxCdhwMF5VIV0I3eT/HxqL7FHQENkLf5P2KGIj+K3whMN7OD8Z+93BK4vnmw0/c+HwbbXQ4uGAJ0gJUDmoUszS2qW0DT6fygqHS5YuKMnhVfZzbuJlGMtECYpg3aadkhUdbDwBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObywYVHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObywYVHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A996EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764214973;
	bh=9zBDK/yA86MEDdZ9EMvkpIVV+jGk61uidUl+HerW7lI=;
	h=To:Subject:From:Date:From;
	b=ObywYVHFoT9JgiVG4u/81sxreIifOVktyCGF1MYHxAA5QKMqy+DbapFCUA9l6bAZY
	 ZbaY0Q5RRhISZ+VOes6mktO7SaMz4vW7U0x1leYs71gghQPL3JimwHQRrQ0fXsjiNK
	 z+jPWYuMsjM+u9GxIchBzFPAmGCMMOcCptvIHup28b3Oxk02mjpCMDeKh974D0qRaT
	 Cbigmgt9xto/U692iC1jE+FyNHJp5Aye45RxfYSgFHgrWlIDxPGFUnSygPgksEJsbh
	 l/qrez3y9q2ce7Q46RqozQcgTZUe4mUF3/WrjHWsuQ9Tx4gR2JbKgTTrShkc6WAdhF
	 OnINGDwCT738w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97239CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421497358.3095.5713862705389698401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd65560ae1f613434cab33d9e8c674d54e142de7b4aa147ef78a7018b37c7083
Date: Thu, 27 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764214973
