Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AE398FBF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764885174; cv=none; b=Wf8+8nisv107p/x6/TPLIs3tSQRyKUF8AuyZZ9GcHJfGomhK6RX8p1+36hyYOndNwSLhSQueJn3wk49gqa/jSI/VwvkUSIJ1yotwud8rWEZ+gQDpUTq8u0C7fzWmYsD4VW5clhxYNwJco97drLQetoeHg5wg2t5GmoGMgtn1UV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764885174; c=relaxed/simple;
	bh=VbzspZdFKsx9TCvsyUaU0LJ8DR3PsrG5krqdKyBazxg=;
	h=To:Subject:From:Message-Id:Date; b=Fpd5l0+n6FbjNYn3DF7gnnlHMYB4v0FyVm63hsLIO8ur2voizdsBXJJjHJU4fCZECn5osggXp9vRI5MdeT7j/8jb1pUZCHQNOvOET6Rh1CdMo7c9uengssVknDguLvuSbGvp77OVzWVUm/t4AwRHIJ9PglSV/zJ7BTo/RtcTkvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR4l4dIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR4l4dIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5583C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764885173;
	bh=VbzspZdFKsx9TCvsyUaU0LJ8DR3PsrG5krqdKyBazxg=;
	h=To:Subject:From:Date:From;
	b=QR4l4dIgPCkg7JxWZSueOQiDtj0FJ1zZeULw9UvawCrWbchP0TpcPxoaLmtTyxz0N
	 HmHHDFdeBhAj7tHH6FZrVo1Ic4PyzS4lxGTkognhorNe6Hc0ddHZfkwYTHvAbyaoeF
	 7+K6NPPgtAOQHmnhGadObZkvbJAf8NDhebhjBNrz9HNEVSa/UY0S5993SskLG3iPik
	 RKhmg2A29lMygWbJgxlFMb02dnPGZXIIV9ulsWE9WIttfZJJceahDpVFZe718nl+gf
	 sji4O/AclVabvIhuNxi4dbNE8zQXIPCaAQpvRgBRLDUJviafP0JGmgL2+VFOtBA/jl
	 xej6KSuVNAN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B0FD2A55F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488517358.9387.16022223330474176629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9b2b0c1c8bd896403ab003a4c4cab06013b95cc1137c06fa7e08dadb3d5a3b
Date: Thu, 04 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764885173
