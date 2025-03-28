Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D3213E67
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743159594; cv=none; b=kMhDLUKUqPfozN+eUrQaad76Rvm9R5Kkq+p9ZozV+l3b7y7WqQLKzAKyjo65/7fr/zguEFJadCZy88gstKQTjszxP9GQR19wQw6vSxEaCvNXZBjuNQIGkGRd94DG5T0cN6vIoLKW8IFx2cfZV7NYWcpf16T/MmxlGPGO/s8zhrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743159594; c=relaxed/simple;
	bh=pg1qDj8HwCb7JwI6KDh2D2lxanqAj4j7nGx4Jif7+zg=;
	h=To:Subject:From:Message-Id:Date; b=KlaiGiLXXt/ZyBdAD0ZID3ml/G6hbl4uTDDHPYO/8IBRA0KiHqWmTDhkmUv4via7edE9drh/HXJhduZ7h6+vN/dq3U79oVkzK8k/n6D+bK2A0mDCsT6NS+8knYgxhjWvP57URgjDJryJ1mgI8+S4CVY+aJjH/d/zpUOgrkrfNvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYZs6ox3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYZs6ox3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4422C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743159593;
	bh=pg1qDj8HwCb7JwI6KDh2D2lxanqAj4j7nGx4Jif7+zg=;
	h=To:Subject:From:Date:From;
	b=oYZs6ox33iUn2RXzQiQqSlIM4LSA+vAMTeQEzeqqWu/aiJyBfajCw/BAOLObXqzad
	 J1VXwfpMWucmSHdeIsOtfMyioacUd9KZYPUEE+GYCESWgMI0Zf0gBY80dXGddCPCSr
	 e4oexrm+nNoyufyfwYhHvfvrPKsmJCXnWXM77W8m9xniQmBMWoll4/GauOf24Nbw/e
	 DLpw+yR9rKnpKK417/stV7Qrd7rNC9YkVOUsGg4EA7Iqa1H3wBvyh6vYnwhMU0PRTy
	 8VnHUngwBtK/WXPxpJxHeRYHWZzceDWqh5zb/bDNzEZ6aOuFGgtIrhKiN148+cW2Q+
	 CHcbQefUm2Q9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1287C36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315959364.9588.2447601939789498289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf776746773d514f0309096f4652e720c46ee6e270b799ce06ea832763bdf1a6
Date: Fri, 28 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743159593
