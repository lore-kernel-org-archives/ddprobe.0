Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42311A957
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746327594; cv=none; b=ZPr4eWeYgE8b79LlYBErAZA31NklmJ7lPYBI7nmQQmenQ/Nqy5FsqWMCcGdlvCCgCQ8VMkMSU+ZLVMH/rG0knfjfe16q1u1XaY3i/8TRC5xiaKc4XknkVHtaynfrP1U7xCP4ODMPdSpLSGd9HkReC96L9X9GuYSXIVcvRUSdaf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746327594; c=relaxed/simple;
	bh=zdigyXa2qf/n1cCzXw08sqxRWIKeq/w0V7JEwcFrN+4=;
	h=To:Subject:From:Message-Id:Date; b=EfrMZV1zK5a+AMMluWf+5gZtgn/9qbnVfojFZfmln9h5kjaVL1S21rKQAcmqslMEqOP+9YLr87C9l1lmXCUTBOsyR/QL5Vp+rj2bVzO+3uVgsykamyFoq3RJLoU+yZAn9uaY9AfSq37940lgJzjOc7Fa8S8Ak/bMK6uqZBmKhUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSYRH48p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSYRH48p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C98C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746327593;
	bh=zdigyXa2qf/n1cCzXw08sqxRWIKeq/w0V7JEwcFrN+4=;
	h=To:Subject:From:Date:From;
	b=SSYRH48pOlZS1h6cJmpAUXN8LiiyZ/IFKoGtTEuy4dPhbzdVxPeMR16Bi1RqfBlW7
	 1jFiyuZr/Xi1Yxs6l67dp+V+roNn2xPXVyqDPuDHpZfi58Ym2hEKew+XIfuvL2GBjF
	 mIoY0J0ZgzA+m5EzWEtdOPGrAXabgY3npZHbCc/c2d1lEku9Zku6KwZ1oFJsxxEKVn
	 LzAlUTU+6CbDYECZInpNbfv9yCN8dPMTHo1Xc2YDCv5k30d4mOpQwZlVqMDXl89EHS
	 bRn+04yYl2jp4BusFd1DAg/WFMh9XrdeRX4Q9eD4ZgAET3KRdAbLdbieEH3yGTPOId
	 UI8a4zsDBnaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E02BC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632759357.12138.4228846499748597726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183de8e19a6b5225793f9ab2c24638572c0ef1c6637a2afe08ba78a221b8ca85
Date: Sun, 04 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746327593
