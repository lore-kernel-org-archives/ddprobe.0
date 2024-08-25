Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72628366
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724613354; cv=none; b=EfLLhUEKyBmGuoDTyl6wu6k6DzlL0phUEuSEdLER0liXP3oc3EcYrcCpHkopNdZONzRhEApDombnJzzssQGpGeTirD7AdJE8/bPK7msuivycMu6y9liZpsD6SmnPpEoHqID4ozvnTcgK98TXIUxzMoC2loCaVf72nIGFsaApMTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724613354; c=relaxed/simple;
	bh=BE+5e9CMPqznbb6RF54DXDDSxQ4KrptVTFE4zdhc3aw=;
	h=To:Subject:From:Message-Id:Date; b=MoqU7CmrFRI0sAjYMHdl+JlzGI0rhxU42ulJDuLvfag3exKigk1M32T00UqO2Ubx2IQD6WhV94skULlibxxgDUbipsfYJLJT/95l+30/oBRYlUEi4ftbPgnby7KE73sTEQWoHwSRkeW10HlQM3uZYm3zPf48t5jB5hiRJ6yWhEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbIwgn1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbIwgn1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE4C4AF10
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724613353;
	bh=BE+5e9CMPqznbb6RF54DXDDSxQ4KrptVTFE4zdhc3aw=;
	h=To:Subject:From:Date:From;
	b=rbIwgn1tM7supyYGd9jcUCoMIIOOyvX7Z9K342nmV1hHIq0XQu0OlUJXZFtKg6bsE
	 YLxAXf6f03bHr2CVZJc3DNniAA48ETxv+mM4XHc30EzB1rueBQXaBaJ0Ehz/ypF+VZ
	 IBR90PNAdctuhZDRw/CEZz9HojueHAc9+8IWH6rw1+YEDs/nYuamnCbdGIwz4SUOc8
	 852zGuaiu2vUqhBRMGL/qJtoViKlDxG15ehxYVjTppfogFc2wrCEtLOQF4zTR34Z3S
	 qVdFWXewxaR9xMx7n5Vqicy/iy5njw6E/Hf7YFXjYZvGh36Shzo4qLuOYnzoaRFy2q
	 +By2BtDU9XX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6DC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461335359.29370.14100138602518956227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76fe5ec30127a9077318093755fee06069424e502f447aed370b60891ecc4d8
Date: Sun, 25 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724613353
