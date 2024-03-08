Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57863B8
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709906897; cv=none; b=cYQCjPLJSLDIZ7Z8VI6Wuzi89FrmDkMOOxllVHV2YnihGPVKsvKlhOF45GC4gGT4bZ7md4DMDWyCy24tTLCxpUffdeJE8o0uj9lJQhjOmTrj57HlbcUkMPiev2QMeDn92dHF9mxHn62bxf44+yEVrg/bPTXwqDU/fMqvdk8IybI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709906897; c=relaxed/simple;
	bh=jqyJk72EE9eSEZ30upa+hRtJTyT4hdf4FnLIcys3O0Y=;
	h=To:Subject:From:Message-Id:Date; b=NVnhtpV8U0IV1PIwtbWYMbkQDVIfKKskp9zmYWzu9dRk+AYznVduO5C9AhXVWfdw9l3ob1ap5itziA2F+HOpXRINlEtDkxqqtXFVJPW34pItMdge60vZYDUsdCq675NovQqcxvlHp5UidUcdPhugnR3ZIp8NdkH3p0Qw1Xs9CPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHhz89pU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHhz89pU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAE5C43390
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709906896;
	bh=jqyJk72EE9eSEZ30upa+hRtJTyT4hdf4FnLIcys3O0Y=;
	h=To:Subject:From:Date:From;
	b=SHhz89pUPvJgFKa5dlykA81RMtLry2PqZ9dxohyw6/XaiLDrGHWpeAyTkc11mdxvd
	 u+EbVMia3LIWfU3ULhmKbB1OY21PhiHKBQMtCbQElSvOyDprfP9gtcTAffZiwOuGjf
	 ZY30WKVfeRogdgSVJuXrLPrWbAcH724SmKG9zhch986w0QpBkbFEMSMlUZxFCb5CqR
	 kNrbMLjMsATGDeAW0h74Hj7Ve986MHuQeWmyJafiygZzDC9tc8PVCg/vyji4ZuPTTN
	 pe7kVdkHOsiToCClGwKD3wyc5L5a4cB+6m8WZQqSWh7Akc8/QsBv+GdgJ/1LYqcUCD
	 GI9XrYZ0Eal+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E162C54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170990689637.23312.8164065643949101776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e328570af8d1402dc9461a1334666f1fc7014b3f2d8b96caa54a2eb6d264879
Date: Fri, 08 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709906896
