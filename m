Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B9286436
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970394; cv=none; b=q5KYbLFEtCvjg0GXxtaFKtbhCbdKPKlujrnfkYujPX+j/uM+Ni15kr6hb+eNeJuWnC4jfiTRbhPKWLgtTD4nUWkcdPAXHoSJxJwiMQ5QZdGss/ZwIibBveRtu7GaSx5yvf3xwrYUVv9cS770r/Ln9Jh/LUy9dvNd5rl9lCFsEUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970394; c=relaxed/simple;
	bh=5dRKPg1elBLgCHGIDUovihh6rpRcXJMD1H89WgXBIL4=;
	h=To:Subject:From:Message-Id:Date; b=CRq0hyZHOp5Kn4H1lFYvNyZTYio2auCv0i/OS82fkpu6YoqXl8bqPE0RXFyR4SkLQYsS+k4LCzKvRPahekK92H1IZKEonDaqDqkswueIUfcu4wBtU34+roXKfi7epqgrYbcIjCFILdf1Dq7bmYK3XtNsjAO//q9mC7ya3WzgNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHGiOB+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHGiOB+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756970393;
	bh=5dRKPg1elBLgCHGIDUovihh6rpRcXJMD1H89WgXBIL4=;
	h=To:Subject:From:Date:From;
	b=bHGiOB+1RehPXrSWHzZCyXn1ztiv3c5nraJBUEr/RsRKyjBEiaM8aTtrhx8enytNY
	 tgbbVt35JlSBHNEnThdljFUnzp4Krv4dTSaA958MDOaeHwUP1cemnpDW2fFTqBBF3G
	 gLNy5dr6gsQ0vHfU/Ty4FW8CFIXeySJIBjhvWUeA8jcMVkrbc1aNQBAik7zfri4v84
	 Zxy8O0gWsjaYyO029qhkQ/AyECtL91iVeY4ds5s8lebqnZvBmVDeM/eG1jZH9YoosH
	 zu+Dy6FpnC4EbTaBRHbQS7LVu/cqy/5qcuwxxEUGgvMxkZxKRzfxYPznO1Ls1Zngpq
	 IeUOtdUyvTAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DACA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697039357.19618.10659090147256218011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6508c67513918cc529ec8b1b1bb96d7f692e80431ca95657c673ff8e69e33fb0
Date: Thu, 04 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756970393
