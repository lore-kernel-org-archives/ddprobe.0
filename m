Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172891C1F13
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759437594; cv=none; b=jMstCWYo9SrQWDOCgF8N615o5RZtKwOR7v5TypL69h+7dCyUyTrfrXu+Lw9Ztm1CP26qyv3aOQqtKCP8yMwF1TxkIqH3QO0Gjc6ewvy4+8QTYCEpPr/fBBxn7NhxKKntWuZsjvilvTfG3SNxQ1HOLii+iEYaW9wkngMtASn3LhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759437594; c=relaxed/simple;
	bh=OBgeWrvoaG/ERaEh+TlUh/JxLQUH+3vBQy/nt0juqAc=;
	h=To:Subject:From:Message-Id:Date; b=RO0pBKlyHypx/2xGJ9hhxP+D0awPN1zjJn7QNR0Fn4GJpCx1TBqvm65j3hQKoSIVCEaTj9YS5ZbmYvdhrfVlAS4zxkh4iKUX9oUM4Sipgc6yzSGltEikHgUvOGXgBPF3kHwbw3xmBgyd5e3K10jDaNhC9WN8Z46ZE+oVtYKrtH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs4JlfCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs4JlfCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E864C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759437593;
	bh=OBgeWrvoaG/ERaEh+TlUh/JxLQUH+3vBQy/nt0juqAc=;
	h=To:Subject:From:Date:From;
	b=Zs4JlfCtHs4IpQ2RaZfkTJU1Udnj4XjMHXecwURBdWXFWK2t8xlGUTqavinHZvYbU
	 q8wX2TIXDCibkdJne2u0oKDPQIkBxsGQjR+q7OfJZnAQKUvSSSAQVy06yUlZwrsF3c
	 0VJh+xO7fBJQDh49A7mTwIjMLeRR4Aa7hg+xJumHYL4luF0dr/j9Z7yrHg/lqEI/zK
	 az3XQXzpxzEjHH8xxbAwNCvEAE2vnWQjif2fRN1yrtMQPnnjpQo+VYPfIPAvJeTsoq
	 ALFQSwoiZNYJz73gl+ewNqqJ6qL4xWDtKUjnr6Fdlu/3MDt2dBy+hiwDMNN3Jrg28C
	 C95a9cI/G01jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC6CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943759358.3382.2504582268470030459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b174a23346c4e703ee917d7a2669717c60eb1f573cb9aff6a16e8e22c1bd0715
Date: Thu, 02 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759437593
