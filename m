Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1B11E49F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762573794; cv=none; b=B4ymNnWkqOoqGjrY1+TDTbxD9qw5bxQVlxwUVYsaZOpbqzM43GLT6o+sH297Y9c1s6RwOxWd85HAmagXPs4VS8dRxlA6Moun3xcqzDNg01w2cekhVNTl1oVsTIMoqUK5MwVeBQqy7ILeC2HHPSDIpcCiAIoSdNBq0U8ovziu1bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762573794; c=relaxed/simple;
	bh=h7YjueYoq+i4stCFhvFPyV53HqqzF4OPkqv79sNqS7o=;
	h=To:Subject:From:Message-Id:Date; b=fw2dFNoHVZmwkDmr9MkPqFq8XU/b/BATPF9wHsTmGdqqOnHBxmwVtwBkUyXAy7NE8hRgCZA+tamPUht3SPtT0FFUPf3Ht3RM0/HoDXjzO1jZHkLNLlrL/bPY+OlXFGqGlu+QrnjQcoA+ATgABe393Q1ghtsDEU1kDtZKkGAJdBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F90IaUdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F90IaUdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB013C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762573793;
	bh=h7YjueYoq+i4stCFhvFPyV53HqqzF4OPkqv79sNqS7o=;
	h=To:Subject:From:Date:From;
	b=F90IaUdpc+sIf62A9SXAnAbES2InSYEpg3599IXgJmb2k2qaOQ6EtbQrg09drVl1H
	 g2EzbKuDlAhmAjDKYVS+iPwC48pE6NK6JEqS4rFM8er+UoTbu9dSXPbco46FVTkIyO
	 14gvufFxs96ovXeIvGA2BlyY1UMM/B1aDRN+gzlh56pWsldpa/MWIOD8Bhy9DhG4pl
	 581OH7fFektlPHUcWtlBmClG20B1k4zoeNk66agW6GmgpHlQyap5Vl3kE53Xzqwnx0
	 Vbvc+pmTfcYPalFGkMgUQYBrJpB0Md34bOWoqNz8xD7LfeYdxq2ImYSO0VEoyV1xlB
	 hX0NUGam08PVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6ACCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257379362.20667.13223299880332629825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097fedf0db0967918dce8ca66cedbd27ebea0794ac283f3e09fb501468f0de88
Date: Sat, 08 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762573793
