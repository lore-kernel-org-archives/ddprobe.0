Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306F846434
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737000354; cv=none; b=kRZnIRBCPoS6Qo5k8a/XSKaG8Dj1nfRJuX4+FxK9Cc4Rymmaak4NlG1HekS54XaCE0cuX/st8+1URXYtzZEJlEUiqPMxRI3ISoizdITq3aEH/6ZVXt+TYFdOQALR45Ulvkp4s64/gXAhE8PwEuOiDqpiigHF9GFovviM+HJnkXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737000354; c=relaxed/simple;
	bh=sts3GUq9mU+voZNUQmROz7F7n5kRsTUOIhilDYOWEQQ=;
	h=To:Subject:From:Message-Id:Date; b=LTu7bb/cSgUpfa7/eUqUrI7asz+wUR+ZuJcrdXCnGfBFRb/DzC1okQkVK5FHUYtEPGmdBQFSFfgXNDqt5oAkrPScRAiV8Sfwo1/k1e7acjTr91j9Lkxc896Vy4116hwCb8wbovMZ95kdk0MnkHY5M18Kl456y+7J0YvFxYT2Trg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQzUNqtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQzUNqtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7538C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737000353;
	bh=sts3GUq9mU+voZNUQmROz7F7n5kRsTUOIhilDYOWEQQ=;
	h=To:Subject:From:Date:From;
	b=EQzUNqtVCMoU8LAldxgpV8uZsJapjLspZhfpt+2Lg0vWV9GaHMOp1Gkgdu6Cs68px
	 Hd10cRGB4ZOq6uYnXV22NxM1303O5I/oCei6iHPi4vYyaqQYEF6eQhIge//SQZjfVl
	 XQGUJvbVJb3ao2cB8SZGAQuNvucpwVeOf2ApQU3m3byiJJ/5rvyugCUoDDhIXJBYoe
	 eYSnshy/eZDV9bfW83ckDgvbswV4l64bp9hVeXG3S38or7HwzstH6jx+X90OS3OGca
	 OzY1J0BTE5PopbmZxUs5kYnCmEXXnIiPdkoEZoUYkOYLxU7nry35yWBcHdZNtgwiAX
	 jpDvruygZsZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1846E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700035365.2187.14338440381554672727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9e930749436aed9d4e6d29ba382dda8c18bfb8425484e77541135e6c860479
Date: Thu, 16 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737000353
