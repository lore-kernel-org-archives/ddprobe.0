Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D171514F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769218434; cv=none; b=mOwCbEXX+CIgJzGsQB3m+AnDd/ddYjS+y24AQGWsyf+UayFMCdgNCM+VXpzC+Q+NMf5CbnT8t7PfriT3RHVRmif0pw1S3PTE9YuwP8LG/sEBIgWnqN9Bm4qm0Dn6ymKyCcs+1DTafxX3rc5lGu7e3kwTp4WPknFeWvDfsg9C6D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769218434; c=relaxed/simple;
	bh=z7HNmTeAUbfd+gG3MtP/PIOd8v4ShHnOaOFv6w7BRss=;
	h=To:Subject:From:Message-Id:Date; b=jjMdYFow730Jug1iWA5NhSzt8OZAW49aIw8/rq5E9WlSDgaSyIirYSmIdfFZEfSSCVCxGMsGnYhW8g78AnFO9heMSIYboq8Z6QEluNskxHaSJGPlOzEvEFCckUIHjeDWRiRR71gfNB+mWGKUPIvfmzYRYhB7AlAlm/52UBjbdgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTnDz1tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTnDz1tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36D4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769218433;
	bh=z7HNmTeAUbfd+gG3MtP/PIOd8v4ShHnOaOFv6w7BRss=;
	h=To:Subject:From:Date:From;
	b=KTnDz1tWi+VDQkL903mTN9I+wMaCJGsbUq2iBQfqb+eQPKtKP2Ag1HI9GOYXBDFdY
	 +850MC5jcj5W/wN1jZOkRS++JOFbarAx6DFBPO4LnTEVcKejnxinP+d+A4X6XC7zuV
	 lZZM2cMzS2jdQni3LlKkscLXeU/IJNN3+eUzgF0cq3JeGbU5Q8PIBf7KULbFpXDBon
	 gCXDV9Brj5woWKhltA6xVXAJrUOyEjcPOPLKFhAigLY5uBunby2v/Hz0mR211u7Z3Y
	 d1PkCtGje2B4proy3dasyVDU6viVG5Hk0OgdO4+qBEo3ZyDsArybUzidy86ZC1KHOT
	 apC/FzEaa/zTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93149D778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921843357.26556.12931820833909737577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e90ef4f88f007f9bf54a539b614e8433a847ec2bb636c96ec7ea03f03a97ec
Date: Sat, 24 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769218433
