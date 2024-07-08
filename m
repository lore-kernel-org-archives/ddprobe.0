Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53099AD55
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720459583; cv=none; b=t8qWEd0VqYGWP1w/6VXLTEr2Pn+K9Ke1QwB9VWwvL5MhFRdTcxyUcZOgKVyqICG5IL9NpVlkeVlX5daFLuQzgGG+Y2+OJwk9OFqM1tBZXdP1VRrv8Fk9TpY1clqsrfXXY4UbkhP8um99J0W0j5ocYtfMUNNPeE8Yjj4PIQnvfG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720459583; c=relaxed/simple;
	bh=M+ofYL8WgPN+6iEECS6VS34pQn6nWq0z1etiSv61w+c=;
	h=To:Subject:From:Message-Id:Date; b=lpxezZUdhv7k10oG5ubYpwRGoVFvoIm1644e9ZMQitcrlHcHC8iDzgqSB4lOZCx4QcgVsnzL8ad889s5vtTwIVGoXRwOVtNhnK9g8GLAwnnVS7Er3WKjGq9gvuXDfFhpLX7QShk7gL4+1FoZBnCQJpL7xvMzM4WBWhksd9ix9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmHrdU/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmHrdU/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C88C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720459582;
	bh=M+ofYL8WgPN+6iEECS6VS34pQn6nWq0z1etiSv61w+c=;
	h=To:Subject:From:Date:From;
	b=mmHrdU/ipioMBLVATTVRm+jpyDRlyQHKi8mmzP+nyqoqFh3XnZVq4jNxdcEvLLM+O
	 LlwUCq4UwHFzTXIvzwHrHEdOtn2dBGy4pVpMKV8pBGPL3uy0Mt85cgMWv3uAxy3Zp+
	 NxmGcJs7709l/YtcKh5/KiTtAbmX66NyawgZrZOMLUupTis1GFQyTbYMTGCsqZsDPY
	 7kD5IwF63Fzmyi4qaNlsCf/zY6t9a/IYsbrVyXMLoFXV8goHxLLZlCApaKY7xajV/B
	 /ws57PiXuuzqrjmTvj6KyfOuHhQjo5CmM3vNschQE6nT1cQHtbmGdabyHE+R5BaNGi
	 zYbzJIS83rpjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C165BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045958278.849.16109120562853502529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1f4552e008e89d75ad4539593d800e2680977e4eec0567754d565373063641
Date: Mon, 08 Jul 2024 17:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720459582
