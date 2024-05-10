Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B736ECF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715305943; cv=none; b=lzGQ9Q3DCOifflJowAECll2C7Ti0VEPZGPkCDg4Xd7BgB6BXLyk/cm8Bfk+SO4YyOYUCFd23McvJhu4N5nCx/D71G3uKgjXrCttn5d/THqHmStnIade7+cQkr89hQNR30cWP7gIT7Me2kIgQaOw0WJtN4/MYRsZBj1wTVafDH7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715305943; c=relaxed/simple;
	bh=bIC8yuBfghdvNwzpPUIzEhXoWJRYdEKqvxmBjwQMyWU=;
	h=To:Subject:From:Message-Id:Date; b=mY140MTjduJ1pKuRGOJ7/k9GaIjlmw2XDGFOtm/Dnw31u3V1r0bScwn+kHk3VQDkfoThLZAjAf9QNN3o2+aLBU+/k1rIfWoSuRpmeveFGFnwUePV8JMtsMUYAZziWeyMnXMELjuLfI5sGLUNIGYLXWbGnM+wwMw5i2ZaUa6F1zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLq6/BBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLq6/BBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56D7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715305942;
	bh=bIC8yuBfghdvNwzpPUIzEhXoWJRYdEKqvxmBjwQMyWU=;
	h=To:Subject:From:Date:From;
	b=dLq6/BBDG6MeQcWgMRadUvI4vnEfd/coMomcTGx38jEXRNCi6SGTj3GJgkgPJXbrh
	 y/p6+q+YVtlnRTZPtNTtz3nw7OCD+n3G/mjL449Md2nxJLbPrqcNG2XWQchiC81pCB
	 TkPdLDdAgOnQwOq82CMnbhdwXjN7+SdTUMKovMLdAVVnMFM9+algdsw6NfqLtn7Jza
	 iVg1PxII8GP6ccjT7gPBtkv3+6W7d4rWoiqwwwVWW3mi5KzzodHI1NgxxK8P4hReEY
	 9fO5FB4RsFruu1C7GAmGfOcSi3mmSmABcruyFy7IvtbaDlSdn5uBO8pF7TtaCk3/tI
	 GIHQEbawAPv+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA07BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530594281.28967.16741436388699491368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d938d0a93d1e32b801d7891956249e6eea733c88930cccaab2411265ada210
Date: Fri, 10 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715305942
