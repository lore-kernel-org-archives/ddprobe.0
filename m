Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D062FFF88
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770359034; cv=none; b=nOcV+5d+JuDYnU2SRGY1USCQYO/10qyXg+d70/gVlL3rhqXEG15d9lJFkOmdYQymcjLDrDSvR+7h9R5BVXpslUzRPXuIWaDwfzY/37iSddafzatqg6oLuGdhsT7YsBX/niEu2H1yKdYUCn3NXvPk4HVxLK6Krjydskwl/YWNc8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770359034; c=relaxed/simple;
	bh=ppR8SQLucg/zHZwx6FFXEd4sKxLs/eoMCnAKBXZFb9M=;
	h=To:Subject:From:Message-Id:Date; b=NJDenNA22aq2RWMe+1ci5Z5PP07JOLtHzUO8z7WqcLOzRtB+i4N3+TqIcvoQrCl7Nwz71IHHMPEibBay21t1hyppOR2f175VpGfnfZRD2G85z9gsSbdfQ3XtcivaqBlyK1XOvotBUN63Ga7ZUORxunt2fUIN9tFbtvA3LZ5hwz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ragPz3e4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ragPz3e4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB0C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770359033;
	bh=ppR8SQLucg/zHZwx6FFXEd4sKxLs/eoMCnAKBXZFb9M=;
	h=To:Subject:From:Date:From;
	b=ragPz3e4wYwGIBZJOUBJhtWI4lRh8SBtZMGENpYUVC41Y8kI8IdJu/pZBC9BMFTaE
	 h9hcCOw8mmlZCVDeu7SLO50gqn9LI9B34hHmZZXRf8rYCXSMAhOsI0X7maO4eiDtw3
	 yHDcEeGUjcxsg+E8uMRpGtbqoodARWikqXrSBFZDi+8aCUPbtEhmQavNBFyTQkBebA
	 nHeiiejLON4RFZkAjdfcRt5QA51WnG8toiN5DkM/voT8bF5R5nX0S0fZoq6sexeaiF
	 tKfPVVCcKSTxXhDfTnc/+OHHjNUwgAffOvsyfr5qmIcQtJngRCgr5mXjQ8HW6X7n+t
	 DpGG0HsOCm+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95653EB28CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035903360.11836.9917084449671656778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308f6fa9a950d52ad96c06e40e8d7ade6a5f72c0b5aca37a2a5c36d13808ce51
Date: Fri, 06 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770359033
