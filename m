Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4173A7582
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790022634; cv=none; b=JIpvqf4/iRArfpVbFqUJhs2jMBzLvLaxRxAhErkJDCtY6Ai7GETPNuXu/f6APf1JDoj6KUYdnRdBi0Mx9PJHN8sERMgwMWISPXFBungUarBNPNkGzroyp6XQAl7Pqhl143eVuluCdQ/10Z9DrXkXL+5EST08GDBXNpYaLz0OfJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790022634; c=relaxed/simple;
	bh=G/KvLdc9edlx45G4hJb8aMfoyLPKXYOlx2wPs/AwBkI=;
	h=To:Subject:From:Message-Id:Date; b=b7qf2h+SuTo+u5SH/jtHpJSfgRDy/6S7iiHkdQnU1DxKWu1NCGqrHVAxxQPFDt5/2xRku7yGKnxOsS4GKL0yMRw2sR78bSeL8rUTkQXHUrXhGP86tzdsKydIwp33tL6LEe2KzVjjQr0R+1Spe6rB8bCm3OatBhj5aeEQazpWwoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgRZ3ZZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgRZ3ZZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86ADC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790022633;
	bh=G/KvLdc9edlx45G4hJb8aMfoyLPKXYOlx2wPs/AwBkI=;
	h=To:Subject:From:Date:From;
	b=KgRZ3ZZPQaYwn66uYsXzLbw5X68Cd5muZftoquwh+OPmTDAPEoH8fqAKJEMMXItK+
	 4uwVXEPR5DANSO3g/3nkbMeCCpsONVmGSB4vHlQTz5/Xe3CHKbctfGuSD3rhIPXM0l
	 hoOUwCRazdh3yL+S5xy9MJQiy1GdkYUW7I0t0/IHHzKXQbKeqSZ+xKAvJxEQ0hP+Er
	 ITGjrNK8k4EmBVpe2YDxGpaIHceh0xL6HWFppaAfwWtKXTti91i3lyIZBxbQt+LU5x
	 ZKPkNJxO4GY8bCcHGT2ikpxHFq783+XGr29ZqDoNw0jRrZ90ONcedIIvOihPEGGWft
	 Q7W7LL3n+0/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5C1C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002263373.27674.5547984220417242099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1311d91df43c3a5d2e30ef23d4851bc8c00d2819441d57b1e2e125b093343d
Date: Mon, 21 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790022633
