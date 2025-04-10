Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC8C1FA262
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744270194; cv=none; b=Va7mcpf2B5+YPOjFnhmG3gX8YzRURu8i5MFIFDgjYz6/Gu8uYlfku0ultsSQ70yZuwMgDfaQOTIq3TpCDACzv2NElMbByDs6UvMproekz8TpGRgli+Bipi94l0PiyrghU+hpH39PfqScpdPAXXqjzN7L4uUObtFY3WXCfBxVPcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744270194; c=relaxed/simple;
	bh=t7ykir4UivFzwmVuo6cuioYAY8hlZrjWM7PvOx0JT7o=;
	h=To:Subject:From:Message-Id:Date; b=Qe40TqfSjoFKNb4W1jtJ4/DHURvkXYuWitPEc0sdIKhRqI1GHGOg/avcTDXR4T5/QpIU1s4OZmDwwLUOy3HQGpsL+zxsB6c+5orQUQAGToLi5w7pDzzK3FZz6itFE/Dyf7wziIx76rxTnVLq2FPo3YEuTxW0QM3LZkxnmZRRYVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHup7wyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHup7wyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7E3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744270193;
	bh=t7ykir4UivFzwmVuo6cuioYAY8hlZrjWM7PvOx0JT7o=;
	h=To:Subject:From:Date:From;
	b=sHup7wyRMJlB9OLNDs73CMrXtgiB8stV6NwyGIxhOeGpyi02chTAnSP6rXC/LdWyh
	 j9x6HPetWX+oGHYVJRQsEgQxC9KgcjTeUrdFqAcbRzKaZTHekw3imGowCnJIUCetXL
	 qXMcPiVh7HojIm5v4bzcR7APbSQgb2vMvrn/OFEUs0RUZmdl+raTmMbyLtYQZappnX
	 OQWq/GpOiIrSGyFeEUhfKZKuc1x8OkYqvN7VF/ZBhRc8YxUzmDigcZ6Af1MsO5UZNg
	 /JEic5Zjif1+rTSnp3C48rO51A2FidIj3HhscTc0q1/njMwvVxnkneQZhz0loehRQ4
	 sf2eF+N0uFFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96273C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427019359.4525.5143983314454423873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c24369303f3a5c974a10991dad5ae1f25992e1f3cb6b03372ab056a232c451e
Date: Thu, 10 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744270193
