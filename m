Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C717BD3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750471194; cv=none; b=UnbbWRaZPH/7KXVs2vFW1FnMu+XuRaR0xUj5YNZFaYbsIyhBbs474nRkC3tw6oGXap1MiAcUBHx5VQnZXBJQuA39fWwtYDLe9UvxQwDJyEI8OWpcdVeoKI26BT91t3108dH/pMyy/kaW1fN7WjpdPyS4hLbVkLUOQoKvwErffqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750471194; c=relaxed/simple;
	bh=+mMlSMJeWGnB1xuYDBuUD1+NEueaC80rzgV4P4K6pi4=;
	h=To:Subject:From:Message-Id:Date; b=Mw/KelN0m4wRCaglr5Dy2Tl+vSzwJZ1XLlz6ysKBK79joUp4WxLZ+G5BMYZ+1w5B2ibVqWa4c4H42F9nsrfgbdYlCIwwYhcM5pgy2qhSEFp5TV+kuLrdHnVLzRpVsUZYBK+zgxxZD8VTyHXKTiCaA9aJXsFgyuE/qFjL2EsTfiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FN+ggbPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN+ggbPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C828C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750471193;
	bh=+mMlSMJeWGnB1xuYDBuUD1+NEueaC80rzgV4P4K6pi4=;
	h=To:Subject:From:Date:From;
	b=FN+ggbPA/rEpc82B0YW9GqTQnrWXZRnlcyKZnzL8vz7IexyklMTb6+34RzvWYxF6o
	 roxTmAtKIOHHwH/z+Z9J9jMxihlHdh/2umgOIiKOW/QGwGqkAs6wkeeHPN3Vjiscro
	 KGBOninZ9ALknzrs5ot4pGHmJAFK1fSG5Bj0gTtXlxct/WbQgBKPpXFcII6ReMBwZA
	 7gq5U2+3UWYGZOAH03cd5tfQF/hYeVp2NYoMxryB1ZGRJT5jHsjFGsog/zqpjba4uk
	 9gRNdeZ0GTI+Jd+f+nKm1QeitWdDF4os15zTaYu5nJZckyzJjB9mYhRPUweAQ79SdQ
	 ZIoBD4rv/58xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E833C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047119357.19730.12945116106339057334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7937d4e3d31415768537901fa10f16dd308ae32f2837b4d4d006f21a949202
Date: Sat, 21 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750471193
