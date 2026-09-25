Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501804A3D41
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790351434; cv=none; b=a2jF7FWvMUwGHbQ/pukVSblNTT8f2gCZ+la1NrUaGl3/9tzexV8C+/B2ehvCc4WMqNQf/WM96pmy5CubrPiEDj97OwWGxhUytZvm5OvXEPI5abbFy5ndb+k//2oAnIGJR7Y9NpTIqktXiYD5eSF2zwY7ipmU8YztzgJjucbn5l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790351434; c=relaxed/simple;
	bh=RhwUjMRpeiQSZsVUlxOioX8jrbxqHzWQ//NmvQXTzYA=;
	h=To:Subject:From:Message-Id:Date; b=QpqfMjrlsHs66vD+0gomY0mebv3Ov00FH3S/PEmqwua26LF4lJuGpCJh6m34XLbcjlazo7hnArYMG9eQL1seMae5SFPYJ6Wms9cd8+cylWWSqkZBa3rYIYc88nWteEzoe2JqBgpHvSo/R8bPaCRxB0yjWs1avp3jeGxH1Do+wWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzcG2jzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzcG2jzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF30C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790351433;
	bh=RhwUjMRpeiQSZsVUlxOioX8jrbxqHzWQ//NmvQXTzYA=;
	h=To:Subject:From:Date:From;
	b=YzcG2jzQYOHU7mV8QgZAfks4b9HgG47ll10Dl13WqML0RsKmamnUOojpfLqa/UaW6
	 /8BG/MJHHsrEKeQXQyIFekHRf0aWaSBJaYqSEM7r6ty7+RhH7DQd3Q18XTtUjJAB1n
	 olcVdKDVR0KyJCmBPLkHkBscVj5+9sAyYoEt4z9KQ0QOAOWx1NQ4TI/oIctx0NFutB
	 TEMt06KrhvnBWSAHlVWt/VP1uk7GsF3VcMzOrMNI1XkWCvcaUqZz9OOtVU8xuHW4bY
	 pvR0slgA37uxDYuM4/mguBaAfpQ/JtuZzS0dwMvn55CLqQIVrU22IVBJrwwEoZjQC0
	 rzta+9mXjdcZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67AC98325
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035143369.17248.15046059804094185965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1c03836c8d2c1e2103669301ddca63c48820727a29c6ba7413c15fa786a763
Date: Fri, 25 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790351433
