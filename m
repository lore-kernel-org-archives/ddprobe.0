Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2D6208A6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705573697; cv=none; b=S/0jPcu2v39BYmkkSRt59//YV3jTT+fwpSZDCM4biIJ5mnMImQ7ewRDZwiWxQxwQO7MYhYKxLGR+sVGwSnGXbcAobCwpFyoKJglQw6OEu/w0lQHJF0qyJ17n0XUnfIO1PnnCIVeCglAudkyYz1DvanVIfBOMRKoy5iV7kgTZi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705573697; c=relaxed/simple;
	bh=4zkd+ph5NCHbTidfByblDHuVydMl73+QSq1s00XRcEg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=BzHHPBbHXRUO5d5PI/CHiAH9kfu9nmwJF63xaUrKg4pLGpOMQACkZnBjVzrgge5tGxIS+kfQYik69FsVgMF0IZe/BM3JJWBCA5RompqgHarZ95PRQjqKYwDyweu4lWTjxWHKvwqhuavFGMfpPo+Y987LKT8/KLEKO7fxhva0ZCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSKEWZDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSKEWZDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83502C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705573696;
	bh=4zkd+ph5NCHbTidfByblDHuVydMl73+QSq1s00XRcEg=;
	h=To:Subject:From:Date:From;
	b=NSKEWZDr/WV5hg2LoR2cxRvsGtvkNL1b0uX2EE+Yru4KEES2lCkVUuc+vYaFrmi7n
	 jnZLBr2fzdsDrvZMN+9C08zAOhVsCfHfvzIR7MyJQHkU1iu60s23s7fn2wVbnB8B+w
	 AHSD5enDLIPgVtf1BOoS4e91wD24UeW2t9n10/uBoQ1v/rvzKjiiOyuiV8k4LCrRKB
	 pyGa4l4rzyO/8ZIf2YJEs/k8QKBexj5F0Jd+AjvCbktKM48hV48FU2e1MEVuUqyJtm
	 seHmXUU5x1Lj3F9arZRNrnjFlvoXScayZH6hMo4Svg7E61p15Z9THABEr0B6LJUs9C
	 8T6b427Xi7zCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AADC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557369637.5646.13740638392656718966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a3152d0e9c56f9d5491f91fba6e00cb140dd890aeee8d6821591614a697d37
Date: Thu, 18 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705573696
