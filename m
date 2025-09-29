Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBDE1F9F7A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759182594; cv=none; b=qWdSudGdEmq3BkHv5FM8BsMCQLlCAHABsHM8R5X6mj+TxXAuT/iMRxeiV+bhL8jf4cKP9nfAgdnuBbJbA5bcGykJbqQssoOV/yh8wrkp1ZjftGS9faGnkI7lJ7g5XsBOhu/XiJrfIY6MRdB749Rx4W9SxvmfhEA39sjkB+b4Yqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759182594; c=relaxed/simple;
	bh=H1QsBjRPux2opa2a41sCEQmGQwEMFioDmDQPMN4Tcc0=;
	h=To:Subject:From:Message-Id:Date; b=BI5Vwbp87adIpeXrbJFGd4x10lIP+iXVWaJirDcyGJoRIvVbYnboKXZ1LnyVO+iWXf3jUgvhFC+/3UfHpoGdpMGeKqW68kOL87azCWaqYxn8g/3qlKgllNsa1nQbvBguEWAPTwAKMda0ECfkqB2u+TCdaWCwnnHWNOA0lGkoNaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1nrlSGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1nrlSGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD4C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759182593;
	bh=H1QsBjRPux2opa2a41sCEQmGQwEMFioDmDQPMN4Tcc0=;
	h=To:Subject:From:Date:From;
	b=c1nrlSGhKT5u/SqHPkw7nxNHfWwwlNImoEBscAMOCvXXdWyB4zWWXPHJGuqkozStQ
	 /IVV6R1I4NAX4S5cS4h2hBDrGiq6vF0CdffHyvTYZYy58HbJmwuoZioVzCf40TF3OD
	 tMZaw9wFedwzbNeEydBqGlenp3hSyGi7zHUXVmn6tYk93NL96iZRVz59VnFnkW/sfa
	 eseRqMG7l8yonAeQUOnbVRUJAuASc7g6zvSn/O3woo/KXp81SRA1BojmS1iutwgDAc
	 Kbi0FzlLKr9WHms95m1sYa+Joh5AaUGIdZJ5LqUbwvPnwF1jffskFuUfff4PxjOXaV
	 yaKnorTVEtf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC56CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918259358.10305.2123926599560442016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89727f6f63a10112450c5026301b723bc576a4f0237171e9f5a77b55c9b5592b
Date: Mon, 29 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759182593
