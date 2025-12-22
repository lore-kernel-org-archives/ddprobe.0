Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E41244692
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766388834; cv=none; b=mogMBLX36z++XIvA4Y/HWiggRYMYGO+mXpnnx5WJqqHwwiOeSrhPcGr1cT8F3MjB6h4B7yywehqPJFDEtlQYZAIcDbNmKwRKMyvXIgOFRUcQ/Jgpj1opNPB72dSRe2ldi1l4SWadCkrgoC/H8vVTr2La5xTF45q0iN1zCBzC97U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766388834; c=relaxed/simple;
	bh=RdtHU4zbY82v/0Xt2txSDWiq7j+ZmFqYqrJUxnNaAok=;
	h=To:Subject:From:Message-Id:Date; b=ETffA6BAVC7Dz+UXjfUY60QxXpXuc0ugHFIlovzOGyuJozTAIp5dEtnpAcjSbGdAKBemFN8oDfRxsZ0Z7d8N6L1lPZKQHSP7dcVPxglDhtl7XO0iDFhFgVXtq7/wxZWsj/SbPHULoT0VDMakMa2m4qDlomn9UT21aRA8rCRrhs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvp08y34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvp08y34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4181C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766388833;
	bh=RdtHU4zbY82v/0Xt2txSDWiq7j+ZmFqYqrJUxnNaAok=;
	h=To:Subject:From:Date:From;
	b=bvp08y34e1YdpIVfl2oOYwBzczTQu6lfDNl730uU93SV16tdnDywTZEQdeXWoQ9mn
	 bMd/84SkgA2BdoO2mBQ1lnpcQyrzOhj1VBCecD3KV4gtvHghvoA74JX8i8FhPGGWRc
	 0RYaqkOIvq6PwmyPNq9LAJkNV4E61DnVdzj9D4o2xGNw4KOw714cIOo/HMWOBV7EDA
	 /Yb0ktCSaw118JWdY9JhWlf1ar3ZAGgmkuSD8AxVMYtwr495m8iwa2+0vCQw0dN2ga
	 DFifLXKqxZ38dTIu0EJqg31suh0iTaCYJnp5D7b/IKUF7QTxweu8sQkW+nicX0976b
	 EJTMwd0RSIqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E75E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638883358.1688.16325783593339159078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808f600bb93876e2b87916378bfe74e84776457d39eb382c9c37b63421ea1a05
Date: Mon, 22 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766388833
