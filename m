Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680693FB1B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713039563; cv=none; b=Aj5hmlkbl0e85l9Ojpt/rYQrSr8mAmFpi3t/doGMOMKSOQEy0AAmKYHCrCWzTpKZbill9/3c4VP+R4Umu2/8JwKdKkWkeh8WoeWVeJ8Iu7FjKW2/7hFE6b4Z54OZEHSgggqIJ74JZA0Bwy5BMmKELMyL1xrlBo3naAsn8UXaeEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713039563; c=relaxed/simple;
	bh=M/bK42HuRz5A3mbVn+efr1+BvQ052Xus8kdH/w8Le3A=;
	h=To:Subject:From:Message-Id:Date; b=jA0L79pfcayJIk58bK/X47/nQ2Uf+FPJaImtgFFpQVB8tdkODnukCKWCRPKhoTRDZWy6C/H9vu0IuyNjDG43VtoV7tFgw1Dbka9mrEF9LtdRqx9hPwMRut2Mz43QwudWoSA6pqRNUEo2kc8L2IiGFnCccP3NoQT892UxcQ2Czdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+XTnrf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+XTnrf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9023C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713039562;
	bh=M/bK42HuRz5A3mbVn+efr1+BvQ052Xus8kdH/w8Le3A=;
	h=To:Subject:From:Date:From;
	b=L+XTnrf8myDcjWT9kNusywr+SB11D2PDiPk/JNhpyWR9ImeC/WoKO4m/93Hd35IOQ
	 wNvVTpKayp8KUB13wQondYpeODenu0yVjRyG5mMO3640D/LuQPiX7SggdsGMWVoA1d
	 6xXkhF1q6WXYV83PAWBw3TsC1HGSh6kux245yndh6Gaka5lVb+bZ2h78n+9wvX/MK0
	 4P0rilqig9KrOxBqlXBzmMjzqhO6tum+2Jk68xyjFDcKecsHYNjcEy9AJ8MuYB1sn/
	 SHXVoq+xXZ21XrT51+Lw/8tserrHzJ3CHjhzbFJBAh3XR4VHsYkxEUq+fiue0JBpiu
	 1ORrxxxxS/vcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E89C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303956277.9097.17919837282949200015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b89d4eaa38842855760630b13ebdc85e22cae964bc854117ab4b30399c28c1
Date: Sat, 13 Apr 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713039562
