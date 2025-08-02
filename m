Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27626347DD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754123395; cv=none; b=hAbwcSE2GCr94LhS63lryXS9X2Adt8n7L9tXOdI+5VyyLCtKwmesD9vvnDbPMWoPlzb25QKAXD+zD8Mhgai7+vTmfeBAqMGFhQBKBYt3hK6cWKbRUBTkv563gPhSnprZzz5yGGZikFwyrSNjm5vg++8fbwGePvIX+Xgxxt5A4NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754123395; c=relaxed/simple;
	bh=kcT2EYf19hjwJmMzf+mo0XkpN0mWMkksIRPyUQiwels=;
	h=To:Subject:From:Message-Id:Date; b=EXD/sBeyNlybXEZBO0u99XZqQREERWENKV/Xg/8Ba1YlbSZnHSnhlOr35AKtIq19M202/K9Ycbb6RO4nMBaE3xBlUx5vS1tjpMmmumIj1NZQwLvQfSegT1OfyOpHhCtIO5NjVbRhXPEyM2lxFJLXPHhOT9BZjHvDwk2x1AOL2ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLydv68u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLydv68u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754123393;
	bh=kcT2EYf19hjwJmMzf+mo0XkpN0mWMkksIRPyUQiwels=;
	h=To:Subject:From:Date:From;
	b=KLydv68uliP27p6UevVmLHojEfW6gxpkpXwHmBx+tMl8vP+FvF3kUuapPShYubsGk
	 kEaukoxz3pRH0B3vOQ/W6Z7vNZecSn1YPBiLHY8tcU4qU6T7dMrzYkFiUceGXDtjkU
	 VAolQ9YzfVDfGLXeKZSoYijB3/CD86LKDLGabkKmjCAG0PyUm0OE/JXfuY/2doSDR5
	 o+YbM2yDvdz08fM0wFm2sGD1VFZtEUiq/MSvnsl81QHPCGBJ9ytYdBUJysnZMRgCP8
	 7gkyY+7UjAdVKdJ/jZKWwknyvbp25pC2zRECavXBIOfGXsHqqzJUYN7+Op2w6AVWxN
	 9ce6DjgFy96nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011BC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412339358.15155.12567767679175205071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c95651ae8e3fe0351c067ecb4c36b0048aaf1d0a74d9cbaa5317f2a3bc0424
Date: Sat, 02 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754123393
