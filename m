Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A4E1DE883
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743197394; cv=none; b=JnTjgVnUSxd6YBMMLg7qGR9lwzFge61Zawci2x+zTbROqx98BCn8MFI+tspOAYHgQMXCuzfb0EkV1gVJahOpoZCJiYAlTTA4l4gq2K+vTz8N2CW4ajnfx2QXB+lhe1vMfuPoxoMQfU7wlA9rHG9Ea/VtbOdRXqA5k++RkhvX6SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743197394; c=relaxed/simple;
	bh=uhaIhgcL6t+DdDwzWvmPyyayvWXjMnUtNY04FCDuFrU=;
	h=To:Subject:From:Message-Id:Date; b=XaFbJniw9rzjMzYOTJsrVVSObBiiD+75DduqrK5PtGW0GRYyBmdhK/DUhE7k61nKgUhoTcVVysXHNzYrjLcmFMRJTR/J68KM9bjXcnYyEnv7S/GrZGAOVW9ZReVieofofdfPnVfgAcfUqFt07qCCpvz3vFWSs1xuPKgDqqiqrdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEq8AyWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEq8AyWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE99EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743197393;
	bh=uhaIhgcL6t+DdDwzWvmPyyayvWXjMnUtNY04FCDuFrU=;
	h=To:Subject:From:Date:From;
	b=iEq8AyWhOgQRvVj1r+/gGn8RXjdv0pU0tMJ4+gGiT4ik3bjhRZd9p6GcIthK8DiNu
	 0clvL4QogDo60VchgQOIVot2wB3fqvbksAwDkAUUnpDTPhX5plCA4ts/6fD5CzEKSC
	 PLeQdGNrdYI+Ry00Y3SlvJNr30e/mK1YOHI6LUSc4xaSBtXoPxeQrEFPe0rVyVy2hv
	 m7/MMF3NhaWOdoXbmLBicda2pzGAKZXthfhIlcj4Eqhm75pehgCdDo598ZR28XxXh6
	 tih+tdKIH2JxbgPfzKJHhSpaNz/WRI/1qJQ9Ar9fppI0Roy5kizmmYuM8YPZGJ1khh
	 LbPKZczzq+Rmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EADC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319739359.13397.5932639306576552486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c041217b1929f44d0a683f7c013acf4dde1784339cdf49b81c72573f12cf59dc
Date: Fri, 28 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743197393
