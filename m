Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E423776
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725214554; cv=none; b=pvmjvcSI2VawrpHTVdGfrrhRJcYMfQNvNfcF2CELEmF+WJ/U9qZ86NEEzF9Og44QmIP6fVa89A5W8cFtXA8XivKL4arwFlE+gq8nYWs/HlY2LC5X5ddAutCsp0LGv5VN5R7uNwTwlob5HPP+2qUH+MwRj1B2CdjzipKi75WvV4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725214554; c=relaxed/simple;
	bh=eZB37PoiqIg26jvBuMGAuuWDR7IkeFJirFpgsB8c9Uo=;
	h=To:Subject:From:Message-Id:Date; b=VcBTDJQFMlWTxLJg8khkVOxiyK8lP/zJRzSTw1LZt+wZHnSd5tBO2TiT1iWpHWMpTavy8xOvupAtBz++fA+oHWImc7cdMkaORb+Fvn1D9GRn5TYDljiAH6YVFW7QLZk3Exzh/7ehuSKmRLKraCLT+wIzQwSkWRJBZhCHz30gvWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrHLYqBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrHLYqBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9B1C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725214553;
	bh=eZB37PoiqIg26jvBuMGAuuWDR7IkeFJirFpgsB8c9Uo=;
	h=To:Subject:From:Date:From;
	b=MrHLYqBwkorahwNFBa0DjnMpi0nCVAeJkPb/vAL7cnWasdT6jde/pSOnaIVe80Yso
	 NP9kD01thuq9FnznRfKFHA0jxb/9g1UtTwWWlYAX3tREqc6r00Klec0z6/9CWHFBdu
	 zrlsBhJkbY3L1RuhzBTCKVOIskasqcWwZcMniMAVHkImBPbNTR6xg0Vk7zIvTa7ArJ
	 qJCcVXeMcvr61/jSnJWcZh06S1JsEUFeW237Fn3Dw5TMXLhENHb8LQI6ocmT5/3Mj+
	 dRHyeJF6QVxAstyILlgV12flUgR5HA6/vDMWB0miXpj6TWaEGWroOTwlydU9GMhHWQ
	 uc2SNr30tdHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D408C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521455361.25834.10677387427086543804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce77a71246796d7369f8a2eb200672cd86ac598ac9f72aef10c46e2fddde1494
Date: Sun, 01 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725214553
