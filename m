Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E37A3382EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789932034; cv=none; b=mfn8JgUhkIDBLfCXaK4fr96G4vKJGXEZ/uMhUzBVdZRhLxxWWA/pZFWlc/QBx78H/WQdOdV6Nm+1xjIsYXhQgtvIKQH+Tx7wN3/vFCcH72gc85A3AHRs+4+++/WonWvV8spibj9Ow7TUmggnd/ifP4Nd5ryB/iHIKcavLm7NEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789932034; c=relaxed/simple;
	bh=MdlrozGNXcE0RiF3ihJXKb7iTmqeDwSis7Hw8iXUOSU=;
	h=To:Subject:From:Message-Id:Date; b=aR8VDR8wo+Y/WzxMYRvCVP/3F0+layIzETwsuEYq5LjvE80WvCVOEMsQ2gKqEV1zyJxKrDKnAOUfk1/1SribL2m5GU/rZtqeB1s0RLC2c4sXtI6ZX0AR4Vvj6S0/Z/cQ56FSv3/EUf8yf9akyfyKaaCPlBgu0kayzL0WmwIuRyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpr18QvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpr18QvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31C3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789932033;
	bh=MdlrozGNXcE0RiF3ihJXKb7iTmqeDwSis7Hw8iXUOSU=;
	h=To:Subject:From:Date:From;
	b=hpr18QvCz1nJATuG5PIO8SFMTguc1PEOHijArHlbU0neypo2hH9i8M7DUarp2Ux1y
	 RKqsF8TTo3cy6v+mdGf7tB3hLO0H0CU7YAmrnFbbIqjD8OVyAhdM2FnMgHZCRVim4s
	 jlOiufD5Wkcj/x2ajjcsIXAm9h5Ybrt9L5XfE8UeHPLGASQeQB/EDJKjhndgg8YJov
	 IAM86LdJDRm4mlvukmdXyKuyjMPi0mA5GLTbiY7eR5BpWaYU2LREhIbTmMc2aVJ5rq
	 Zze5gdCieyq1jqGKzeo4KeG2u0fimtNGWz14KcMRWeUMk2/hys+597XJIQKKJnjpEq
	 4djVr7KGBLDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AAAC982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993203368.19265.2251201467053742593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fd9ff43a5d86b197a1e043d09c80f9bc073638c7e52cbf4b402b7285f4bca2
Date: Sun, 20 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789932033
