Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F16C258CD9
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770021834; cv=none; b=DEaigEzLkGrcGNrNeb5nH7jgOMPsC3FnGpOmGV0CJU4ISkkHt/ZVFoB1V2XCse1x1038Gj7YVBbaBdOcp/E1g9bbzU1uTABiZ3woB0VJK8a8/JxZA3b7gi/t6cvBZVUiKF0PPIP/j5G7SXRiB+atzWzbXw/iKOWesbzcwRHc49Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770021834; c=relaxed/simple;
	bh=wr3qb8H9whjUUrjRUphniyi2xTRws/P20dje39mBMhg=;
	h=To:Subject:From:Message-Id:Date; b=mTizuQ3rP0gNk1hZoRo2pJJmGOmSADIJ5Ok27oPkRqAG5DkJDlzlKmgoOTpHEy14jmEB+pt4EISCM6CAhxeJonGOajTuMzjeIXcdGVrr3S00CzQ6dEGb1lcoXmlrIQEUKXdtTnbSUFgldKobnXQgxnLlZzrRjH5cdhwb+kK8mtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkqaOBRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkqaOBRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4486C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770021833;
	bh=wr3qb8H9whjUUrjRUphniyi2xTRws/P20dje39mBMhg=;
	h=To:Subject:From:Date:From;
	b=EkqaOBRHK+FFzAtWVgN3N+UA2IN8y9mQsssdfdroHyzc5o55WRR7mubWOEYR+rr1g
	 eZ1I3Tsn7RVcha6xt6sBRaoJ6rO+x+Rc3ioqS656sAIWWHPk2H8rUt/0gCp1aeN7+b
	 BQjbjdQ3CGarAJJrOK1r7rM4ygbsQYcUa8W/tq74W52LMZXMl8F0Dy8j4OqI0lADis
	 G29r3RJKWeCdhPiIx+bwnHIsaXDJVse9hVgUbF1cg0VTOiyrDRSldr8F4picAexf7N
	 jyakVeuCEcbE57wOUKvDmR9icr+6KvT1v/6q0sfQ3KEhUYnJMIOt/OF9OROCQjTjp0
	 q8tWzA1z9MEMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E0E73145
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002183360.3140.18069511268076528212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4306c42e5f89ddf76b1937d232788ccdd2018213f3218d2da5fb51bc43d6aa
Date: Mon, 02 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770021833
