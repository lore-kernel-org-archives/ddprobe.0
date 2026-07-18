Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45089CA5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784335714; cv=none; b=JA8syMhJpQV8r8bLb3Frgbb2I92dBUTjFZcYKtos/aqNljJAFEXbpdcpUhRQebJ10DWU7fRAvFcUYMgdGsdv/C7xTmifezjJOplCwrZ7gNCtukYNCNTa6CuRKRECWTe6/JTeBs8sobM0JTV1AAQmRs27Qet78BgUt1F4oEvbqJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784335714; c=relaxed/simple;
	bh=31Y2rQq6wVuhDqkbNlKJ5x1AFgp+lC4UcvZNaLjq3h4=;
	h=To:Subject:From:Message-Id:Date; b=pyQ1jPTNP6vdWV07q4RK+P+TZP/Jshm4dwTAppmJMnHcqh0eQPRE0lF1ezqOnRIJmZqRAR0z4YBhH/f3sDIOuDB7dulzyCJCFGfoOS6AGW1eHAFlQOL8ELNpMBKLaFweNZ8ed7h2KiWnXIMsyXELhZpqMQsYd+ZF+6UqVfh4p4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLOxiFuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLOxiFuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB38EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784335713;
	bh=31Y2rQq6wVuhDqkbNlKJ5x1AFgp+lC4UcvZNaLjq3h4=;
	h=To:Subject:From:Date:From;
	b=WLOxiFujPsWFrPZH+Z9elHkVRyzGooiSpRFRlr5spc8ouOw7PFceWW1kRK44kQAiI
	 T4HVPiBdaxxDZCqHy/AUX1+zikdtOjYE25dJt6VOoAfh1yorMz1w08ZkUOFnJaCS0E
	 UqjHyKGib47Cyd5OxeCLhW1wmI+ig0YZ5TewS1x6PHXfQalbJM0vAUGtSGDKGyPZyQ
	 Dk/TyGzYsQkVtVeJlV4ojAA2gHtRufUYANojUxsn87V8ZD27KklpTLf9lDO9h2rGsJ
	 TOIU/xnzLB+8gQQBoeiE2UiOFkRpfKH3FMOyhMWobmHfBw/3gDsxaZnZtElsJG4MT/
	 iVpXmAkqoK4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE28C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433571369.21281.13460465560704427429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109a6b426ee6c8e5a7a138bcf7db0b069aa7b0f84a224e6063b8d298be1e835b
Date: Sat, 18 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784335713
