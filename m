Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6025F3563F6
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789582236; cv=none; b=hfUlq1vkJyIcIkt8kF/TOJ/Srcz475yZ7WHG2DCyU09XYIy4idI+gtrBO2UmodYPxYehhopRZ+RC/xZeNnFIpPkP22lekmRiYE2KI4cn/R/aAHhxpGWcJ5yXS7pYCwJ/irL4bWN1OEvIIKLzdbPrT7zH0tgIItNY1hNMDoFdPqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789582236; c=relaxed/simple;
	bh=LGpQOrTZy5GSVktbNdooTnEZiqL9vfr+X34RCRzM67k=;
	h=To:Subject:From:Message-Id:Date; b=JvxkZ8BjT1oy9p5y8GWjpoHLTxYPbr4NFDbLPrYhzeeE6clRYesSN9KN/akFHvqinm7ttBLUDkhhmwra8vPvg5n6CnR0v0x8++ksae/DxVSuhodfIAo3A7jECy3tGNfLdQrQl3JrnaZXpU/AzqpqH8Tt6v8pyIi0gV6iH5wwkR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGsZaudH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGsZaudH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8793C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789582233;
	bh=LGpQOrTZy5GSVktbNdooTnEZiqL9vfr+X34RCRzM67k=;
	h=To:Subject:From:Date:From;
	b=QGsZaudHSiHEdCod/rhXMJa2YoTMAUJ+5b36G9mlD91K1j9zCwVkkttIjMxSEPCR6
	 12757AOsyT2pAGZ7SNabMXDcvgVVWhAj52TqjwR/oQ/OVoV3zJm2prUUtzeuK+dU51
	 9gx95Fa21x+wlEBRdLMDCQQq8Knx/0x7gihCjnqhrWnGmQWhsg01Lra6KEkgwjEv3s
	 VyDE57doSskYQQ3X96N8WzHCXGCDetN870tdIjuRjEzHCb5sjJrihyd9AdNJCGkNTq
	 lqK9oKBl8B7J8hhn8LwCoBe7c12Sx1zEsT6st9wUfIHn7e41b4UYhQNvDK+UIvylvi
	 Ik2QrTfNrKD6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC5C982CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958223371.23800.16526974360109218458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a7c0cb068f2df81e7adf4fc86a5cd04f6f189d8f83c3c612fad8a0edbb83b2
Date: Wed, 16 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789582233
