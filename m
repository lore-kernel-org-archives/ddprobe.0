Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FBE2FCBF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767839634; cv=none; b=Ry+I4eUrkpZpbj19eTkL+8/En6gCA3FBz8J3nMvffnl3PtghXHcUC57NyQcppwfSGLBdmxFnMWHr3lUTZh6YXL/Dz87XvYK28tc66xlwjT8YfDP62ySKQ27shgndMNs1dKlWt+QVQ4DvVAtDkjMChFrddJcEGRPnPsHWTa5AFJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767839634; c=relaxed/simple;
	bh=ZSK+dlxxP04drxIncGtn5c1olD6eF/LaTQCr51ETzx4=;
	h=To:Subject:From:Message-Id:Date; b=bk63Vf1EaRWfFec2KZNweD8ytzZtr/T+LVbdXz+gfNZuHQ/itf0SlKzXb+QBL2izc6G7107IBvGkoujftgsxLcGLy5wrAnfnv6Ne2707OPW487d1hVA53UI7vxlvPGPgM9U+gMcEaqFsgUsqh8oJOO0AEWP5JRuW39RYiIE2/1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgOTMGCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgOTMGCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767839633;
	bh=ZSK+dlxxP04drxIncGtn5c1olD6eF/LaTQCr51ETzx4=;
	h=To:Subject:From:Date:From;
	b=TgOTMGCEMYN1BJn2Wy9+gH2ysYLH2a9r33oxXea5UXc64ftgrL/PVEp+Tr/yCILfx
	 m2Q+hBIKznq2cAPTU229pd3Vl35D7ShFRmL6tPr0u8ieu6xrUKcoGhsRkPj1VCCYjw
	 qFowkN6xB65LGVLdQ/CdYDnemH0aT7mWoYPPLbFRQG/ZTowYKFVtQ9lD+UilnmeGWt
	 XzATxAn1Dx3WGgGMjPkQIqUzyP2R9hCKfHL0KH7jagmbKbkXcuPkSxcO7qVOMUgVr9
	 SWJarmuwGwadtfbNluXRzRScM0vfHoFg8hxsTjco9nxORrOEFL9Cvkh6Ex6MoAB2Mo
	 C1tLLT2jKotTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC5D14891
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783963359.1020.1048574054475882507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ba2505df824d5b199c0afc7f3771f2dccecc12764816166f5ad75934229cea
Date: Thu, 08 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767839633
