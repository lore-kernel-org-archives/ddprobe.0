Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB9B39FD4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776249454; cv=none; b=VW4QjDpShNXaZW5OwSzIyEV0sRTxtWC45SRz77JKK3GSyeSto5beJXf9Sx4KCwMfRSPV41PlxgRaDQ5ih1cm+oNGNCPs8Bfq8WdKBivpacGND4yt5gJ1r+UCQyoW6FP5+chnM+QwLniH6GQIRRIvZoZiCGzd24FAvOhXGybXcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776249454; c=relaxed/simple;
	bh=rfXU8bgLxsB6xeRbcc7PzWUGPWdzkcB6K9YPFwqGKQg=;
	h=To:Subject:From:Message-Id:Date; b=QAIQ+9KiXA4ehrSkhEEVXWFEeEE+PldC/LuYeJJR5GETWVSCqFW9vaYUHGr0bA409cTy46VFoJyz436PtyLFjK+O7RAczAnskC5IT8Ui4y4Dca6oS1mPyqBvy8DQTa/dClZJ/QIpcGmoySmpIZyvJ7ae6ni5Dya/nnMdh2ipvqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crZopMw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crZopMw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CD1C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776249453;
	bh=rfXU8bgLxsB6xeRbcc7PzWUGPWdzkcB6K9YPFwqGKQg=;
	h=To:Subject:From:Date:From;
	b=crZopMw+wWOiZcDh3c66A5QMnHNjPLm3AqDNvtk8A14cXrof1trFoKL0OsSzuO2eK
	 fkgCWGnsWhVBY9KJ4FHTrtl+wY4mpHhaMX+xrni/pwF++wl0zql81rmvbI5DRnktdr
	 DvCNZ6/G42DjFyvYM7XTux1Si6pjomuAaxfkxRHosiHlNXfIO6JhfqaX4VxYq/z7rf
	 xRD41xyMiFZJ8ta1B2IStachcJGpfzwAKRdpVwi66HP61lXJpg1NWDLIe80ZdR17g8
	 swdRmBs/BdfeIxWNzZ2jHfOFso5jkfgWad6pzc7WYYQKdDd41/2qWCR4swgCdEf8gd
	 aTDCORM5IV4HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B009DF4198C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624945368.29588.14732743891266484496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34ec2b9730fc72127224b9f46f36703cb0bd416f1d9476c24a8f2e15883ddc2
Date: Wed, 15 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776249453
