Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8941FAC30
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740064134; cv=none; b=ltZO2NBqiFQcF+OsfyFZYIM4qZCXlUKqIbBdnQaeLYU7LHdlN24bVd3538v8r86nMXa+/tq+BfDvkyWvMoz+AKFfRlV/kATfqCP9+oRTUQqo7YlvPElj3rmYq883Z7PHkHPi0WizpqeqKL0cQVzqviQT7Jx+zoD1k7VHC+IUe5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740064134; c=relaxed/simple;
	bh=LiSzcCZ85NHGLE4s4Ra7gQ0Ezi4ogxdBn4sBs2sPfgM=;
	h=To:Subject:From:Message-Id:Date; b=VrLyOVoT74lZlCeNi/E522CeYfcakgY+4UI/Ankplj8jJdvWub1VY8tkbcWQetc2xLohZ5NkHiEWvu/bq7XWu2IQYup6A8/hAKaYl9twDqg4RPQzBpuoXjo8AtZquGBLv7jzBmw88gjHWkZbFq408rzT8tZcwycrcmMCsVqeKQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCAjGNaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCAjGNaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BC3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740064133;
	bh=LiSzcCZ85NHGLE4s4Ra7gQ0Ezi4ogxdBn4sBs2sPfgM=;
	h=To:Subject:From:Date:From;
	b=TCAjGNaF0SZccxWWdvd+/EXDwUNsAKqC5PZIPFjriO6SrHe4Fos3boy+gwpUm3PTW
	 41ubvUNhjgMo8mTM6gFmEzZbp/XHjSjOWodtwNrVp3oT16HD/RSSLY27Qv6CGuF6Es
	 bscRqjbO3tlZCkXvPgFhnquw2WquZeAkempuKazo50PjApgntnrv5CPAQ5lUu9/4HE
	 SxK8NwwynxGoZxMhNDzRNcm/eEjynSZID+Ew4EsNk+pUnNgVN71b4palS51FQC3xb/
	 mEOiIfn60E1sY7Q6j7BHNbJw4CTHKhlOxyNaj+XXwWzn14IFiEeAB7+M3i/R3QV/rw
	 PD9u/T7Zo0Ahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC79C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174006413362.27601.12459205449727395691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083a7f52a7fe146458b1394377c1dbf73735eba8d8881412622e9d18752aee55
Date: Thu, 20 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740064133
