Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6078621D5AF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781810194; cv=none; b=dHc10x8M+v1OvNcnWlxDIXri6TYUlZqSkNY6nDZKvIpIaVm066dkDWWg3o03uKOLFoIy0xXdxiiQEUpOp8w98W1jj2fUg7MkV3kvtaozGoEW57Fk7s5totGhT0RjeJ6DZ44+ckbcWojs7Y8vflnOpMcFupz4qUxROcAqf6DzyUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781810194; c=relaxed/simple;
	bh=+Y8ujxNmxAR29gzNVeqcxedusj7gBB4MhLzElFcyUsg=;
	h=To:Subject:From:Message-Id:Date; b=qo3BFJIIJHHFU6AVbH6oKeBl2NC80+RcDRQ2FKHQK3PpKB1O0hfz4wvm0SNIdI3KsAz3z2IzOpOjw4Y5mMXN0FO0Pg0r0eJg38Em9lKzayfVVdBBctRu8f4oEF8hYwktYQoUnzYgUZ/lyGpi4BE+IOi9lJ5eEVURqrTcPPZYx/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POHiQA3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POHiQA3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB49C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781810193;
	bh=+Y8ujxNmxAR29gzNVeqcxedusj7gBB4MhLzElFcyUsg=;
	h=To:Subject:From:Date:From;
	b=POHiQA3bD3ZBDXd6HrXFIu9sIksNNadB9jGjKQoghcL66tPEaLDpU4SaE6PicQhzx
	 C2GuJnJHoicEclF6e4GVJEnw43Bqot1brrMy3a3Va3OmLM0NmKXJMhP3SkRm0Ur/9K
	 dQOSf2dQ+BwWPsyGQKdvWedRwvptMXGVpSX2vDF390eaWJrxpoYACAvaPmj3CsAFDN
	 SUBfKp3aomWyA8QhgyoWW9qtnuw7VEgfGpNwlPOICt701FBBhcP1md8MkcBuyrb+RC
	 Eo3koeFfXGFi1OCQWggcoBK+/Kscbu2si6PMcN4WQFhIn255bwy7ah3nxec1Yc0yLH
	 Jkv4ej0sSjl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE7CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181019373.22934.18317792942701766831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5406b5bb8a2eea20c122835775c26a2a5fb16f3cf301fc146947acc71b50db5
Date: Thu, 18 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781810193
