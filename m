Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6DE1F582A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753298393; cv=none; b=mCnClHfzlcNZJ/izvTJg5j8wODgUc2YVVsWp/ry+Tnc1/fPZaNStPosUDkah8sDwZWVbZfychYQ5L39B7X6VtRZ1dzsiuYRCHj72ilJxyxLz0GHj997xL2b/NF7Ptsv//zuZ7+GWfmUkak+BLm8TiRwTbn2qAA5RKXwcTYq1ivQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753298393; c=relaxed/simple;
	bh=qkSoTRYmV6J1nB5SfcJTbJv2zJtrq9swvSXFqJBsm8w=;
	h=To:Subject:From:Message-Id:Date; b=JDhN02uZC2YD3BWM4ADuxYHmigiZSUPZMkSo6pm2gwGBNyVCRGU4YbjwWD9Vy8K2V98wU0CXtjtsjf3tXV2aaAEroLgEmXQYxjdaoqRi9BukkQ40kqpxwpIV8fXum5kj/WSmuXCuMLK3tgkEpZoQyHwUYFLcRFdBP9/DrhqHwKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3i0Yert; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3i0Yert"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0771C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753298393;
	bh=qkSoTRYmV6J1nB5SfcJTbJv2zJtrq9swvSXFqJBsm8w=;
	h=To:Subject:From:Date:From;
	b=A3i0YertKUu06hwkhMfLRJBPdZFbYai/WZX+NrIsZ9QCqrVjn2xnyWxSqSPxmP1Vo
	 ndtYI2olauHSsIBcJfMsJqTXfzPqjG//kAP4rbYC2VwW0ncoz4fD810ZagzxbrWUFN
	 yCSvn1qoNercDrFyuqbgb+8UN58znk7qw4NQaGROhI5TTKZaf0ZVv3N4Vqd52l4243
	 sGrL8P6iFDuvfN5Y8InGsHDJFIQ4doIA79BbC6Yuh5YAFTn9wTFmwVJAnFfT+HTUti
	 c82zakzQ831jdv1JIhrtfm2M7/Erb6cNI5HkGbtWmNMu1O2b2eX4ZWXOlMjZ/hd5bR
	 IV+StD6Oid73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF7BC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329839357.12982.3735509821057553399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0dbf4e49720ae910dccbfee1ce100d7cd8844a0f605c40292f197fc0982f5f
Date: Wed, 23 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753298393
