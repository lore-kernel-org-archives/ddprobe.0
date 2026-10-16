Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F0B25C818
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792165834; cv=none; b=PK8DEIFfEygZ4g48DlU0fM6+m+DfVQ1uznTRN2Bb4xzvXm4OYaPPMcAX+xdw20Rn2zCQnutiJXnF+vRxME60/d3LBUPdk8vJdA+4ml4aKWNWA25GRYMH+MjQE8fcMBCDb8HrPnhE0OZ9Tg54LMRCptTqjP46iiKnqN0KEDHDwtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792165834; c=relaxed/simple;
	bh=7Twe7jugKscGovwBHvPQK+sJPVDFt7sCAxlNKUlMCh8=;
	h=To:Subject:From:Message-Id:Date; b=HLeYhipH9jKXWOj4ZMlyjXQ50UTan2lhdflDMRPX1OHnybv3ZR9oN/tt/8z5DtfmsGhXBz/qxSwPgOn0qf0scoi6tK3yPZuViGYHE8HC3bHa4C/IWxKAU0MJnOmfj9Yvk5DsE4n0ubQN90eydizczRGQId+1keHxfaq1hulqZaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2hSrUa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2hSrUa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8721C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792165833;
	bh=7Twe7jugKscGovwBHvPQK+sJPVDFt7sCAxlNKUlMCh8=;
	h=To:Subject:From:Date:From;
	b=U2hSrUa5uhXrOlNYDuRUTjeSe2MgChgA+IWZSCCkGc5DI4El5/Bzqk1ybaykbEyJ1
	 KI5hH6WSA3nJspZZh/+5cHAn6RquUx8m6aWHI6g9B1B2ceXxVyqK+Deu6sFw41cTUM
	 ns9G70b4aIjLXYn4Qu+ho/fvG8Hr7LwqwQo4U/m3/DOyUbT8/e/QVxS0vFu/weDAYM
	 tTzj0o7bPO2l/vHxIAWtFalKsL5DQB70PwcfthcMdJOEiOD/Ns9SIyKZGTZoBIT+tR
	 lKPaT10+C5+aazBFZsUZeByMvZp5VrGqwaNabt8s5gkb2YfzKkpqgWVw/3xSMvvvtk
	 IXeadNRDOovJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFFCCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216583370.29023.14935758156901116974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befb0b0090a5991b1faef21a4ec4f798b2960fd9f82fddd929e3302817fba8b0
Date: Fri, 16 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792165833
