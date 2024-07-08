Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E9D56452
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720479383; cv=none; b=jKeS0mhtgyu54nMS6b9vA/5E8grmThfDPO4XV3T+SKjeGjCXEE4z8oLEm/fzElTyk9ZYR4BC8DgtLjWA/UF4VCQ0mZ/zZq0bkDTjBgsDbimFGPwN9Je0y17dotaM0GRfDtGMkqlmceUeXN1isiTDISX3Lf44/9a84L5UW68ySeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720479383; c=relaxed/simple;
	bh=CupiYX0sQ5MQahjcTBu5aHFXRflCM6FPA7ka6ddcm94=;
	h=To:Subject:From:Message-Id:Date; b=kyyyswAz/w+b7sHIUqVGewrnyEOFkqOMBtuJSMaNgqTbLNy7/k2pF1KHj58uO2RFxZGXpCAkIzBqFxe8GdSrScX3+cuUO9ayhD/KZYmb7jDtQmtCCD7hYIaBLX9pxNQUMpn3qoPLTq+WUxEqwf6W63vluQiATYnwao6LOHd8wu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFyxpnaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFyxpnaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6A2C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720479383;
	bh=CupiYX0sQ5MQahjcTBu5aHFXRflCM6FPA7ka6ddcm94=;
	h=To:Subject:From:Date:From;
	b=SFyxpnaXaUGADBN/9XqCYpWVmrZXZsSpvgi2BIikp6uztQGqNTo2n0Vmp9fwNF5gH
	 5ebQNCMicIcNN6hLUN5p3qZYyWyJX2CuhzV90zReE3tehyI2WE97VMwbj0EJQoPDUO
	 8oY/PafnDxKKhc03sPN5A8ZZlZwZb2lsCmefgUOV05xZt3Pup30FaeAErZsATyF/UG
	 Rno+yMD8bYQj7+yXKuDcqFvMLxk+RVJZxaHj8Q3+q+PIeHcJCWjV6kzId3zCkN1y2B
	 0VSa7h3w4ouyobAEfXo85YOsI2NakUeIS6HY5pEzxv6CW9pveTPnta2TGQD9qEHHTG
	 axJ6qK+QHsJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F51C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047938283.4028.6990945821725086973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d0055270e30320dcd7a0f0d6cfbacf91659b3d0f5a356aaf47d0dd2e5a7be0
Date: Mon, 08 Jul 2024 22:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720479382
