Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A841A267
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774183494; cv=none; b=pYTOHMvBLGgHxFgJbuPRf0Lk2z025w2QADUGIAhYrxCuW2X/C+2DzObV9U5BIVdPSS0KZPup1f1p7NQy8THGQicE7WOoBNYup2a4C/H7y856Fci0q4A7D9bBv3CobljtLd8ZhcB9cE+7pa3bCoLKpb5MFPXfS/tP88FY1Uahzo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774183494; c=relaxed/simple;
	bh=39mhjayrsvlgvrmIrh3nY86Y1FIoloTemsWqpeYiY4E=;
	h=To:Subject:From:Message-Id:Date; b=jGfb6ieiHN137q7ojcb1ulzLpMridz9Pzor+Jkta2/qHlONoUIRBP6IwSC6N9WHkKtenYc2iWPQBP3npnvLxdYDph2t24xkOtJhYzR3itnr5tr7SRmBwrHEj/UAnyP5i4QrMMUaS8XFaQeYSb7UVaHDXJuYikuI2uCKl++l4xd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUqxbkun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUqxbkun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A749EC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774183493;
	bh=39mhjayrsvlgvrmIrh3nY86Y1FIoloTemsWqpeYiY4E=;
	h=To:Subject:From:Date:From;
	b=TUqxbkunbp3rQFMA4AhgVoMpIec2aLT0aOi0WsQZxwGs2liIoltPLt5uLFFKFUcca
	 YbMqxSWYlZoXVSniDFhckj1uj9WPZMCzxYdItpQsUWoEIPCN4Bj2euvXkt/ZBYfQxS
	 CmDNjx2FQhy5yqRFHVvsJaDbkF3iPMdhpbPVTbzABcu5OaYNUBS5Ht9MD4Lf4TGx67
	 10Q//tjfHcCuOsDWeKN7lGJ2SNHHWWFvEwUN5a74XlqPpJCZhVH/br80IZcvdVuLsp
	 jC/vBG78bRvBm0APug1nF1w7J4SZVeA2vZSsrH9Rfwz5yQf9fd8Chq8lQTTz4v+U0z
	 3frvvzr0gzZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B37FC72BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418349358.10854.1089152677179548827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699b8c0e9d82321100b8f51b5649c2a3cfade6841e89d1d84fd8a22691668560
Date: Sun, 22 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774183493
