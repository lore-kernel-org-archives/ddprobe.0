Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5343B1D5142
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736807754; cv=none; b=k3Vc3Uo4g+ZaLDE5hdIHn8KLRxL8wGhoIt2JldhPelDEASyFNNR4hcjVY69/laD8FF9rTqbiXhapcFT/lHvd+PeSWdZFABxrXsRqrbCDUs/38PEQ7k8NCuW9lT1KjSPdn2EYA19UV6wYvL7x9IwYi2BIwNnl+Q+BLkuPe/joy2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736807754; c=relaxed/simple;
	bh=dBEwE8UP8qW9G3aO6nnRWUJy71HpZscQsji11pJwf9M=;
	h=To:Subject:From:Message-Id:Date; b=bbLw5DstJLIT5V5xIO0ZDA4FkqTBzSRVSe9+7p4ieJmBFud5rfStSY+JPSiP88qrRQldE3FrH6krDUb3IWwWFQ8BvtlkpzPJlZzDA7CsDau79eRq2HCYXPdl5W4IuUU+G5svrwbLvBbG92XukEY7xxmbi9lx/gg1Z1C4iTayN0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9CBMhi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9CBMhi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B179EC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736807753;
	bh=dBEwE8UP8qW9G3aO6nnRWUJy71HpZscQsji11pJwf9M=;
	h=To:Subject:From:Date:From;
	b=R9CBMhi1Mv1AIZErahGdxncuaSl3cqjS7j3t2e8FhJfRj9D+hgF3OOTLcFxIHyN6D
	 BWmkdG311wrSzHYnnC/iBGeRW+JIYS3n2FHmW08mS6u0fv46KMqGqmujmMFFQcRmU4
	 W2MyMe4tozef1YnQCmaqf8Zr5Mg1GMI5wUZ12skc0MJOGavEzEnuCGCDt/HtZxq+gh
	 qJMT3L4jUspF5qwjFJxvt1qlgzCLP3D/me3xV0L1zF6pBoiCsZ3mLgMx+FEsstnyPX
	 UCyfz/YSms4B3AloiY1TWCRUBQgHQ8lYO5GtCBbzP4/yqjrX2uQ07ntvYQ7HvfODmg
	 FvVxWtfxEMwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC7C02184
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680775359.28308.7423199183595629297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853e261752b4f0504ce957b095c38fde644bab8ff572bed937d43c906c031531
Date: Mon, 13 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736807753
