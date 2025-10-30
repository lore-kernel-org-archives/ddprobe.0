Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F5133987
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761784194; cv=none; b=Q8e62BKkGP3cOiIQDsiyr8V+sAI6XMQUxe7PYaaWXyiQtP1C76kcrXnMuAbSwKo3eXKBNOoNzTVM/zuqHa8/KBjwLOmvwgGFcw16n4r6xD91A1f9xs41tRcnjT/f23cUkWa0gz95JQ/24gDQQkUip061USNfIAE3y31L5RnICKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761784194; c=relaxed/simple;
	bh=yKmVuuicaTSAbUCXDiFytFYQc63H4ATw7qYZeIOicx0=;
	h=To:Subject:From:Message-Id:Date; b=uUAMojSq8OdRAJ+El6HUFbgREMMKqmCfgm4bsBaa8KGBVBIkW0lchY6QfoRcs01A3L1GV+SfrtOCLNWeYt2K6qrim7i5w3U9C2k+k/qWrM0B202UVvviveThd8lU9EFMGLVW8F0zL0/lkJb6X4xrXlfX664MngE7xlDA8l13CIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5x77j/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5x77j/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4276C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761784193;
	bh=yKmVuuicaTSAbUCXDiFytFYQc63H4ATw7qYZeIOicx0=;
	h=To:Subject:From:Date:From;
	b=b5x77j/OKCSluhmeLDX9JvdxMXXHZfcnKFF43Z10HP7ivZi4JBTVweRW8P4oFpLo7
	 7haRzTw8Qba3tcDR1PMhEF7w5CyZlQXlkweDtStkJMO3tMagwodCVtM+YHs/WwaNzd
	 vZu6vSgwTNOd1kRIhseAiMCOF9V4Sgi0QG205mM6I7fIcmRUHYNNWHVXKChxEOCZup
	 fZtrxQ2T2PpVq02NpPusni2bFRQYOHPXtD+lYHDfg9HQLE6caXlTrP6Wt7lZKlLXe7
	 9mz0uCmIGRZoAb/KwigHrheWfh/kxf0v9zja6XVxTPRAXMut3oHradgjljQzAHeIZw
	 5mB4/ZSquKOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9039ECCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178419358.28040.5276922164356440773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db20151c18b7d1af555ee5a958eb7d25fdf506a4d3702adcf131bcb2f9837bf3
Date: Thu, 30 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761784193
