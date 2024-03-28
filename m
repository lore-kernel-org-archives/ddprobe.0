Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1508F535CA
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711647497; cv=none; b=g/WpUHV72Row7QtTFBy1Cv//KJGodHvuKehum+HpIkEdW/Ssv1DgPlSyXDDwrmDpBJH0UZrANM0b7OlhVVfiBAWPQr5G/JAu/8nSReT8tFNkej56qWp38jnSczRomXfFTQa+6S+zLj13cfHu1+PCgjFvCw9AY4g7AUoKQu8aCd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711647497; c=relaxed/simple;
	bh=ZWEDqcmmAbO7zezL/vsQYuMHoVhSb6lbtS2oAFwDG3k=;
	h=To:Subject:From:Message-Id:Date; b=HG3fNwpYfZx1Ijc6yGvAIQ298GAetdnAzs4f+gYXUdKblUq0wIMf+Ud+kAQawmYUF7tReQyGcVAjC3uCXKPvbUeVNpbJgWOOEJw2ASV36Sl8EfwyRnQ8wDBHFTtPeVWBvX+3dtpbRhyXjkHhl1Ft/KaCdGiaTphEuE80vavnm14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzzPU8G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzzPU8G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F82C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711647496;
	bh=ZWEDqcmmAbO7zezL/vsQYuMHoVhSb6lbtS2oAFwDG3k=;
	h=To:Subject:From:Date:From;
	b=UzzPU8G3WA+kFnynWDJ8c79dptqy+vJKfClba0p0rrdpODnvmunCKOReukXN9keFy
	 Gr/9rbL0ZeChrekNaB6q3esaYYtDmONex3PIM7KsyVrrXapHw39x9NyGDp62zwCe2B
	 hZtx3IZW5L2bZVgSBT+mI7FPC3aYlT8or2b2ky6SWI5uBUR742P1z3o+/w17pjo39v
	 nSj56bdbrvkqLLutudIiCKBws6dbAQJ7lxEdx/R+R6QQXgc3tSjeRxkEDlF87iNirI
	 +QLh1z/yLaB6JdHxPivvfre6zA0reUhdL1/KUkSYxs0SepNB5tthdjR3xXkkWOqmk2
	 K6bMzboeSuVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C586CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164749638.1968.13935194822945703652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700fac0afad2e6046e45dacb54dc6651360407bd85da9c33bd0c487fb1c8eb23
Date: Thu, 28 Mar 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711647496
