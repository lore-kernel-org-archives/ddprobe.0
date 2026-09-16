Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BD03CAE95
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789538434; cv=none; b=L9FHh/1pZcMXBPv1/fVnLLVNqHYv5utrZI0s7xkIAljdiExNGJSaCeQsEyZVoH7hLXZjjwG07EOtjA+uI4mJALRooSOH2sY+aTXvPR0IMwG02c/wm5C6JZCb7Qe5hpb+iw6le8jKYcD23hxkNFBbyGz+ZUX44ubeHtgtB+TfgSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789538434; c=relaxed/simple;
	bh=uI61+T/dRw0SGBqTwROMzRJe/ylkW6KUs+AA/CZ8EWg=;
	h=To:Subject:From:Message-Id:Date; b=JuBM7oBYY6WdMgjVth3cDM4OnUejd87LrGWL6VziBV01hYW2bxvPbPocrHF0QToKeEK0+UplqyffErPLvQAztcUzcUt1Xes5u+YWydMm1mH33AjhxPGBUiUdRbyf8zQHjS8nVQkjZDSNk1CUREUljLkbqjo2Zeu11eGPa9GHXwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeAnr+ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeAnr+ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A99C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789538433;
	bh=uI61+T/dRw0SGBqTwROMzRJe/ylkW6KUs+AA/CZ8EWg=;
	h=To:Subject:From:Date:From;
	b=OeAnr+ftmJCfTxuvKzkj9t15rLfFPttIuB0YyM2jaV9fzBfixTxt10/FDud/giWro
	 kZLAPEIhg7OOPanl62w0HzLne6nuf0MT3+4br5WYOOVIvXRT/vt2uxyrp3q/d0kmvx
	 kv+HHBCbw9/l16Es9Tl/oWYjCD+0DdJYZFEQQ8XEZ+zU4XQc2ISwZcRfA1+Hb/Ain3
	 PA71ny4WYT5LAbKmMpE4iniRamKfSqMCAXAW8joWFCQ5YGi+ICJXdBodlkxppFQZoI
	 44621m0leED/RnRi7UBMI0GqIA6UIUkyrcIMXY4KQB5mm8+OJdexwW8HQ/T88R/e+N
	 +H2SnIyPMbQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD9C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953843370.23283.5200428255465012997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0138e29f63cabeb6142e7dd35ebed0b690eabf343500b74403bb921ed6a582f2
Date: Wed, 16 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789538433
