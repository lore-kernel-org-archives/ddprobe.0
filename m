Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABD5F9D9
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761018593; cv=none; b=NQ1bj5Rd2h+dpyrfv0MNkZO7jrdtys+tVjZbUDCzKZuJ8AAiBEVU/D0ACeLP39bL10VB3bL3CtPdKQZotzNlaucIvMhfWk4LRF9zEEiADePD2AraKtehjWNdNDIHc4jNhMc0D9FNMjaZNcChB+rLiij61+kaoA1UZvloTYuF1k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761018593; c=relaxed/simple;
	bh=1/ArJpbfQsXDl0CLuyEzN/gKd230FOwReWb6zHF+AVw=;
	h=To:Subject:From:Message-Id:Date; b=bW7781Y6PaXXVn2bbnFUQ+XTAajaMwBr1SqLXlNM+SQd1mYk23pCLL3tnrzF14hBhnVXlMCoFD1SedaK2rfT7X/MceBvFr4oZOlLr8wcV9/GV5/HRm4oCzMtELp/TERsyD3Qm0UdCtf2qzu3eS54AINTSmmy1cWJRIYocXGAj4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtEtleK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtEtleK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E855C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761018593;
	bh=1/ArJpbfQsXDl0CLuyEzN/gKd230FOwReWb6zHF+AVw=;
	h=To:Subject:From:Date:From;
	b=PtEtleK8c7CYvgTK35VeoAN/+Izp7ikiptYpzYKX4yDo871UKjLORhSLzT81Sbe49
	 bEV4Y3Oy9NjuvC/hGEG/5W594I/3pe+2SNYkOqkwKKdxUGBICDF5MfamEwh0V9dYK1
	 W/YjsLc/by3ncNp53MF49gyKmyZsljDD4iwQicj1gnffFtyVJ0Ww/K5e5gun6TL82B
	 HTlpXBzPam1GkVxCtBvpjS5ho+c1gQ1Tnikw5hVMpXtDC/oa4outpCZqYnnJEoEInK
	 AnOvT8zrTgbgkSKWUNPnGctvzKewtVy9QHgw8GYdcbI1fSuXFTPPaQx0Bdiw1TslBH
	 L9mCO1F6y0sow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC85CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101859358.32472.10560621479039303711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26381a30b955032d9208396130cac585bad2fe1ea4663eaddbd6fcbd55425d96
Date: Tue, 21 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761018593
