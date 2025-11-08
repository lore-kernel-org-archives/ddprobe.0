Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A826CE0F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762579794; cv=none; b=mbD39CNT3p0ogY8yP4TcWDRCgqojevBu9hLHlbsMy2uDfNQll6ka3t3aGvaJQ5/RwsnXOk1pub+ef07lmqWH0SuUe3OZSFe7T/DA1WSw2zq7ezUOOLVRDk1zlU8wyJFQ46VfwICY43OIqPcVaWY95zWM05De2mUQNvF8v+fCjbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762579794; c=relaxed/simple;
	bh=Qiv8IoEhYgm4u1kNY4jwGjoM4JZoq88MACh6s6KVx5Y=;
	h=To:Subject:From:Message-Id:Date; b=J4ExHxwfLKI4VbXsSw+H/m6t11RN0Z/Ps5h2henD5uCBZceE18tGEx5O9orabCcU8pvX5Nuld1bCDiO4GiSLjYcLnmB459OcYSb1U8hUkWS73fP7Z2sgIG8gYGlaBWUoDBjYhNSmcq7LzVQL4XjuoT2pMTmSITER0bJEQR9ZkHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUovQIsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUovQIsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BEDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762579793;
	bh=Qiv8IoEhYgm4u1kNY4jwGjoM4JZoq88MACh6s6KVx5Y=;
	h=To:Subject:From:Date:From;
	b=uUovQIsENACh/96nCJA60Xf8FjPECbzRnP+386+f3qLrcP3cBQm2AxJl3yhMH05jO
	 ArLxACrXBDIqKlc/j/Ub0nOrPgNX6ILT9xVN6J3OHxPOqW3GBG9WVsH6Cx14ILWBIG
	 onPRwFon65qbQ8zH8oWM7lwPe/r2b6Rqgra8k1YQeCnuugFd2kCt8iw/jlsxNvnbog
	 Kem5QJM71Ovml2R9hEU8EP5Ypy348qlVllvD5MUdSLMlBLPYurrx2rOUkQLmM/MU/2
	 AYyOHUPjnw0m3u1w+RrJS7b7Bp0/E5hRIsnREz/NoO84nyG8iy4gyoXLLeL/eoulVk
	 Bix2pnlQ/udSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BECCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257979357.5407.13525593307085217572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2977d10c1ddfdea848050ff1d8233e5ce9be4566d96bc45efee5db2c017bbd43
Date: Sat, 08 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762579793
