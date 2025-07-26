Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED884685
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753509594; cv=none; b=ZqiVn8LgXU2wXv/TSvEY+AFKRIEDK5yuintlGr8PDe181gW5eXClX//pbsBff2L/Zn7Bk4ndWo17hEm3TvCiqKLtdiKad3MPaGyOSLvJBsVP9tdL3I4BTGxfbBRwTAuFE2A+4wtHJmcArjUSJuaK0ZHU4z7HHcM9M35NTlEPG3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753509594; c=relaxed/simple;
	bh=UGQv7EtPhTy+uxsNOYQImNohlqo8MPRsjS4994yV3lI=;
	h=To:Subject:From:Message-Id:Date; b=scof3QxFRTQ12kWZhAmiqZSx7TvHBad5spZcIvSDHTirQAa772R23pD5M8Yxa4z3zldoNj8poNqX3NpaAJ2DT2kVHgINy6GL9tnRdX++VlUwA+cGCoHrmt064+jGDYLsIBf1BZCVMFQraXFXqDDi0QZXmevWSlRB2G3T6hK4DFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW40D82n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW40D82n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FACBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753509593;
	bh=UGQv7EtPhTy+uxsNOYQImNohlqo8MPRsjS4994yV3lI=;
	h=To:Subject:From:Date:From;
	b=MW40D82nG7GfR3307Y0rFsQhnu8dOrFOVVW0vnkzdzgbs0tLJwSITz27rkH1VbRs8
	 byqGd6+vHjJj2TueLk/7eFLTMZNYqIwlVBNKxJFLWMLkORDgZw9UU153nY9E5PnTYX
	 OXiAHizszKQ/TID8kKDvPhkBRnGt6uBZ39YinEeftOTX8p1NA+OsvZX945yb0VQopk
	 yk4lo1KIIxkWTfGaJPDnBETEdfSGgL48dOcWbASUDp9gOL473ZMP+9cpXSIlZtCFt+
	 jZFeZwZLHxECg2eb7b/7hQ6Yomv2JaHE1sl1Z/JcnLu0LaXgq1suY2M4G+cSjIqrGE
	 m/PQ1LyyeuAWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A1C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350959357.6219.10905954712454639521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccccb3a73f6b0c75157d779d287de52beeda6e822b04db520a1de05e0f57d8fc
Date: Sat, 26 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753509593
