Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F5D262A6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760639994; cv=none; b=ikFkEi+71Gzt+XWSfi4n69apmiS1f3EIv/dRPbkdfJYSSmJ0YeRCw6TI/ApNRmjFxYcQHQMWC0mqJCorPDrltorivaAbTrAKncQ3DXmPyJ+GeqbA+GpoYIoKSOLFdTglbSV9ZguiN6PW1gVbJWr6yIP68vCG7O+ia849oZV8sqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760639994; c=relaxed/simple;
	bh=6cpEBXc9glYDANlQhvAur4mvbEvL/DXwSzcOdrOaFr0=;
	h=To:Subject:From:Message-Id:Date; b=HgESh7jNb06o2XOqwJn7UMX3IlhpH3FWv9VfWX55hXYPshCbE61xgTI/wVxAC1HzKXsNgm6Dti1GgljpQKXjig9haMlOd2hY8eALuUVRgfcfo2+5qDXky964BgMPpenY9Mez7QI/MLXAQGesZYAJIFCDeT5FnsS1u5FzXzXrBnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbTYEXv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbTYEXv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760639993;
	bh=6cpEBXc9glYDANlQhvAur4mvbEvL/DXwSzcOdrOaFr0=;
	h=To:Subject:From:Date:From;
	b=IbTYEXv1I1/VZWcAPE0pPdXsEoiCrS78ZpfrP9FYg/JYdEO5iBjhG/w8UFbK4lgFo
	 J4ijs9+y28HlOhN3F5JaqpbauabL3QnOPrP4QJco06Mz5bwuE4ORCFdpMAHFw8sbfj
	 8PI46Q1ebamYBdupIEex3AX/KCfiB1pNVXynZO+Fb7JC0MurouqwAAAvmo3zJhkptq
	 WcMYaiOCyWCU2VcO96uX48PTyIx5GLQ8LxHC7x4roBu3BEwjmDC6yvWVI+DuQINljT
	 KDo/sTeEe6F48vmFo2nlXNn2jnUUlUEGOdSE6lXDfBCZWPvAXp48Hnr3L1CaAnp0dg
	 4RQKKK0rGQifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90627CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063999358.3155.8094167092100377546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49796d8c2335fd366783ae5c3a1dba4120cb00fc7894d312d0bf40e77883fd4
Date: Thu, 16 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760639993
