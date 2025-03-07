Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E170217F36
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741351734; cv=none; b=aV3wrwBH/gPh1DfnIMLMQ1LUidVPkm/zlVf5EQUX9RJacrL+rAZSbieiE7VrPMSF0y+8A8OEWHQ1Q3Qwt8xC2ZdegBwsZagu4MudwFeQNDdyKL2JjqrIfWUFW10Ad/Mo0FnG8qxgjD48GKrp7aEPPuvxrwLsNo1YY16CkhgsUlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741351734; c=relaxed/simple;
	bh=dMkqpHqH/kUcdbsxZvlX8Fz/f40vgWM+e4OSVcgFAdw=;
	h=To:Subject:From:Message-Id:Date; b=dzqXZeL8/xrFqc/7pb06EcIWaFzmnNPTDUkZBiW8dsWz3MoTDhYuPMttjj8ta9apPKSx+CXVns1HZan2r2w9YHZqdGuHTUQiJSGPFnZhjKyAgBpj60YfwvXQzauubr/55KJYxOXiZWz5PgU/Q+gNS1curhinX5QOnnbCuWD5KLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecy13ptA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecy13ptA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A1C4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741351733;
	bh=dMkqpHqH/kUcdbsxZvlX8Fz/f40vgWM+e4OSVcgFAdw=;
	h=To:Subject:From:Date:From;
	b=Ecy13ptAGYl+5IA8N9gIP6xBdmuD3wwYUI8Mb9htItyx3HMv6lqtNZImIv37APRF5
	 MvQTlCH1yOC+lKD0b+KdpVpVgQpfga2bJ96EdZ1/tkZ7b1rsiOx8FHPdZCBuBuccvn
	 C7ARt/GT7V/ekI8SliFiiod+X4rsHeikO3vH4Lo5L2QaTJSyAOCtzRoJmnf+MapqaL
	 TUZPkzCH/s27RNwJqY5FjMapqU9ghNGFnjXJgeSf1DElNsqF7ZheR8zdX12+/gihZt
	 2QGzj010PKY8KlbKPUD4Qfm310n4t2DFxhVhnj7kCw9iC34iH+xKA5UKtCDo4Nod/l
	 HuPSD3yzjy0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A6FC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135173365.864.4171572800828383153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e972f57d3750860adfee013a9d93a0dcdfb5056edf220a1f89109d277e0b718
Date: Fri, 07 Mar 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741351733
