Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C435433B0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726414554; cv=none; b=T41tXrSH6VTI1tffuIi8S+G7P06uvjx01SpG6RBt+StKYSKI/ZIY9WVFT6Puj6K2sfX9yojXY01OiTW3/llImNjVLfQPlZQPdPnDR0ZHRgyKVmSRji+pNlALJAqs4hBPAA5qs0iswe2gtrUEo3oDIeMKlQVY6RuX5jKtoD+mEZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726414554; c=relaxed/simple;
	bh=kv3nnXV7tCC1xPuxkho/PnWVSTY/W2ZpnyljP7D8T+w=;
	h=To:Subject:From:Message-Id:Date; b=ZaICWpSJ+l4qETTjP3/+f/0/zSn0D6JFeE1TVCS2Yr3bBzRi/KxmPgEH7GifJVv2Uy+pa3qZ/OkI1yUMtnjUCTnXMnoaQdvN5n2pXPYvnKJS0wjcIXS6X5izxvNe9T8GNv1mwYYYXTIWZvHa0SZFbkApetJo/CstgXZL0ssdotg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuh202GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuh202GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CE8C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726414553;
	bh=kv3nnXV7tCC1xPuxkho/PnWVSTY/W2ZpnyljP7D8T+w=;
	h=To:Subject:From:Date:From;
	b=nuh202GNojRn+WSdYmj1U2HMwnHSN0sHEPl/zJu2ytuGozavAM0t63UCD35Diex7g
	 Y2A/83iu8bvWeh1oxabjKtAdZaBItJM09PWtUcTFIe5l1/+rsQTy64tt5I04r6wSeu
	 SVItPsIBFcqI29lza1JhetCTs1PafUDpc+HA2Nw6Ivx8skZjn22EcX6lvnN37bQ1X8
	 H82r8P8Ko+3Rr23NWimnZ3d171iiaG/HxI/oCUGb9gUCuA9kw4FRktSidirQZsjuKk
	 byc9vSUPBGzGNFACQW6dVU7euVeb448EnMfbSMP0yb8pMAjYyNvQc7t4eAWIEkeGCu
	 Qecg5wyaHEBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78CC3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641455360.27353.701197190810809080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c1081c18854e33191c95aaefce74f29041ec2b8a411ac4d8314c6a074f82b2
Date: Sun, 15 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726414553
