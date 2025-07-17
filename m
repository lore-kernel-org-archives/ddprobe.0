Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F728A410
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752744594; cv=none; b=W2nO7TQ4sHYc1F4BctHlBNfJ7SigJWbwkYhEU31lT17dy9CRomBu1MnPf+AbQz6aHDNT5RqqhF5oiYO4Sl0In0uI6wvdVQFpVUfvBR1mO/128WkN9jkCV4xzIOnuB+xzFgYeFWO+ZRSPeEOwBCNpYljPKUDheocTt4icHiD34VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752744594; c=relaxed/simple;
	bh=mAOSB134BG058PyChM96cbU+T0bCAgfCc+fEU6HljPE=;
	h=To:Subject:From:Message-Id:Date; b=Cf6Of+stTnmps81Crjrlf8JxhGd8Ew+F8Wnj/7AQB3FQc2RR5f2vTwJqw+gJMBZGFJ9PFswM7jBzVHs3YduCWEUF6W36k28gBSdORvnKCi73JsHn7uUiviFW1SZyHXATjP9tHkz2z0R1aOOyB8nbuG09xblZeE+KbMACPmp+3b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkbl/62O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkbl/62O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752744593;
	bh=mAOSB134BG058PyChM96cbU+T0bCAgfCc+fEU6HljPE=;
	h=To:Subject:From:Date:From;
	b=Zkbl/62OeYlvnr8Xh1SoEXOhDTuZEEBQGJcOAm+YxNDYSoOprcJeg1AFbTxl3za2u
	 nT6i30s7eMJKs8lBrLt2P4dXwt6XA37OvYCdCc0TjbRGRq43+HgDmQFtXvYF1Gade7
	 9mhA18Gd391RCsHnIpTHVWCmy6mIQIqT/oHjd3nWaoatIUZI8egal76L3W4BlRGRUw
	 ghqznOQbIzpT/H2PWObcOjO5+7bIPwCN9fnk0ney0s3LuX0kSoW9bCSxTd/mrdHpEV
	 wFVvZnee++ZnyFpe2z2e287vyJlJ7xup+p2/cb00oF+TzJKnfe1EJFMK95drfGaJNT
	 F79o6yC2EynmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90357C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274459358.29903.9490232121971025118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ead50541149d121f94c88e3c2aeea8b27597ada067686f4edaace7da1841a6
Date: Thu, 17 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752744593
