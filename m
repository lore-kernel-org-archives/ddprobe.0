Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342DE1459FA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760303394; cv=none; b=tnoFTHX3lsxXsOlM9jnClXuEpzEdtnhSxGFnBDKi4Q4WwmdVakIWZAGxjK+jZERqRkEYd9IKwRpVNiVC/wbFonjNdKbEBNe8bNSCtXNxFBBWxpC1I/ejVjX79BDQyV+xe3zdqL+GUTqUAkPFVaJla6ZNd4MnDFD3SQn5ZJpHWqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760303394; c=relaxed/simple;
	bh=ZrRU0zEk+3zAkUBT/yeClFnqaYS0bjwZXyxckoCfro4=;
	h=To:Subject:From:Message-Id:Date; b=UgpnaLkpXrpuQVq7S4t6g8MSmaTyy0+gY/z5g2c+8hJkkaez2wjeUe/X5bR1Uw2j3J8jnGrokbcmjESjzjLTw1zIeYpcZWqGLoyHc73tg9FV2TeT4Ty6+7WzUl4u2POCvAT3LUjWu243+q3ABQQszY5BkNm61UmMMo86TVYHxrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUrE/Sjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUrE/Sjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760303393;
	bh=ZrRU0zEk+3zAkUBT/yeClFnqaYS0bjwZXyxckoCfro4=;
	h=To:Subject:From:Date:From;
	b=HUrE/SjdOmzBVdDrMChxqvGmHM/2+OGZS6iPBWTQskXbPinETq2Eo2Z4unuoBNBvg
	 BXs72qEf1zVMS4pU2URcGjm4fSlHZ9uKnol7i+elr5jlgfWfu7ESEoPVSH+1JvMYVH
	 4NJMV8Cf9TcVJxmm43G4EFJ6Lc94iIuMYihy5Z5Sz6eHVxM4rfCUomQpviG+WoiqVC
	 gZDiBe8O/6nJ6iM/NJReu9CkfRXTfKycBDQSOelW6sCiBq7TCUSz1okhQeb83wrdvx
	 Yktpk66ZkgY3UMqMOfE4sPY7fG5bDePLMqVA/KQikhXyQKotJLwxcnR+vBMPFx1Pn9
	 yb8IvNPEMpGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175BCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030339357.19087.11615132789754560165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d7e8d5132055b7cf44db0abe56a210aab3a52db1dbdc47b2e459e5b05c5d62
Date: Sun, 12 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760303393
