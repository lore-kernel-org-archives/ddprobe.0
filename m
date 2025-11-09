Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0B1A58D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762724994; cv=none; b=R2xaavLEkiq9jwGIRFnOC/IPCE3wYQH4m35w2n0vwqxsz98+QXtTB1Oke3xAAHMF5/ep4+OZB0LQfrq+SGtrqUOdJEvtPgW0uDqLbfWCXL8SOGXEDjPj6lyHLMG+btlrTujccMW2NUrwQKHGYtLhmJ0ckvI66hQhm0cZPmdXOog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762724994; c=relaxed/simple;
	bh=lGD/OSX4kUNp5zC9uHDXZUhc1vyIZVi97TeKLwgaGMg=;
	h=To:Subject:From:Message-Id:Date; b=HpPLWAUuLWJzhIjEvlaB+P6rlvvsMDmG93ARVDs4ZA8YzaSDzCwmy2NkswWB90ToK3Lc5S695IVeaQbxxbK7VdFtyMmK9R6aype7Ia+EHb0hHsLip28iGyvM8TAjn8n8RAYIH1QIl5hYTtJQajLilRU1gxX7t8hwzu8ePbnMXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ2h/kgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ2h/kgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724993;
	bh=lGD/OSX4kUNp5zC9uHDXZUhc1vyIZVi97TeKLwgaGMg=;
	h=To:Subject:From:Date:From;
	b=bJ2h/kgRAt45Jq7/PfJzhxZ0qly1dDAJ8Hfp9wKPqrn7InFyU2KTdFyZoijtFwsNE
	 7UbSH9LnLvZBfOD3s5ouWipxZDubQ147nj4OtZ6z+szdEogL81tFXtwuZN/ItEsjnf
	 gh3WjG+EbUJWBqiI+4AQ/j8TUHIhElhiRu6SRIzSMlCrRBcxWJv1J5p2Q88cZguEys
	 IpULEh7ZDjN8M9Yw7sr2ww9Ry6BFOBa+TZtGeEmMqo8v7tBZsWOIJPwq6XDIvBGAP8
	 n85DRsLY4BkK7oq8n3w290sujAKy2AuBtU2z1MoarZ1hCpl7eSmSwh8/dfdZ6xbX4F
	 hqfCcN4kLubWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC1CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272499358.12946.8314029229917754332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fa9ab071682e4483286c9d824bdcf6f6c8ac3451c12a23e21a96280f01bec0
Date: Sun, 09 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762724993
