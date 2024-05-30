Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687C315B7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717047263; cv=none; b=Oft8rJHNsOFTFBhlc9oQ8UYplvD/Fjg1zzN7P+nIz/LnOF6yvtgArqYEYNlxJbAToXLrEuyDbT/R1eiKYuXVDMWMz7qrc5O/PpLtjawD3AWGLezLIs3FVUolQJFSSo7vNIrx3aFVJctWdX80TWSyIsGw+BzDxryhABeldVlbe+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717047263; c=relaxed/simple;
	bh=ofyHBmi91OsdqIbRLIqFKOfvjS/FYn8xX/AJJnuAZWY=;
	h=To:Subject:From:Message-Id:Date; b=KbMsQI06OfTi2kpYZubUFvuxftFyDxNkzCIX1t31gRybLRdtsDaxq7YnVKz5/VbQkBeX0NzGkYQObpcgcAJ7bC/le2gvkkDFc0CQr2mGG2w+RP550hibnehICHZxhR9xMsjXyRLCFFVLLDd9okEpP5NmZQiiXgwTMHfNtGTRDDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmCB/RuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmCB/RuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DAAC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717047262;
	bh=ofyHBmi91OsdqIbRLIqFKOfvjS/FYn8xX/AJJnuAZWY=;
	h=To:Subject:From:Date:From;
	b=dmCB/RuWvGjHLNvw1zc2tA5K3+YaEBWW3XmJUKItcL1zpidQwWVrscGvT8/TCpe1R
	 9mx9snZpLm6TeFQ5JFVG0jWmXUi3xFoGATDdREKqblX7kZGOanvpkaCeuUoy80SuW5
	 bole8KLH6qTxBDDRXSSe+qoXZag6biBCFfQ0cGqTjasI52sNcK5OZxzD1dJ77PXpZz
	 EOF4TPeVP5XqGKrKrB6QkEFPQv5oYVKW9ieFFJO/QjmkwL6Bc2H5PngSJS2TUFFhiK
	 yijA1L/xFov6ON3RmTRbIBKvDOqq3j/3abZJbd1vYGUl1CHnIVuGSOQcxwp3TwbQmS
	 EPbDCXQph9a0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C090DC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704726277.6016.8555469794455261829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d50d0a9982d8ea6ed1aba4b72692db1de501d4ec129b58b9d492d7c2a7f218
Date: Thu, 30 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717047262
