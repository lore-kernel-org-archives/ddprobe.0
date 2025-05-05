Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CC01E48A
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746433795; cv=none; b=sdjh4O3pK+KNgCn3NJ12iSPjtzGVKQSBZlcXA93MGGKhxH3qUh6aiFWuDOPnc3VzbWFCHOiyEp3ZyEtngAYNu21QwzL+RIUuLl4TLuPtjN/Ppo2rfqr3M6QisEPfncPQAN+/LjFLxPBuy2zAqPjrfaYwzHHAjbNB5rl6EUhZkY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746433795; c=relaxed/simple;
	bh=P7XGf9oxXxMQSa+ldivxxVMrhYph2CNaNNJjTNd30J0=;
	h=To:Subject:From:Message-Id:Date; b=cyvOMdp7us2aWygsgrcBzrbMOwE39T4OW8qWBJXXaSF7u389cIHVuip9mstnp/VWQEumIm/Gviy2PET2Oo9M98Kw6SP+6QV8VKPTBVdevGrOxZkWtHkgMSybqSZrS31fTVRHujaLsqhO1RcnGoV8oT6uHPU6hIxGVLzhABJywGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRkDHmBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRkDHmBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746433793;
	bh=P7XGf9oxXxMQSa+ldivxxVMrhYph2CNaNNJjTNd30J0=;
	h=To:Subject:From:Date:From;
	b=FRkDHmBKS+Unl3a4O4VBhZUSnU74UyGDfL1woFXDNMD9RIwvO4IuklainALF4N1bs
	 BN/hPSfnrqqlApTliYtfFPZApsPaea8k7latdZXQcml7dykFQj+mOZuRfRuxSFByu5
	 cIv+2ZZtvHQFYJutKi0oC+BzamffLxf5DFeuIyP9GX4HTCGYj3Z0Ixy8+BUirEf4Q6
	 pXJm8A+waIJnqH+D0lCEESQVTLWK7e6sEcyQDAX0LzWrEurU/zddPCoAeHJDsOla5d
	 BxLbFmh0bBMJYb/b3noZMX/s6hV103F+c4CJ9TaMJZdmV2YvcZhz/dXP0/vtqJ5bn+
	 TAgK/kD1g/leg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF9CC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643379357.19456.6332209238009692614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e9eb5d374df57356df5e8c7fce647acee4f9d9cd13a33dfc47794f97120b11
Date: Mon, 05 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746433793
