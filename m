Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1173890E3
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788761434; cv=none; b=Z9nLUAahoC81gqU2qU/SXchlBwdY+A2ufYJzQoA8Ae6la+wTkarIxSt2NHkLrQYzPRDh4Rf4z+2QhcPuR53RNV33o7lXIfByvx+obphdUv+EHlDtKxw4A154ov57pKVMva7yW9jJsgbjBfuYfUDJ2K9et2R771MnwTjgv0DQSaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788761434; c=relaxed/simple;
	bh=D9iTzkN2FbuzQLltMzaUPbkL9exUDkGw5qveklRjG6I=;
	h=To:Subject:From:Message-Id:Date; b=uxvYMOxYWKfRRc6SmxuC/q/8YKDWBsTtqoxnctVIPMdFUiNsSffDULLeXq+O8I2pF6OG0qppR8Hs9HyChB+dluu9wrKW/FHyiJXIfiTHhUD8GUiSeay2i2SxlJjPiLVrWNBlJA1h/BHpHs0VQCS4bO/M5Z10JAYtcJqK2gJDgxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQuHMqGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQuHMqGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF47EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788761433;
	bh=D9iTzkN2FbuzQLltMzaUPbkL9exUDkGw5qveklRjG6I=;
	h=To:Subject:From:Date:From;
	b=UQuHMqGCvgMJneMH1xpMbnbKlHA2XNv0fHQ8ndh9fnsRpOwI+3eUM1EdDDVafGRWH
	 R6GqC2LcfXKj/zA2piHoXTXV5bUG7eZuQEGz9fBRKn5mSUYh7eU/FIuBqHQd8peK0h
	 w2LUI46Z5NOQewVsllWYDtuEVhXS7wGQ/aA5UGoxJTG9AFVnoqPwM3I/dRW5t0qLHy
	 9O6/Njv6+JstvLZJDPPh0qPZAAp4bztn6MIZMyEJx+5P3c/RI4cC+o2wKgtRdEeVng
	 uwlHhHVtdLvG5pKbMdsSSxWWVRiUWTxk6Fxx3hrVJAP+V5J/XH4fb7AlxK/+8tPt5v
	 EJ2KCsDIizLwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E0C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876143370.23941.18183028797693743077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0c6c47bad1557caf06c1e06bb5b7693624cd9b08240926596c617922f2e9b8
Date: Mon, 07 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788761433
