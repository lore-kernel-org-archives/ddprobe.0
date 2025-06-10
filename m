Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4C1A0BFA
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749537594; cv=none; b=Mi/tXUBnk7i0XtowUALK3cWS5y6eToBxNwYFYCQKTWt42APXp3y03IZEGp8mx8UuPB44kNu+rr4qWqa9k9KXh4gdNLFCLahDW0Yvu5febLbfGNeL3XCUhs3n89QOSrLPDDnChZ3nz+P3FlSEZu4SqiqIFwloQmoifGrZHWIn28w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749537594; c=relaxed/simple;
	bh=qlylv1UAY+q8PIY6JYMlr4NUxBbzh0d6zWC0WGvEgfM=;
	h=To:Subject:From:Message-Id:Date; b=mwSpGKKAf3tIOF3Mb/se/LIV6ig3atKJRAqN2/pomdAobxRaVz6WTxwkuSrOIqBm3MZxJhONBimMMp1ijxADh2WslD8e4co+faVRH9zaJtiNMJatGVzqbIL0jacAGg4DB39Hjrsu2q137AwuIbUP6WJkKViB1zZpeyF9xRcK7M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ+fZztH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ+fZztH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4063C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749537593;
	bh=qlylv1UAY+q8PIY6JYMlr4NUxBbzh0d6zWC0WGvEgfM=;
	h=To:Subject:From:Date:From;
	b=FJ+fZztHkxv0luelenSRCqsKfIrZ0gx0Fr7wVWYmJLLnfbZuMptzls3Y6PRmmMjCp
	 xBulY0yITTNI2AEn5Bu7DOl1TNJSY16az75I4mr/499IsWAV/eSvW5xktxstvKNBBo
	 AcrOSrZxzs2HKcAuNFSw9ZeT2MB35AVBWChFRp9UDujWEEST2Edw+3oGLRUQrkQLk1
	 4x4O0sggmeZynfPDmpp0QOkZW0L+d9FUxUOtMkANoGtduv/hW1FPHA3GgOZdrGzz57
	 0Wrls25d2RbVmeP54CNFFZSt2ZVlcIBAGnN2bNcjx4VQfQHIBrJa1UbpYz7PyqoqQR
	 NLCyI096+DLBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F7C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953759357.3133.862402379553264393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08c9aa5d7375b9e0957bdc2f7ff5cd562bbda26ae4597d0ce02a22c3dd111f7
Date: Tue, 10 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749537593
