Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00431224AF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773665694; cv=none; b=SNfRZ5naIoL7gCV4lo74XhlSZFduYHAA3VAofyfIxdp+4rOAiHL7JFI6yg8ZS5pSzszh+rXKW8CwwfjoNtMEDQTtoYy5HUfTG8Hgvuw3o3XC7zI4pVCtJZr1MNUggvUyPdZeGEzJCOQE5t3sZaeLB9wxwzw0yd3NDKrIiKQEXj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773665694; c=relaxed/simple;
	bh=+H8ufagiFYVYx9inZof4zrfDrlIvmkXBpnvUQjcxWss=;
	h=To:Subject:From:Message-Id:Date; b=YBNsMWH+FctD/GXS8Wb0qhgEO3hk/8J6qIxso9AD0e4CF8piaYq32Xnrf7dtM21NFHRstiQGe1Rc+C51lTwd2r63FtkEv6TEqsPHnv8o6tc3LrFx8StJWT1TI3rfXrNf4coate8HUs+4S1m/ORRomDA9H/AcZwnYB8jafLyjmBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+KEwfDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+KEwfDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DAC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773665693;
	bh=+H8ufagiFYVYx9inZof4zrfDrlIvmkXBpnvUQjcxWss=;
	h=To:Subject:From:Date:From;
	b=m+KEwfDll35X05TRcVAgOvzYCPwDVIMffuHrae6ggrhrcmPb2nPQQM9GlmWl27u6V
	 1aJ93P+k0UlTd9IXuRvKkj6CIfVWt0aBzifoQwbML/UT4HVPmAh/bpJvENGhLiYkOF
	 vMAAZGkkIK8X8itu4S/IRacTJoLqWt/YjYOndMlivSi9YkYpS0rcNtb1EC1oNo6PD8
	 5gXLrWrEliFkOTYb23obVG8Req3GA6FO6VOTiHnjVMy7gakhsJr4jq9zdDLqxMJ0fT
	 JBZpnyCuMLtpShgAf3ARlNsgUgvNENMioNIXGVoLH4VqtgM1jMq+7Y/DO98INVIkrQ
	 QCx63HEcmZIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B8EF506C4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366569357.22603.10673482452618364053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8978d707cf89b9ab915ec2e364736956547df094f7130cc6b27bef0775f0e8a
Date: Mon, 16 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773665693
