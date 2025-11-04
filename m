Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBF22C158A
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762234194; cv=none; b=cgLFXYrQsPeHPRc7vfR0DjfZs2CfAo08x/IiIWhHXiuboH3AgovMm7bbdpQsPILF3ThEGcfEJo/Gnb69TGUIX5ePeQYzOnbp215O/wA2kApFAhMhKBeopxn8R9tRnjJuu1R3C0nlhEl6v8uDa+8cCIFe/tRpf4T70BU79prgWw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762234194; c=relaxed/simple;
	bh=fSftlxt/bOUCZo+3H+iN6woT5YB+tmG43sjgW6NFRSk=;
	h=To:Subject:From:Message-Id:Date; b=oy2PorEq0ZYUJSaTeDB2+aL3NVXRpPiwHcYRUPo8iV45NMcRoeYU0BR7M61g9b1JD80rJ7IO6KaPsRLLZ8BWUEoBCTn7Hr7TRzXudEUuoPVAzswM+lxiWIR0A0yx2jWF1oYPW1OkfCYZaJZjvmR0nXLAocGw0BoNjpewcenCGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF0RdsRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF0RdsRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E94C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762234193;
	bh=fSftlxt/bOUCZo+3H+iN6woT5YB+tmG43sjgW6NFRSk=;
	h=To:Subject:From:Date:From;
	b=hF0RdsRCtciLcdgb7V19B1M/21L25M58bzfMx64FGIwwIFwKGAVOTC5w+NBp0fo4f
	 UlR9iYjPVn2eJ4Sem9+rbkOPk/9DpDOFWqF1fJzCcQcwWcet1fmH7H6aOHvVfCSnQf
	 th0z09LHehbsvx01HraTVWpEpU32ISL2W7UjuLY9+TWl1wpObV8f8O2B/RXpTlKEmO
	 P0odvNHm4VazFobkiaa+nzUzI1J4+cI0IcArcbzUf3m0qAsaMLy75cSblPH9PTMTNr
	 4iILWmYz2N2andOZ1uyH+HvG3IfAWNx56bFjSn4nHQAgPypBbuDtG7+WcdeXgrpmN4
	 sC8NSc3WgKWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B6CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223419359.4896.7812303200213546276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef57d05cd403b46542cdebbb3a8aa2cf8ae463eb6480b717f775936abce15e0
Date: Tue, 04 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762234193
