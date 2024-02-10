Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1053CF66
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707564497; cv=none; b=KYNsTyhqYvE/Akwipyo4Fy0sKlCKHn1VfkpT/wGTDRbq2Twi/d7Wdokmy+EiCUGKu4sUI6id3CYuAxGE68sBuY4knwrTUWiOBJ5tU7d77WSf4UZKq4yQ4kzYPB2Qr2f+08JO+Gq7ouHP0Rbk4LLIi/P1YHPs44PRgWMnj7Xpczo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707564497; c=relaxed/simple;
	bh=FbJyHMDSvXu+MTNZLl9MwUHIsdvy+zqxTnnHLP050ow=;
	h=To:Subject:From:Message-Id:Date; b=I4Fw6G1/IJQt8cVQygUQNMQqxsDQCBkPP8taWs26uqBUvRB9DE544n3ipr5Wi/a+w1TGTPzgEJyBP+L21YD9u+sQ3HZr0cJRXww0y6oRIJ3QB+Gi/sgsiy6skcnVJWi9z/u6H3zyWZXW8EBUS7+NCDE4sP5Uq3cXUsRmhnBXhIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psDqChWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psDqChWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80890C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707564496;
	bh=FbJyHMDSvXu+MTNZLl9MwUHIsdvy+zqxTnnHLP050ow=;
	h=To:Subject:From:Date:From;
	b=psDqChWE3qIbxl2H0iLYxPCTlSuTQF9azRy0/W4oe7qA0hMwMDpw00eopBrQ7mUYg
	 PrI6btRX8PYLP8YJPBUNXaQ9zQTxEVFc7a2S1FEgpCbJ+tTbA+NeqbLREg1tMzyC+B
	 eGu2ePGEaKebWjaG4vJvT5KIIhO66oSbeVVFPooLRgmPq2dHUMXm7Hyh9I5l8nTZfw
	 ugLljtoGwumsEDB7pwDI6KMLB3JLOXP/dhJXoM+GalWMKQyXlFmh9O0JhpCnnhYBWN
	 h4KUGIu77T7/aXO9sPeO8Wv5ETPSSFJGhUHvVH7XZFcndiNtPn6128mbCEaJW/91RV
	 41kfHkLw7NxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F41C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756449638.4083.3369196878591762192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d0d85021f6b839e857bedbf4d1f46dd48ae83f37c358b219208bbb53518519
Date: Sat, 10 Feb 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707564496
