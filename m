Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3E35BDB8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770034434; cv=none; b=V07LXxR9puerOf8iUNzfAQQt8jcXcXUPEtaAHHb2DKeMYAdkNVJhTutZP1ArdkWie19uasutPGU9VEU9bPtdi4iZUG6NlkKtqFDoFvEyUQ49Y4V6eWg8Fac+8oNe5CZ5xbKdkJQ6hmn+JLqKfrKWbyYh1K0Ifu5s941NkYzIlxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770034434; c=relaxed/simple;
	bh=hjgdWKc1Kao5XpECR5nsfHhtAo6Ny1orpthANydWQho=;
	h=To:Subject:From:Message-Id:Date; b=LG4LBRoRESvdDZQh0AV5vAtGuDXRZcudCfX9H2sEsXmqwUIrS8yTpV5RRYEH9mAygbre+97S4ajrYFQwN1SnIXvwhP+qW5eR9bkOOFEwzTHJ4QUuWIhVOjph7LWa6V077btqfKGp1Ov+b9QkNQXeIGC6T41zIr+Zm/xT2a/BOKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wer44bjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wer44bjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5488C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770034433;
	bh=hjgdWKc1Kao5XpECR5nsfHhtAo6Ny1orpthANydWQho=;
	h=To:Subject:From:Date:From;
	b=Wer44bjZIodEcWdgSr3wM3E3zCryyRddYEry4ZSTW3FNj/nfMFuUCey7oeCkcyUf1
	 ZXy9D51Sf9kXlaVBTq01rvII3S+4UO8zwGCSrdWMSVSsVOdZ9f6VlK9Vs6sTFdjm0T
	 xLtJiOojWjAmhR77aNmQqfMYWgDNXzmLTh05UBPZrA6HbaU9H/2xwcFT33M3jsBNgy
	 3OaPBa4ONNwrPbD75BHUyPVJBzdu21mx8HaIM9RZWqNsH3mJqn7VlJqEhlb3lezk7T
	 WWXgzWihCeZaJwKm8cEPW58wjy3+5N42Ly1vik5Nz29wWI6z6RH6Q/qQgYsf+RMmkg
	 gHkLjzyeXl9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B27EE7315A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003443362.31184.15587013141021758914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811eb8523b63e04341f88a3ad01f705a20e7bb3853129c9c877f8d3f79498e37
Date: Mon, 02 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770034433
