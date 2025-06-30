Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A517A30B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751302794; cv=none; b=KYyDtt+sBrEV7h6uJZF6w0qOqhftgDAWs88CJhwUGrWh46gKvUohjJ9tD07zhDlZkT1lY2ikjNf8Et7UZ3I47R/FQdqU4ftWxTUG2QNBuQbrFe8CFIaZ3D76j8RCNkRs/LWYhmJKrlQDXOF3TwGkl9F4iM0+DXyDe64cSy1hu2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751302794; c=relaxed/simple;
	bh=suhXzLufRyadxJW6I1w6e005uCrGJ3XO37eWr7YQLpg=;
	h=To:Subject:From:Message-Id:Date; b=EvDOzYlGMb6eamVNxBIxGWFC1X/1vzJf6mGBxkqgaLWzEgoKBPwRbcxuQC5NwK8sbVv3Eu3ik6PZdHn2KZN3CSlSAc+LHjVVgM7ZK9TJvXuoGliX0st+VDEZ+ZjiaauGhYWqaF18CS1/kMAfy2weiKd81mFYgG4iFwc9Hbhw99Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIE6CDDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIE6CDDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2111C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751302793;
	bh=suhXzLufRyadxJW6I1w6e005uCrGJ3XO37eWr7YQLpg=;
	h=To:Subject:From:Date:From;
	b=aIE6CDDg9bH5dxK5CJfc0DIJMEHr4pbY1q2W7qQoNVGRqIyUw4g/5sgJ4R67e0ams
	 9AQhZH66ShCSFJiSxz0rr7Grlzc2BzpINhOoevlHZRIuC8BVDQ8gUuJCkTERC/KWnQ
	 NKaVxarTawmv9ISrpqWjuTUEnAPqfy437CXEWxXUJldkzRhOB8YsrW9/u8tVUGhZ5q
	 LUbIIbQ+MdRSSi2kITy2NZGgeSmH1R2IFEgZWaobENW4ZduQm9+rMFKYUiHix5ICKs
	 P4Ch8ZBgMuwja9ZocE2BGHp7Jx4PYqtaDpSUpRAPzMQ7+dqgtPeu75LqZb8ytQT4xF
	 QAw0L+5ezdUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF07C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130279358.27054.2873435841285004623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be112292fe35a304730139040b2ee95b7f1c7fda3b0b45edc0e9461437e400a
Date: Mon, 30 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751302793
