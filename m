Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019E294A16
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751015994; cv=none; b=ohmRp7LvhXFXbZCCV2SvBcoB3ZpyPQ0R4/Q8TznvlYCVbqvi1eg+G0Lr7uVRnEHFsORqBD2wnyyamhvznqK+IDH48acPeb+C5rgH4z6hO1eWQuVZL/1fWzp8mVwAj/wi9KFmowU9YujSbJVOQMs7MIrcNpagVdH4V6Wjlu5Uwhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751015994; c=relaxed/simple;
	bh=mGJTCBuT4ZxOsnmY8R2tQux6VEfaVjDqwVt9bRi/v3c=;
	h=To:Subject:From:Message-Id:Date; b=UEqzj706negD13ktAke5fuz6M689IIwMqKWYXqb+8bWDL3OIudxmQS0y7zpNhMpuv0c9ZFSKwEwsEeuA1tSwXES1ecyLcItK4S4jpv6L+vSg6jc+kU/L9cjpKopC0Ep2cV6ixLgjDfmGfyqxPLEg2UtHQywdD3m4LcJz2cAxLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STmGYhWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STmGYhWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2472C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751015993;
	bh=mGJTCBuT4ZxOsnmY8R2tQux6VEfaVjDqwVt9bRi/v3c=;
	h=To:Subject:From:Date:From;
	b=STmGYhWIQGaPnoPibSmNd8tC+Tx8TBYec26ntH9oPsisXdkLxVO07hHioMJl5ZN/f
	 LejPD3ARXKFs/8rg4GU3wwquagXppSE0kHnU9lXK63oYbTGI+Nov1JAiIbjDVy+T2Q
	 Vyrj+oftw8sTd2H+gf1yKtw8UmNiIcLPoFZqvlfbywpvqa7jg7Ts7jKj+3K266qOA3
	 zWZYZFlCw6mH+Ayl5ty9vPdJb5JLJabzyH50sRl/vDTAKYsiHYBxmyMFfaINufqyiY
	 oPS3Jk1vXsEhqsZSSS2lvBsXMM7b9z+F+aymd3VptvbMPCC0FMzgeaSVxh+HAQVhVj
	 CcEGsbb5sYy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BDC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101599358.19486.9832811716290393254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04387d3d387fac5dd9f58e6bd3c8c573d9e9944555aeaa0c0ef0db8b2b537ea
Date: Fri, 27 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751015993
