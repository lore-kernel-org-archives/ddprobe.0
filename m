Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425A3EACD
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743938394; cv=none; b=hudgfX0Vce2yB8Ef9aOxeyAdOHILtJGt9859AQVRnCHmRGHnPCnR3UPdYPWsrqVQm3BqN/KRqaopugUyWHv6JPDwJje6Z5+Fvd8QRa74BeQV0GwfPlgt43rAfpfIcYzaS80WgfOTLVILJX0cLfCr2M3eMJKCFpiaN9qRgfl9HPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743938394; c=relaxed/simple;
	bh=S6m8ToxPMW/cKd/SH1zc2znjh1AFssq+/MZH5au6MnE=;
	h=To:Subject:From:Message-Id:Date; b=TTR3dnfDyAXMZR4fMaX5DISgzRX8vQQBWR+Op2kFv0n1Z6KrsoUEdwZ1kBN6UVvD1jj3O0lZHVXqnMssFE54R86rm4qoAVhStNCeVCeX4W4esEcxHuBAAsOY6DbcMKujlT0dRsnToedjiuu50UpLbWAVcgpU4iRr77MbkAW9RC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioPf4raT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioPf4raT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743938393;
	bh=S6m8ToxPMW/cKd/SH1zc2znjh1AFssq+/MZH5au6MnE=;
	h=To:Subject:From:Date:From;
	b=ioPf4raTUQSqifITKqSuTIoQYOPOoAI5UtT8U8H2deDmgiHrex/CFpnWdjbtd3POj
	 2RCpRZME6FJGFk1CV5lj1Sjnp2MAz2rrNmP9QJXHFyLS+++U92MiGzIZILB/h/g0i6
	 yH22mx0QfO1F6pHCkH6OvCOz/jrCzD02EAjMtazTl5XFuv1S6kaob2/5e4rgG9LIot
	 aSptlb33laBOW1cF4bmjePUjH0emqy+O1SbKZeLE8O2AmteVgMIblJbn7o4h89pBnI
	 qCdYEDsvYCkTsdL1sIzv/QZbPk8M/CI+XCjaK2BCytYkxL+cYSRh72a+j4aGdtUe5Q
	 FKDBRZQ43mC3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996E6C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393839359.22113.17264284440545878948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebb288fbef38e45e0a69c885d0ece6c84a79129501db2b0f4b2081d681fea3a
Date: Sun, 06 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743938393
