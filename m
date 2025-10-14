Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9342EE616
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760439594; cv=none; b=lqAPMpWaxKjZe+NE+FwGFmIM00wvFo7nWWbUBq5KeRXhD346c+ZW7ajNAg+e1Uu+tq95XuEJhH/Mpc6m2R/SUO6WJAuwovvTgfm/E80xYrv7OjQINz5OLOOVrr7lUOlHK5tNZCWM6qZGFWLioeRaslUWurUgdGDFyx4lV24NxlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760439594; c=relaxed/simple;
	bh=ERAePFL50irG8LhY+iLOAvgpLBStydfs3H1FUk/Id0E=;
	h=To:Subject:From:Message-Id:Date; b=CYKduq0TeEOWpRCHAm5xLd9+EgPRVz/rNM28op1GtM6DSmKoXVMWkXU9SrJ5mxJSsqIo3fMpAAnsTEVVhJALhogO4qFWILskZ/1s0deUmOjriovfMaINiu5qelZndvZmqiKTrK0ltGQbiKixDUF7HpdKF9JwAkmpf2kn5dAelX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev7dT5Yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev7dT5Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4317C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760439593;
	bh=ERAePFL50irG8LhY+iLOAvgpLBStydfs3H1FUk/Id0E=;
	h=To:Subject:From:Date:From;
	b=Ev7dT5YgGen2EccmUBmKpWPmnu8/+cKj+POpJoDAEPErfzspnaupP1r/hTFnHxJq7
	 ub/4WtdvePfMDDZ2KQ3v13VRAVs/e/ybrn+jVqO1KqwfgQTn/gJ6pnKyRJYMQDVmTk
	 bh+BgUnsg3IjaIcBIHzALeXyzncxO14XEW5w/Kvv21lWuOPIMrjO6YSv8He9Zh+oYh
	 VNF3aV09yLb3PbidU+9Y3K6hS5Z/5nDIj1uYjLSNOfu2/Ugn5VUWY5ZgZ+b2oBXYNO
	 /MsX0i/Hlj5lywv9twxtSMwIk17t9QMcgV7CVQJF84VgI8zW5BFXhI7bvhYSBuEKe1
	 YEpfXU4WzUO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90139CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043959358.9178.14045008884893015843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb631c33625bd027bd1d802ce1ea1245746136efc1f4a6901fc0f63a5843f925
Date: Tue, 14 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760439593
