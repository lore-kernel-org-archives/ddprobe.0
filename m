Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E0231829
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779784954; cv=none; b=qwx2Xwvv8YJwoQSycwvmluPDQ5A3d1W9ANuYNDU/ZiXwtvKxOBB6T7lUuDH4YnKui5Mzg53BADMuqwQ/BzCnPpc1et1+g1eBVts4hdQue8xm41ZSPGforLxmmSWHzHb8D5W8DtbcVNuBUXumEVxCsMvv972WQeH3RoNOVAjGQKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779784954; c=relaxed/simple;
	bh=oyiGadQLuVAFO8Bee5wik+VhgtfwCRSeCOGRsZo0YdA=;
	h=To:Subject:From:Message-Id:Date; b=Ltg/kGTtWf2Xp7oHX+tIcoto7eTUO4CgL79Zxhv93++25w0IvWJhwkstL5h6Uy+9azRFTXYBxERNQWWwXUiPzmO+uUIuoB1RVdxpPAupO7ZjiQCuqnEfhfvmN5UW+ulb9Bi77yWG6XAuInLDLcfPCXwEZgCJ4WDFFqm12V58sIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDxPmMi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDxPmMi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C4BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779784953;
	bh=oyiGadQLuVAFO8Bee5wik+VhgtfwCRSeCOGRsZo0YdA=;
	h=To:Subject:From:Date:From;
	b=VDxPmMi0LWDXsg9GtKlW1vnq1eN/51WWXji0vRgNV60oIRypdPpbSYhRurHO2elaz
	 5ZnTkrHWCH4+0XhOcaCYSd07J1o1YfVQXv1+6LkrmK0iagID4A9yD760KHrZNZxTpy
	 DsKL9TSwsB67DFWMuOEi/fO4PUPZol320EzQRxnsYV+c9+Xw4dRZCCNupLJZKLZZ9F
	 Rl6jP9F+2YU9B8HPwnhshZMJCAoWhd6abMYbNJHcWCaQcy1W55G1rb1Obji9fwGJPa
	 ujnvVlNeS9Qi82vuw5XrEpFmPKvbWkmyWWpsugThRCV1mk49I/O/MYJli8batA3bd4
	 WrUrN93RKk6oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C1CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978495368.22119.12535252409212241459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8075dedf08a8c70c079ae762658dad1e94df3d7940ff6abd931c6dbfd7caa9
Date: Tue, 26 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779784953
