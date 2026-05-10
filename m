Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE96339844
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778447433; cv=none; b=c6IYBZRbNlDPvtI/bO8uGDpUE5upMJ7d572EnOfKjKp1ASnV3kc9P39jzfxRUYHQI9MaiH7VRCNKIxuwImBjJ9m06/1bTS5En6qI2WVXNN1GIDx61fsYidQM8EX8aa938X+0v8fBGJjlhCqjpD5L5kmcdjyuvYzuzyOhV/cM0hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778447433; c=relaxed/simple;
	bh=BbZBlPeCqB8QXx0i567vQP35j79gnJsJQxjmftPomUA=;
	h=To:Subject:From:Message-Id:Date; b=PUVPyPuz04Jp6Uy/ndQuMtC7shiK00K4DMN4PS/xPVEgvKLrwUtWpFTe4Tpouv1WAIgnBB5iZkaPnKw9H9PyHSZfT+vRqPgZ60ZagwPO2vGHKoIl58YrNXqPgG/0Y8GA/H4hN4nG5Ljwb55IrQsCe3JBKy6QLRoNJ4ziBJLiwVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYrNcSIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYrNcSIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C251CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778447433;
	bh=BbZBlPeCqB8QXx0i567vQP35j79gnJsJQxjmftPomUA=;
	h=To:Subject:From:Date:From;
	b=bYrNcSIv0+XlBP3nhK+titO56fgrNDppyAAfJfk2If9ZQYd7f+y4SF0MHA7oMW+A4
	 YtVDFS5paUDDouCyUEkmCCetNCmQAqCtJsnifNdBdKKHt7c/AKnhrdfyk/Gg+CFuSG
	 B1ca9opR1ugF2KIz4/JuZ3NDM3EZWO8xQyRpxeFH9I1nwCDmXj7XnOyc8qjKX4kAWk
	 vd5OJs5hI8knMhuvO4h4rK79VsIOZ1Ifg7leFUZnwPUkr0L/9/K16GiQVPO188Eg/w
	 GE8/zFmTccKT3qF/sx2S3PiY6tb+nkRnZ2mC6LxCQCY13uj05tb95QLHyDXLud4BMX
	 Z4FDO46vc+QyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC04CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844743368.26685.11215908605896028340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1548c531b82065ddbcd2f4e5beb04ce55a4d8a62d3cbc19ba41d6b86ddc42c4c
Date: Sun, 10 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778447433
