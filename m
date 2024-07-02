Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BD9946C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719890723; cv=none; b=sxEQckRiP81SbVzK9uxY9pfV82jf9X3wHsXdcn40Udb1evCttFz1oW4bT2k3psNGYdhdjQckMPmdaFRm2iwaRCr00J0PEZj5gUoAeSOKI+neNkr4v5vrZQA6ImRArWzILMQ0rybz2fRGHppzBw9OGL+NsrPvjho0+1HMnx23L44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719890723; c=relaxed/simple;
	bh=jjWXjp4CVTLvMncEGa/Hca54zsAf4osPYFa/BYNROks=;
	h=To:Subject:From:Message-Id:Date; b=aGX97nrY+2oko3ViZn8TPf3j98kXXo50QkcrK6s0mGsWH2ZrE8va+Kgt+agAqx8X5DUq4saqogGUaCoYGgK0lVRw5fzBQcJRtm777hJ0QZ7Nun0YA8TpcC+/Mu9kZGI0NnSWWvZdgGrga2NdWppuv30EpWQ/p+avefugMRcm1ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngwTgITq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngwTgITq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719890722;
	bh=jjWXjp4CVTLvMncEGa/Hca54zsAf4osPYFa/BYNROks=;
	h=To:Subject:From:Date:From;
	b=ngwTgITqkfcCTsrryC3KiyihJyiJdU6HilmDfWa4JT7HrJzfdq4WDL45lp83VJqTg
	 NguXO8LKp0eNgT8H+e4Tdr0YjbFs8m/iu5cDuDHEF3jgUrZ1KE/YjDMtDljFLSOVfC
	 pzAmE4FTgcl2xM2zF1BDkKyX7TSAmWjmyLSUG673t6guv6QEzGfFOJrEQJjddab1NL
	 3vzG2UDFrbvGIeLHzkZwTINyzQns9Nrf4VrwqLK+3Yok/1m2ciOkA6NCmQ4GnSPnnI
	 XOevPBhAmG+joyt6dcAgOmNvWW7KesbArw0HZxjr6AcEFxB+ra4m8tY16VDk9Y7vBl
	 hEMWwHrAssQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AFEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989072278.29922.5350837122875620288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5719c8806fcbb3000ceddd751fcc6981dc91904cf2a4cdfbbef3fee2c43e70d5
Date: Tue, 02 Jul 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719890722
