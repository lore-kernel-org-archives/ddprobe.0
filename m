Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FDE137750
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782627514; cv=none; b=OoLFuIOvQuixB8IMdKLac/GVW3sBbApvpBbuF4soeWLm77IBbvBi6hL7mdImM9El7/N6ner8JJmLUzZvgmTVw7YcypEDMwyM4HIx5E8EGtN6JZmWtp75EA9h6B8K4wBpXxuzEfPyIlel5RbhCitBHDRHl51XlcHpzEwv1iIs18k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782627514; c=relaxed/simple;
	bh=Fy3kNa6071ovZvaa3LD7FNjkCwIlKhtGBs4pUBLz23o=;
	h=To:Subject:From:Message-Id:Date; b=jrMrM9IAKdfJ65MsMybv5W2jZmIVHIVeU6mV4ducoG3lnkaFLf/OvqbsfQ6rRFOB6/BXvQ405PNXhVB3XIc5Ntug4u7KdyeychgCjN5x5DWxcxsMO3yJTcKvgcJfITEZ/KWa59R8hfV0bLVGUx1U+tjSqDopeoJ2ct8edpsM1bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmXLWtV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmXLWtV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97FCC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782627513;
	bh=Fy3kNa6071ovZvaa3LD7FNjkCwIlKhtGBs4pUBLz23o=;
	h=To:Subject:From:Date:From;
	b=DmXLWtV+UjjP/AYs1J8HNA3POxx6v3ch/LK+ETYJ/UvnRjsQgBa2bN6WgNEGzYhkd
	 SHmBRftQX5uHHDUNeun/bonmarwLdG9918G18T+qcgkJ9Ap3eyH7TNf2x48nPElK5S
	 qN9jlGtPxlmxzUttJhF3aaKHENZPdPFwvO5YbvQjw93S1Y36gItu+xAFBodtuPsvLS
	 80Tv9/WFgctZLPwzu+oq4E8VUzOc4pVlbiKEqc+Ma17jVAio0LVX6t2EDmnXL120fv
	 BoWBucIjC0omEsvf+sfu82hBVFU1+ftE8XXU0zKP8wo9U+n30Ydbd80H4QBAfDrfX2
	 7rVvJje6EvAGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0969C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262751368.25502.5187347711632414198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5236bbbff43ce7595e93d3835966354ed3b284a0a6f44cad26284c5b19d84bf
Date: Sun, 28 Jun 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782627513
