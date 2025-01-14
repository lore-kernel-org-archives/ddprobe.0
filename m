Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222B623244A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736864154; cv=none; b=tZ6kM/bIHsbcnu/L33/QoOwRlMgC1Gx/toHxznLcM5bySExm7Xe3O85ZPDTJv0iR8XEc0v01gmSshEBquZK/Z7UMdteHGn/BRiRTxy8s8vjzDvpIE+rdKaFYXHqEJtvTcCdxYDnT1OZPczVSwH2h0ctJ0buDKl4I4fsebTtTHlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736864154; c=relaxed/simple;
	bh=t+vQ41QoT3HMKQIz2B3UkI9b/D2dyfStPU8Ej1NNRFQ=;
	h=To:Subject:From:Message-Id:Date; b=NIjyCCig53eG7VMYV9U561Gh1qgR1lvaJaglwOjEGY4b04YTOlzhYPDVTWj6VmhSzwhDNP1Tu13dgI1Po3m6yfPAKDbXGXmb5nesWZoYfN+HWW5oTd8veB3GvqpNTWxgmh3SZTF0bfxokJwoscoh/MXkNyacfvSHeRly4imZI0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8XrKsEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8XrKsEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29BDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736864153;
	bh=t+vQ41QoT3HMKQIz2B3UkI9b/D2dyfStPU8Ej1NNRFQ=;
	h=To:Subject:From:Date:From;
	b=M8XrKsEKVPgdt/Dh5XAv7TXRoZrle9DeUju6OcqeQf8NAU7bmXLs+KON90OSYPsZE
	 KI1OQQ689hQw5PFillndGegHmbBv9KKMWpwre2faNpsILMPEXETukAOqb/45uVc3T6
	 HkM8bdFJEuIMq1exvPaSSkB+s8bH6Ogldg47ZLD/txsqZ6iEneLEtrSBdXhVk9Qzy4
	 aZ+0jOcadoiwSxerXxW0eFwYJL04UwMbOz4v+uqpevsldsZ6rsb75pCexjaFrL48yj
	 Fxxa4GovfKYzT+D7xncHJ25+bIWZkSWaupnbxQphCrQy3+mhmfgydlNExxnvZYAJVs
	 M7ltejT1cmNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF4E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686415359.8158.16571376926616000805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec417116ef63756b8e23f04043bf8fef2841ee6d21955b740f1ed3b52af8f40
Date: Tue, 14 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736864153
