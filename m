Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384FD1B0430
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745724594; cv=none; b=CronOa7rbXbu7a547x6/nb9NAGIgXV3MuCgr26GutiMnUBDLlEdAXI8negrRe01addiBUi/hkj5xc0Mrojl1uhX1CMaLK+cSTD3Xgl5u32Cj4+AIPDbOx1q4n37joaVI6we/BZgLPbjdm2cRuaBYrcZQyJYmpOXzZhTnImD46dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745724594; c=relaxed/simple;
	bh=Xk6ZqtLt4nU/aj0kMGr3GJ6G9DTw2GRatvLfYwVWBbw=;
	h=To:Subject:From:Message-Id:Date; b=Mvyn7WWJU2MzXn4w3hWi006ZbgUvjOCSdOIszmeEoFY5ZespMjXgV1HUpu23T0jHcB0IHwCUsfdzGFJJ71QqiUqdWrosMYCD92lBQ5LtNGzOzgBOfwIWxJ4a/Q6tf/EbE+79Fsdfo2gJw4Jt6xj19Onyqk/judTNr1Yox+2vhMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swWHdh9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swWHdh9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7513C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745724593;
	bh=Xk6ZqtLt4nU/aj0kMGr3GJ6G9DTw2GRatvLfYwVWBbw=;
	h=To:Subject:From:Date:From;
	b=swWHdh9be1ZPdZx4YLONgXsHUhIeEUcB55nPqdkv019vsP72Q/xVAD4QHtzAQCiGF
	 lgxJqDo5Y1sAVd2eA7o8U3JoGFkXI3mCZ8havLD7fBNP2Lx/kadnjkfQp2QJXPI7fR
	 /RZwY073Bu4FO4kJGI84sTD0dJhGPppHPXXCfSnNphipV63UEVfq1bIghnf6+G9Dcv
	 uh9BV2HLl4R2yaBkfIPqXgxGDVmGhKPROytQq3hMkhGpevF9OumaaPHva/u3duWAVq
	 FwNKmchibMuUxh+tkRL07t2BkVebGRA4mDohBuWR2mMXgCN+acKnsSnYUpPMJCVyyy
	 GpBDJAo3+DRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F6C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572459358.1208.337053102163875205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3581c8eb687521d53314a61ef44f3805db10a2d8f71726c807f1fed4cb4bf40d
Date: Sun, 27 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745724593
