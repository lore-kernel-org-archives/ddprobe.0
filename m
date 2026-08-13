Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB123806A6
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786655434; cv=none; b=VBEhBErEPi3MNCGY+YD0DYpwNYEOuS1hh2iwB09pHwO2lAHokJfJf57X/SDTOaOVWFfN91orgVzxPIdVq7+G4l6nboHVMgilAVlr3vS5ejfS40oqb+ytcqnIczXEDBQqbCJAtgjIJW42GNKgsXRdEXeVB8yokOUaFM7kvWCYeuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786655434; c=relaxed/simple;
	bh=9qMT0AqOv27E8MCySiEUbMjvRkjAnSrMn+0k/utZMUU=;
	h=To:Subject:From:Message-Id:Date; b=i6vjpH19M1t+Wep+YMD2CWmZA+qEVqcor5i2Qo/IRujmYCyvBpjA4Qn1iBP8rW7vECm5AEu9abWULh+NJf+oKhmuDkrFomicPTNIb44kdk2aQpuiis/q9X5rpp/U3laFq72QW9Dwi/1oEw2guyag+btOnd193tghX5LcCcVbMig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QauL/7ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QauL/7ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0DBC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786655433;
	bh=9qMT0AqOv27E8MCySiEUbMjvRkjAnSrMn+0k/utZMUU=;
	h=To:Subject:From:Date:From;
	b=QauL/7ksYN/2EOV02k0EojDdYx7TeR28jczbtZ2bxgWCA6dMbH3u10dNNFN9N46Y8
	 KEEoO5ou80utlMDPDVGB1ttiRT7i96kug890czL0huai/AKXskkaufclhHm3cOfA0C
	 JnKWhPbc0mljkJ1cyKBW4u6eRdH02P5kbbrJPglpgTVcS54DyUka66/ras+UwsNqo5
	 NA1/n4rUyNtTgaQe0d8poD2Khqk58NzJKRHC/JW/ucuzv30O/bawnm3cIKq7yulS3o
	 Lw69IozJOD8SSF/+PtXSmvvc0b3Bs3TuadAmTtEukThRtRqvkz8Ev8513HWGl+DwyA
	 RKUkNJhhfjtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9153C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665543368.31695.17137192747655945950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5b568d1c15a99a04eb662aed92dbcc91d048536de72518806596db773552f6
Date: Thu, 13 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786655433
