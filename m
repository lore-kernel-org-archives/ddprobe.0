Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2515326C4
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790118034; cv=none; b=mLpvp0VT7wJeSD/a3Y9KMvw1V61AwWPIhkm62hc6qhDITQ/iwehO9OJIQ1qhOb5S65ZYsESm+xNEv9liq8aS47xXAFrg1o0aDd6MgG5cHt+HqrhCqlK7uj6lzmXYQIQox1jtZryt18gsqQsNSnQl7Own+hB62w7349QCbruMjKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790118034; c=relaxed/simple;
	bh=eAjNBDcXkiaHOg6laQ3N8s+Ywh217r1AsVS9WYzazkM=;
	h=To:Subject:From:Message-Id:Date; b=WvQoky7APFvPWYTBZdwAqy8nQELafU4RPMMJU+gqLh6hLL18pmGVpAFrOHSvfIzmO2Pvmkg1s0tWkTnoq/dyKZMmmWPj66WA6COjy3toNzssvfdMPkur788u5f3YpVoZYWJekL0elNHpkb4vRJOgzQGKGaC9vNiam+xXQ6PJyxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwr80AfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwr80AfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4DBC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790118033;
	bh=eAjNBDcXkiaHOg6laQ3N8s+Ywh217r1AsVS9WYzazkM=;
	h=To:Subject:From:Date:From;
	b=fwr80AfTlvGZ8BieEdxLqILHFkJNOtS8zXNoBpe9fqWRPPAnsKG62kPD2ciNh8QTd
	 UCUxGVc72RYlAz5XJOKs9N5pb5Djj47E/WxIuajdMIaXQNTN0xPZ2Jayo2NxLS9kWM
	 JqncoaTQGI4Cl1Om1QHKHmz1T9mH6ctqb7X7C2fh848TiOA/rVPC19vDr2UCISbe8f
	 Z8bQ1sws6iObVRdzkWJMWKlkfT37HXHAs8ngAjNGnaPE6fJ2u57/+ByPAvkFiQiZHL
	 /pPzpR0X7Dz+vItpPtf5iuls6BANrwlzlCnLEA1sWEUgOVt7ZAqNom8+6UvAklSulB
	 QjxhsG7Sfi/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AEAC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011803374.7681.17369170426138005972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9988164600643ac6771f4304a9968240034aecb86455592e827118467d69d3d7
Date: Tue, 22 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790118033
