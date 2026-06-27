Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B22AE8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782595114; cv=none; b=Ju/egf1V6qrBr9/MkiakSTYJ6DEjV1UME/0/D+AwNgR9JP5xy3c0NwPk8OI0EO8Q2ywp2ZP1sh9zGbnfGpZxJl5D5n3N5WCdGVM4VdMWSLFS7uWDBDnHLvNZxRLtLgN/QNLFOVgPTKk4kFXvAMQixopGiHQH53QR1Wts8ue/c7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782595114; c=relaxed/simple;
	bh=HRdjiOLY33Jp0wIn9SWK3ABg0iIZ2KFEwjpUUh0+gC0=;
	h=To:Subject:From:Message-Id:Date; b=X6n5YQQa1QneMue9jFGywGu2y0susx3Xbu+cC7LGlCcZbOtuHO9ZPLLAweEmKxyeVcF39BPdIP+oZYAlQToED6CdMrP3LSN8N2XbcBJiSYXccCFYY95Ci7ClCCir/zefY60mGGw2t9PoHcni61XRuDOavr4C0ju98kWmnWXgkxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asS/nq6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asS/nq6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05284C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782595114;
	bh=HRdjiOLY33Jp0wIn9SWK3ABg0iIZ2KFEwjpUUh0+gC0=;
	h=To:Subject:From:Date:From;
	b=asS/nq6o64U3AUhJ7vts4OARjsOychW75r2whgpTxLG4cI6JUvsAjU6K2bF/CZC5t
	 osgeDIJSJpgvuwwmOMkK6ECc/LXpf+OqD6Sr5J2+rIv5v982CajHTo+aKHRVyz9jd/
	 zRp9143d2TOfIBb7qupuUx0I0NcfI3zClxTlQ6uKhI9tHQee1oJXfAwFXjqlrupcw4
	 y2zRzW/R7UmrWFvgUbXtCV7qJk9AEVyRhitfzLGIAyskd70oiJs5mVM49t9soix6SO
	 uO4YTOfRKaArv9LquNRk1udjPThP/Ri/A9bKxSELOm0tTczk2UiyS4ETWF7YP7/a0w
	 8W5Sa/Y14D8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF13C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259511381.14387.7272056206493211325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92716421f5210d6c2b0161b65ef952baad62cce220ce0bcd9a1be5364d12c706
Date: Sat, 27 Jun 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782595113
