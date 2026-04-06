Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A37331715A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775486734; cv=none; b=ulcd0LjO2hLR4TaP31JavOBVmZWj8W9VdLwcmA284a3MH71dVHFr3VvkohV3qQv03UPMdmg7OwHH1s0yYTAP6D4HDUpRmYcQUVWRfhHUZV2F1LF6trCtzKcC9IYvgiR1Y4GDooQY2im2JUkGgyr2hlkQ/HLNwt5Ifcv9/pAhW5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775486734; c=relaxed/simple;
	bh=ilJ7ylaRbQhTflgieIxZebBAm1Qbn1IfQc5LFaoUWnM=;
	h=To:Subject:From:Message-Id:Date; b=R+YExTwKqI1Jw71EM4+roOI4rRTgMIutCB8uzzPKi5rpMV8zHoPBj8ay683Sc0zgSU8VpwXLNrdQNXPzl46mhrszbrxV0iwTom69viBDthswZCZHi2G7PvMPZ0H2xnb3n7SbJzt85yzew/5uCC+7YgaNkZRSJut1DAJVU0c9/rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bceoKk42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bceoKk42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ABDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775486733;
	bh=ilJ7ylaRbQhTflgieIxZebBAm1Qbn1IfQc5LFaoUWnM=;
	h=To:Subject:From:Date:From;
	b=bceoKk427OyF5aiLtc/f/EotgSY9q/eb0tewfcfMsk9M7fedKQ7lF6WBH1CNfAe0j
	 3xMUFpQMeN809gQUcDVfjieqd+1OIHfRuvcYKYr1gRZaWIxQse9A2KfScuDkEnGMgt
	 rLSXjk+PKEGCuMiYm0OB56bAYPZeNrgAa5iZs7/hcjQkv1qOfUBieBthTV7OSYizwp
	 o2Y1LHEi0ExzQG1FWkZ8/RWgCOc3oEWBg6CvMVq8R3TmLiWRLTi+b5Fw3MbX+QVmgs
	 bvIsiHwmkXFsF2wJHr1l9GWr7yAx/+qshmeNyBVmCP79ralQtLmM1ISoEDBz5a6pZl
	 HBgjXo083b8Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36B6F46C44
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548673369.14805.14503207584660545718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7062d22b9401e12316bc08f611b998c6d17a7065ca4b043fc52b857e031d68
Date: Mon, 06 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775486733
