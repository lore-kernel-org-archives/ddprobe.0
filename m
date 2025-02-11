Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F281EB192
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739258455; cv=none; b=DQ/lJ6kEt6eGPW8NB8X1eFN4mEhjnXAtnm7aC3JcKN5kmvzZ9zB+ZN7vi8Z06SvhYz62moS6mwoapnxxpWAteCPwftSv0Rg9Q3vnQoIQvlRdPJr5AzKKE2FR3LnaWMKg/kl6RcKuTExOXyUfhJmUBWzFaDvAaTbpCXzwz2XvYa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739258455; c=relaxed/simple;
	bh=I8CYqNZIo6ERsLk3Lu6EYiTCpNjzx7B0PfanubKxXlE=;
	h=To:Subject:From:Message-Id:Date; b=LzrHkFJKy61ekQr1EMBZ3dzyIsaD276pAkQt5IGADx5+bqNUakV3s7ebyZP/d6rqONCo0CdjCnfJLLQzIpHRSUBs68rW9O6nyUfuc4X5ZEsuw+aT3u9wJOshUSce/Tr8jYiY+c9l4UKr1uQu53tTkKXET8zm3CzL/7+MtffoJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYpOBxcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYpOBxcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED9C8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739258455;
	bh=I8CYqNZIo6ERsLk3Lu6EYiTCpNjzx7B0PfanubKxXlE=;
	h=To:Subject:From:Date:From;
	b=rYpOBxcdy5vXVlx3s4Rtr8txp1jPByigjNzih0c7qrtV6nv8haIUm0iN1D/Vmk9BV
	 c8Qq5XcJEgn348+V7kVZtpfqBtsob4wfcAhs2RDbruGZV3oYErKznedMmq37L6eO5X
	 xC2lw5TfaOnc2CAbFupnUQQl6gQXMtl+4wO5F+UPwUDc73g3KQY6eoS+e6Y/kloijC
	 qX8ydiCSwdhRHft+3NrgDLIPMkXnu2YS3jyWtP/DBAtNKh6p12w7fvKKyb7ISZoiIl
	 Ko6XD0wgPwgdKmbVyR3xqikNEeMRn0DrIStxpe4nT650WMneD6CEtWr/9v6npOshB+
	 xc4xAYdYlpX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700C5C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925845437.3461.9420551929613100210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa4ab9a7c5b3ed7cc75e1243c7c811bdccda893c5187d32c6f069b3fad79a41
Date: Tue, 11 Feb 2025 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739258454
