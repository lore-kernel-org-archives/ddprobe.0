Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC012E5B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754754594; cv=none; b=DRKpP7jEO8jhuPd7mQxHR7bq8nWcTwM2N0+sKfL2On7qxhCVunl3bI/V74D477goXUUGkHa1RT0CCIz0Q1T2jlj7VOjay0CaFBMv+IYJOGvjpO5XnbVr8RBIZD1p7mxSqh96rOUZnx9tmza7q5FqWFVDMNcmnOPDoyzaUMIQxIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754754594; c=relaxed/simple;
	bh=Ncx+exbSYMgAY0e3cO/l4VhmY/OFBI2XKinM5d822kc=;
	h=To:Subject:From:Message-Id:Date; b=CTtTa+0yfxlCGFGLYC/E6aelo9C5Hg5o7k2auhFHiMoQBQXkDxq1PzThaxRrlp39ZthC+RYxVYaEis/VKlTQ/ilicBPgiURVvJLRy08u4wilRIoGrivuVz3j0Qg3c+NuPBTGjbB3/Jr9a2hRNAXzBr1T4eD/5qHZv5HbRSShW+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjiaojzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjiaojzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B81C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754754593;
	bh=Ncx+exbSYMgAY0e3cO/l4VhmY/OFBI2XKinM5d822kc=;
	h=To:Subject:From:Date:From;
	b=rjiaojzU2vCfEpoXqqnJeK/BpL5jGrZNx337TAcuXLa61pjsXcyLWSi4wNwRGXIIn
	 4xgRdJxoNpT7xRW9uCiZbctjf1cD2NjT29MHjfd8HXL5DMDjTwF+t+igkoKSyzJu95
	 /sJIcyb4XTSajsbgn4y/XAwxABBTLNO3Mke9WGkteVtTJ4tObNEBQrm/2CweansK3X
	 A2HoTzb2nSU05COiYTi2u79UDWQRoQiG9SUn2ajjD3ABq6HhOwZzd03PewOa31mcWn
	 1hzXqxJuKSeXHkKX0ezN50rhJG+MKFauLfqCAN1RSIMVBqyPN8V4g5op3br2qcsS5m
	 bZ0sRTH1vYhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9328FC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475459358.32754.14578482652643052700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c520ef371722a62939212f52cd5e896e3b317d5afe260ccc907538844547516
Date: Sat, 09 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754754593
