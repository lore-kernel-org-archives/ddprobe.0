Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BAAA932
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728237955; cv=none; b=cQAsRgcLZ/AJcfQTfkjHdjgHfoRqtiayTs94by/ZxgSvzcp2KWiXbBYsMIRstM8JBwev3E1FeyNodHEu/DZN58GBaAK2Ob2EuXLeW0+268fGLZP5MFc6xBgJWXXwsMVD1mMFRocxVcQpKQuXPr1dVVN3UUhN1Q+s0Jxx6JR3gyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728237955; c=relaxed/simple;
	bh=DpljbCo5bVFTyiawcb3OONueE5PJgk0hByAlqeoI1UM=;
	h=To:Subject:From:Message-Id:Date; b=ZBzhmNsBmjzYMWogCR9S/VQQZlgX9Sl1I16Pq9pbtnlj9NJ3gl2cQ7shutL3yOg1mlCmZ3qZSm6KvOXHZZGN1L0qHGKROYZ9l066JEHr7PWk3hezdQB6hq2BgNSjEqURiohIzYbh8mxa1zg0JvBmR5avFc+NwnJ7kXNVs1iLnKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiIUFt7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiIUFt7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CB0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728237954;
	bh=DpljbCo5bVFTyiawcb3OONueE5PJgk0hByAlqeoI1UM=;
	h=To:Subject:From:Date:From;
	b=LiIUFt7r+pfCb1U6+Ak0GEZ9n0HsaTs0LMpvYF7WJjeyaEuQClhrEEKqFguuXIzAj
	 rd5xN0y858dHTpoarGsllhE80Xvm/2wwzPZnk+4Q7yaO2U9aG14qv+wj1HQTyNZP63
	 iMQUPC03CLIKxt2lKkf1u0mvQh08oplY1a7C/QiLDHW4m5B4EeoEp0YxnWOIyLto7l
	 WLHYHwhcu6I+rauKcssWzU9T9k4gTtOPRhHLdVs4Hgtu6hrJBNhEqpqSReZyg9xgsZ
	 wI7dldSmMpIf6uHZ+HM6NJ+WsqyPDvlqG7hPPgusNiiFwF+IbAoYJDUWntECagZHbz
	 BXWMfIPxBZOVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0A9CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823795361.5937.17324927293944323899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6be9181fbcd2d39326892e3df856300d7f8b3aff8ed5a10582284045f54de62
Date: Sun, 06 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728237953
