Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726CC15A86D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786164634; cv=none; b=PVHaN9pR85cQyAYU+LWGuiEzSwuiQowJpOfh/3plKlGsIixHMUGPctlO4eopwH1xunvEXFz3gB7Jutpk0E+t27LnOK7o2gcwVwqPKePAGIWDjBaUO1ycIoJxmlQK2QCkTyWZ65gQmcGC2eRZDud1+FuWJzVgh11h3PtVDcvtYkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786164634; c=relaxed/simple;
	bh=iGnYeg7dlk1J6XdrdKd4cQXGC82t9l7vCUpKYmliICM=;
	h=To:Subject:From:Message-Id:Date; b=oaqySkkP1Aj+9rCIsMhi+oLztYy5NRaOx/mPWH8DIbQSGiQJXewXJ+cmZkIQ1+fDeCqO4E/fzdA3fuiBU9ya24M/dgCDt12s4057eiqpC+ZbI+bPsD52lQStWebrE6f/5sOpkGZjxf0Sp5fv/kf01d4SAwicEwPo70iKUn98UaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9BiocxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9BiocxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4016C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786164633;
	bh=iGnYeg7dlk1J6XdrdKd4cQXGC82t9l7vCUpKYmliICM=;
	h=To:Subject:From:Date:From;
	b=I9BiocxWCuWwgpNqXQy7I7a6i9pt5h/nnT3dyV+3zCqOLk8orpkb5cQquYrhlMst8
	 zP6Swc2jpz65x/EAofPuT2a/EqyPwu3oVRyK6WydVXWmgCd3oskMiUz7CYVwyugRdH
	 13SBcAhtAoG49mLSeBn4Hv21TQHe/xmKKirT+tsFVxJ8XnYkJOjxn775YZ/YfmKlb5
	 rn2N+VL94rwcXI0TJzQbwuw2k+c0DDw8xZmPF4KPFGy+3pI5t47lKsCJKCYvw+mkXM
	 xSBenbeSwKqMpyUQjBjNh4vMZ80O2SPuYt5kSatDkmAnzwf4WJMbPRbYBoHsMoSS2y
	 0lBBXY35cTIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD182C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616463368.3796.6568350056709550572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da906c693d611d0024b49eae645606688b8b5f9c13c98fa374dd2b5c9bbc4557
Date: Sat, 08 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786164633
