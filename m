Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD4F168A8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719891323; cv=none; b=sqZBKFlHbyoe8Fj56ABm0mXcQ0dC89gsXRFuesadSQOJ8Du7PuNieSwzg3hcoOB/qYc63Cc+UD2fSDUsZaTMoRU3ilS1wGlo7MOA0fdXRireE2q1dy0YdVU+oj/7uhf9s0YUa6IAUiR++2Zv42t/iwRAMT+SncEsKhpVLehFo6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719891323; c=relaxed/simple;
	bh=M45fQF5Z39ouCHR0CAA4Xuz+o+yS5POcT6yQ79vtvi4=;
	h=To:Subject:From:Message-Id:Date; b=fWk7hphFKzeSWtpchgDSj7LTYqqTlxhC9irfTYd8YWcacjtDaxOYDQNef2JJ8iytsjFfipjlLdl4TatkP0xZJm6FF125TFGhFhUG+PqAPWdTt6e07SEwvysh311bA2UuS19DpseiCzP9Eb1aS2hEVTpL/QdfMqBGIVyUj3cjSz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvM+SsuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvM+SsuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C06C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719891322;
	bh=M45fQF5Z39ouCHR0CAA4Xuz+o+yS5POcT6yQ79vtvi4=;
	h=To:Subject:From:Date:From;
	b=gvM+SsuGJjLJFcP1AnSoNoWDCRc1nXiBne8LSF8I9O+YLQvw/WChLi+i/Nugm4unv
	 QrumO5WCH2p3SyMfcQQuJZO8xhm9oYEEvl1/f3+JpzklmAOvWwrwqdrCeyLRZWz5WS
	 8iBOZK7ROi3za+LWetVP0szg4DdPyBUwiDo9vvM99Jm56ExE6Q2U94n6blUp8GWNcH
	 /yDy4syr+2/w7RuY/hgfAq0fvlcTBI/eadIOfIx9Z1wkNNHwa+Y1rtONKAgvWlk1pj
	 j5EhfE60n1VWvOmF4kneFLd1vfLYAYm2YIGC1gITn1Nqft2OstpBFMOxKWltsVB4jN
	 7ARiTrVVadYpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C822EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989132278.12643.5999014605563822219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4248695d51dd28400451820959306a6f8b78990760af59ad492cd5b85dd2acfd
Date: Tue, 02 Jul 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719891322
