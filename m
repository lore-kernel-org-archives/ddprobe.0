Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E947339B2A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767884034; cv=none; b=oEnb1bJNoi+DL7S9YhQqpycRljJ4eTj193yfA9XaGP2qi/EUZ8v55qneEkCehEHDjbzqnGRJloZu7tMscxN5omJkmTk8OWMKqSmtyCiihgTJUkxelIV3sFRwjm6OPQu1n7oZKil2eXvmOxs9xhrYtG7CanxWX/S0GAV4h25kCWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767884034; c=relaxed/simple;
	bh=XjgYdBhmfVMSlHDwsBxew7nM5CvKx40UsAGvxNzQYMo=;
	h=To:Subject:From:Message-Id:Date; b=OwXywetWZCHUP40Q2QT+NLUBTZpyGU0BWqQ1RQrCdVrOUFSFl8bBAfRfDFtxRk5Ab/Vq0JYl+tL3lic6FP5XCQAmwjaXHIcEajXZSueIa0P4nEUOTzMw01qD8WQrd8D51m7woz+iv2QVQOsfiQkt8CvQkrF2tSr8eBDYXDdIMTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s90oJQiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s90oJQiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767884033;
	bh=XjgYdBhmfVMSlHDwsBxew7nM5CvKx40UsAGvxNzQYMo=;
	h=To:Subject:From:Date:From;
	b=s90oJQiLfZ3fz6V2RjF9zyA/IXSD+honrk4FVfmkGQ66+fO0N4zYQr1FWImPg5+0B
	 q5PCc9odOZjJ3uvkT//9Suyv6YkBCkuEhf7+XiGKAYinMVdYRGsVkdiVWIpSyCGZqn
	 ExF1AVNUvZK9rXlm7C3WrRQW8IDPPOSWXIZujMwywPuxhtY7I0XSAr93t/snUj+nVi
	 c95dHNoyfLNDyQWSGd+j7rRHLY5wONWjWNsRsGPWMfGaMw/fNMv/CiA/z8QjxGky+r
	 sZZepL/wuMUtoIOmRr8/kx5h9HK270naE0VjDEe0o/z7mUl9QmI2BhLjeUKzmH2ov9
	 sAqh7XgIjEIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031AD1D467
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788403358.11701.6161362837843000301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e638572a546a0d7da4897655f7195532a75e61af464cb9c8e5a24d2ad40206a1
Date: Thu, 08 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767884033
