Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDCE32B13B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786488634; cv=none; b=MAs4At/D01tE0nHqKuGfQleubVZ63i2W/L2Wf8/qypG9HBxYbWdD6hSK0mWSBPGaAcRAfXKgdZi3hYs2Y4ND0rG6Y2ZauILgDom9HeLQaYwUGE1k0OliEVRYUEkGoy1eTY4CpLF6lqOpADLJUS2v1NXd3CJApBYYdN/TFv/RRjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786488634; c=relaxed/simple;
	bh=wfrNCZCWHMAJ5aueIIUQC3VGJ+2UBw2NiRMxyuUiV7M=;
	h=To:Subject:From:Message-Id:Date; b=gUofhGFOSZBxv/cV88Bf4KWMG7wDReeuBT0x/8v3+D6N1kO2izc/iISS0YhVoE1gUkj3L1WBCIopxxxXKwfcR+fzRbWIJEeFSenuq0537ceYeC7K83eN0dxJJsF8joztFTUqnHN8bvsmuA6KlAWY9PX88vcSMronRhe5PMTTckk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCcZAp+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCcZAp+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C052CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786488633;
	bh=wfrNCZCWHMAJ5aueIIUQC3VGJ+2UBw2NiRMxyuUiV7M=;
	h=To:Subject:From:Date:From;
	b=gCcZAp+8lmbhWUZyBUC4YRDXadjVQrQRPlV5+pWcrQK1lJyuRSh0NfY3SzSOJRQBj
	 EHUABA8s08b/DdfE9ef8ndDYM8Z5u5tphoQdfkFAVgKUQ1AU8RibTcDvKtwcF9Nf28
	 w8VCpxwY7zjqcutb2VS5vxFz1IQcdrKES/sefh0iYIZ5B6jNL78OCwKNzSt160FYm3
	 6mjnxyaqIB3bup48fjflqSphgK3P4WOcBTCOAdTY+xCVOe0p5Z5UeoLLgEGgx6NjSp
	 2T4IjESdfenhAyDr4u5EoSyP7hAT3vMjmDGmnkV4Jbk7AQuTE3p7vbl6IphKU9tQGd
	 UPUPi1TRkMZ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9423C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648863368.29945.13559603449641957909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb91ffafdd1ecf0e5062d47f3948657571fa427698d2d560269f413a3d9e97c
Date: Tue, 11 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786488633
