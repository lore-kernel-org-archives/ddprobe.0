Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2537D11C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784895634; cv=none; b=GGKmh8Ab66lkrAp2xvdZGggdyPWwhHDUPItVPfp2hHdb9jjL0DJRMysqc8n6blTxnsu7HSWIX07BSvFkzGMPeOViKoOWzjJ3ZbotAsFv5yqMWU4fp8cPPajK3hcOft0bMGMUF9b3cwUhPWHc0J0h2H0TFWBMqfZ6thAQ1t/F7FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784895634; c=relaxed/simple;
	bh=ebHHki4Neos4jNi4rO3c8pWe8Jq6KojW6POR0mgl6fc=;
	h=To:Subject:From:Message-Id:Date; b=Bqb71J1wJg1I92DVU2qWVUD63Td4vwRzdQET5DsPOZ8ZHee4W1i+g49pkzdTwtdGpFaSL+JrINVOQ1q8RfH3GLpExqFOTEGMsQ3gWD9eeKKy/XmdwwyEKGtHvKIqeHSUPOHtPJLYBKEPduDDtE1pxHf0M/wvflUYQnRucYrOu9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djJ/BOoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djJ/BOoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB823C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784895633;
	bh=ebHHki4Neos4jNi4rO3c8pWe8Jq6KojW6POR0mgl6fc=;
	h=To:Subject:From:Date:From;
	b=djJ/BOoBeAikr/8mu3DbrAulR4ZrljLsP2dUKtvespiPN7kzDVFp4PQkIn9I4QO/L
	 A+S9itJRJ7rJ+n19A4H20T7PmG8VTdBf4z6JVKKPPCQnhU1FJf8FU5v2Uqf/Irjbt7
	 LUPsMWj8x0OpKif1wyX7bJye3gF3GAtkUb98bAuXEGoGmxnM1jL9m3LmmaMEQX+fQo
	 HWqSRQi6SMk/pa+iXLNR4OzkipFuXJlOcnqyOihU9fX3ekfNy5/5OeE1iJVp2n3K44
	 Ewl5KGjZtdGF5ViFoNB5b4wUAUHdxQ6nnUAmoHuM5uOBy1dbX0mjFVw44zldXnsSNx
	 mHy8MepCZBgDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A925FC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489563368.17424.11588392605082101742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86201a7b7dd3c9567efcf69293ea7c3eea203d5d0fcec2d060c14af62ce1061
Date: Fri, 24 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784895633
