Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB6F264F96
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761792594; cv=none; b=gcgNUumY40NMCaPwD9DB1x9fi7vwOMVhMarYosnizIIDmzqtmsapyZmVqaqm0QIBct19n37BQ28hCEPLITNqL6n5vMr5QZ6pJa3YV16ebYWcZJG9SL/2BrzGfWGqPI7xQpnIXThPQnEHHwR5kEzuaYD3FORHhVt0MjbPOHc+h04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761792594; c=relaxed/simple;
	bh=cOoxTgcj0zA4ZcsMHd0fgkgJadLIz58iN2ZZsqp/L+I=;
	h=To:Subject:From:Message-Id:Date; b=pyutWub5EqY5edxUIivLf73Aip+LVjjqUue2e+Vb5uworYc+1IU8hGHZURu/hNnPFP53srIMNwUQVOHE6Sw/m8tPJ+TxSsH9BJTUHeUB6hpSVmTudabtppC+8jVDCXdyAClSxC7nxyPhepJouXw4IGrOzJjjawfc15g4nOfbyas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHKGK3lF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHKGK3lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FAEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761792593;
	bh=cOoxTgcj0zA4ZcsMHd0fgkgJadLIz58iN2ZZsqp/L+I=;
	h=To:Subject:From:Date:From;
	b=tHKGK3lFqUD5Pz492OCjHScsWHKKEQ6xtUi17jMY28OV/m0pdnCFDyHvfK4DP0JOM
	 lxuKqHGGBQeiqTmj02pTpl0CkyM73JnN60T4CDzdlWH18irREjsGKIFBvS45WrlrDS
	 N4P6z2h0+inKWDO8qp0W2QeMb4jclWnMPWPwV751hZZqrMKb/+F+Vjr2RcdO9i5ECa
	 uhOkcQMNRsC4HCsa6z7WHvhG0Lzor75ANyLeHgpWdoOX+aABoguTxT1Re37olQJfT4
	 Qr/GNPGsxEVSoj29wEr09judPMWnkYOmkDao0LNa7GaAHyqG14841tQrXmwBfBs2Bi
	 +GG6ApYbP1Fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932DECCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179259359.22953.8565210060828731450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418a2765ed58af2f7bad1c81f21e229e356a2ff7451049d3c23f03d00107e6a8
Date: Thu, 30 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761792593
