Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34168195
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734742554; cv=none; b=aG+zGw46dlek2nOGco70Ef50E9miWI2gnlegDhK1Z68KtmTdIlgZIIt69Dyv0J3NFmVUNtqubJlt2OwL52HSkPDVG3hw0A0Is8qCyehCgwE3b5aNXXYt07mraMdAo6eOSKiZVkY+hfduVVGHW1ePZXme84uQXkS073PUXGvua80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734742554; c=relaxed/simple;
	bh=ZeJwbkN67vmX+7TixxPBoAB23OsT7sMdDOMTqrJqNls=;
	h=To:Subject:From:Message-Id:Date; b=KsPU5/3P6EDdbp+Zd+cQ8IMYmHMqGpOwBmtTT3l3c0ynGejetz9PsQ7nlaYVNFBpu+lzLrH3C0NYlY4j5LGQdfjw3vJySX9/PuE2E3fIxrlg61V5t84TeksNLONTyDp8aSM2NSUgZuV3f3PaXCO0OoHR8lXbAlThNc/20eu58Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1R+oBRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1R+oBRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51C2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734742553;
	bh=ZeJwbkN67vmX+7TixxPBoAB23OsT7sMdDOMTqrJqNls=;
	h=To:Subject:From:Date:From;
	b=U1R+oBRqHe5e87gnFzi0tjYqqeqkQe38YmGEveQjl7HNsNeQyV6wAiJK/1o2T2Tzd
	 aAteIL8Oo7vuTA49NkC0OnP322VXF7G75xfP/fUQQ+Z3L0lK72zYEjAQ6P7C6Q9+t4
	 6GKlGk1GgVrcJqq2u2/E+QLBB6NS9PlhXOINV8rlSR15F2ga1l0azbh6wjI/y9OABK
	 nzu39GNlxyYGHZ7wMYbVn+ozy3tQdN7FJx6PEK+3QbLKubWiAVNT5semylWOfq7X2t
	 diczMG8We/eAeb+1MIr8tE0+5UXlwXsLuEY92TpzlRbyWepwT9qj7mbhtNAi9E7gWJ
	 k9r3r/fxWTG/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD3CE77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474255361.12682.2400917719472547970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb156f2059980ebbcca731f9e6bd56f912de3d26b7d5453522f1f6c9d13e51a
Date: Sat, 21 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734742553
