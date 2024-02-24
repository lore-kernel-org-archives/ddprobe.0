Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F98017581
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708757897; cv=none; b=YwdJO8OOScJ8mPnRbT+P0WJUuCAQFWY6fHqJtVzHz+PLBCpH1pp+ZH8rBje06f3bzXFcRP8ZY91GFQFvHzLg7guNp7Xv18dF30/MdNm+yjf5qbEw04u5BSsBXSQNTGS0YtgN9V3Eme6Qq3G7+MnLTgU0qRcD7BcitTLOygi/eMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708757897; c=relaxed/simple;
	bh=FGWkhmZShYBXkoyx4kdxNUNxDtDOtHstqutPZuL4m7Y=;
	h=To:Subject:From:Message-Id:Date; b=d4xAplbCHzRRvrRVU7QSKD8m3hOmz5xADLlA9hWOiTfuSX8k54LR00wqvFZENFxPkiQ5zv1gBR9rSk9ANLnXcdUzbAN/36TC1k6SeK41WdnsBjCGC4RI/rCWklykkh2Gymo8yAkQqAycwktOey+2+KqqopDCo+vXrUjA0+jh0iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it2dG98f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it2dG98f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C474C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708757896;
	bh=FGWkhmZShYBXkoyx4kdxNUNxDtDOtHstqutPZuL4m7Y=;
	h=To:Subject:From:Date:From;
	b=it2dG98fA2aUhzc8gXzmRJttYHoYa4/ylm1IQ/VrQ/ODMcGmGMC1OjKF8fgTqq5OW
	 vKwE1h7VbQb/af2ZsN+i4zw5qmWLJmOimOiPzdn3/PIIACH4T3yf8w9hObjrc77afY
	 T5XTjQWoMKfjvZ8iiKZe9wf3F/20Ln5BsiSfUGhfDAJu/BbE7NFAXH8yhSxpmZuV+z
	 +mjjtbKW/6IJaPpZicIHUtloQAAm0Hdb5zBsQCawvk2hFpL9QRE8pcHiVUNkCLFa/c
	 c7AcwOwWF6pPQ8oe8LTGASyvfR3yHg0f8OIreF5RP56ogjRTd7FFLXm/h0+8I6g+ip
	 XLOtuKjl+htLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1FDC54E41
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170875789637.14063.17807167834600739410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d2fe3926bb394f098e45af7ee57ded956da7249a3cb97c385081815eb9f3a2
Date: Sat, 24 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708757896
