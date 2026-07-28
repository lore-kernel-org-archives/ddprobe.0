Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8AD30D418
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785272434; cv=none; b=rv3ZNcMczatk8hXwa4AOUEr4rOu3rYcvXGihX7S2exzBbjSEG66jnvN+Rw257ol3f8LWMF1djFJGOl5mQYibYuW2OLSsRzqcU2VtA0Z1VE2Aw4Iyc0t2sGeDtNuPpRdpDPlmTwHKON2kZgfq9Cv8UiTkc5yDvBR0fkn7IHMDvXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785272434; c=relaxed/simple;
	bh=MQR/5lUkNMn2F0UfrdOOvl7Hir3reax1OXro6LFV7Nk=;
	h=To:Subject:From:Message-Id:Date; b=OGoslBqNzFOQVyUUByhKjQcJe9L6ax1se89KdKQnOBsGMGA+Q3Kaij73uEe2A8QXhJ6Vyqd+4sPDUrV9FRQh3Eb2qK82hziUTPhNhQ1WnRHFv2oNG3VtgOHmRwA0aIchsaQTxOxNvKOnr61ubaaHGuqVVIULjrklumwVEDrllms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7HnECai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7HnECai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE1FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785272433;
	bh=MQR/5lUkNMn2F0UfrdOOvl7Hir3reax1OXro6LFV7Nk=;
	h=To:Subject:From:Date:From;
	b=g7HnECaiEozSfhLf5J/zrpt6zWYdlyfAOwuS8LkngxGqOJ5N8/qb4qKgY7QiS+CSA
	 mAiax000PazhcbQmxZbM/fTnwMNVMTwczs+UIpEwiY2sj/k64fbDeodNQcAYLcAiJk
	 RFBD3GIyupq7ZB34NIhlY76qcuo+dG2ibQHmisTaDZT6BZfySHAPL/8Z2di+sWrQI1
	 cCtjJS0JzPnYiOsbLtCe50pOZlLEvloySc9w6Q4aQe1ejlu1wEMEEJJ3GDca27U+dr
	 su4JerB8Jkah2bmjkcanNqyD6yN+3MIS4ZdpNEbRlO1ICVHPypsTOYrpzGXtc5GSOJ
	 qn77phglBojgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98FC54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527243368.8558.1910912229236851020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a246213c4276bc4c50366d51086fb652f5233e67181be14f3cfaf64434ea2849
Date: Tue, 28 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785272433
