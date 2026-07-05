Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5081BC08F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783254514; cv=none; b=gTTt+BhTWT1wpF+yWFstFRWDbSscf5qaXiy2Ew4yTUpQZCdqU8sjeIwrKv4pcJCnf9zvWWSqgbxYiggxqEvoU8kKWer98ZtrRT4VCZojiso0aKo3yYCPTf6VaSl2/m1O3BppT1Ljo2UDStLkoWx41jLkiPIh1HEP1zCZ6Zrao2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783254514; c=relaxed/simple;
	bh=jCa03E764Bu/iMuUUBDG+j7Ql1hhqdkiWT4bQmfBdw4=;
	h=To:Subject:From:Message-Id:Date; b=PYwcKZcQXtabjtMRmY8RQ4F3GXr2uYO3JkzgvAaBCRM4eGByKoXjp6Yr1BcPEntFXROkGXBexbOw3O1QXdSonGa8ZTBnQhSZ+y59iImf5BuFcF279fQLRrpCpf9grJc7yG4kTyOHpYL3gnReCL7riOKvXil1hjsMmy+bE0p9HOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgGUNJ9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgGUNJ9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0877C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783254513;
	bh=jCa03E764Bu/iMuUUBDG+j7Ql1hhqdkiWT4bQmfBdw4=;
	h=To:Subject:From:Date:From;
	b=MgGUNJ9/QB2KuZt2D6+7+EmVjLwBbFUbVBLzgD0h6HZ4nQhvQJm+9JHPWzicxpwBp
	 D/TcUmeRC4v4LtD6mQwNJZGX8UfZ6D6kBF3fY6jH/r8XmJSt3UdJex8V/OjHvWirKX
	 TXgTl+iDTl6veJ4EvgfpbLXjTuRLF06bE3aOiXUwBEeVdoqibv7AO0W8M3/St3f0Jv
	 UtBcE7pBaoXXCSpmkQRrpeJ6EZxXNf29FpWnR1UiqUwHCRG3xx6EQlyFs+aofiwYrZ
	 n8smmNSdNf2urL0QkOe+23dQLRx9Iya2SLfdUkdR11SZoEeL7EBSgYm/qAEoWqlCAq
	 npjdnUh6xTpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF6C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325451368.21357.18231508458355094340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a78af40c28b4f6464a1d656babf0c6e6e5e229922a31d448ba6f39f6423d94e
Date: Sun, 05 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783254513
