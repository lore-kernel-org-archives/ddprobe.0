Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B259194AD1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737413154; cv=none; b=hik5wWDaMD6zgAssnqP3Iuk6Rh/ZB0r2EuSz9rQGlifTAzdiIzojPhpHbhEy+TBb9A4VQIbwSvrou7amxRLN2s2Q5CRmxHJxzC1cTlWewWv8V1rkw0U4nLGZnUEtuiMy5ugS2QMrc4SrDd9kp0lLaTsbCHocTmP655/SYCF6YKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737413154; c=relaxed/simple;
	bh=EkpxxyD40YCtqCeuANWiU8EiCm9Qkvd06Qydo51x7nc=;
	h=To:Subject:From:Message-Id:Date; b=Oe/9vRO9Sx4hqzk3F/aLdWYRS0ohrW+YiYxYTvofRP9185Zxa7kb5DMhB3u70A/hzZZ82Cx3dvW2bsZVb7DsR2Ao99Bfk6SuU59QhrLSx1kxlxEfTfDXzAWp30I5fYwKOQ8LpNNlIICTEwymtUunmPh4MUMs2NP/Wo9nr9Bixuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkkqVKMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkkqVKMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1889C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737413153;
	bh=EkpxxyD40YCtqCeuANWiU8EiCm9Qkvd06Qydo51x7nc=;
	h=To:Subject:From:Date:From;
	b=QkkqVKMWihZ/rIIAlGd6Ml2bqx3XrVLeFbmXrbdF24lMu0pGFqrqQxBxiE4YIEqYu
	 8cy0q5FDQ+jxr4GzR8oqp3LITmf20KvCDsaR+WhWZnIDfBw5hb/SD8VC92SVRBAuCv
	 y/6vqCjttsJawpMBm3rsK3Pbw9Su/rVkaLCXFpKs+skg1eE93hKcU9ISvcZLunwsZx
	 zNPcZvp2Asbj2W0gOrrS+C4fgUgJOp21fTdLpLGdwCoADZ9bUYL6XCL0RMqFurHJ/0
	 or7LqhY5GaNNinCbY+l+E7n6TB2ezT/weA6pS8pPTnkA7iKawx84E3JHwF+BYRMhVe
	 ROxctq277BbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D4C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741315358.20766.10809873418434391326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf5e2903abf4e73990aed2fed8e0b3fa1455097a2e3b31ec25bc65554aedcdc
Date: Mon, 20 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737413153
