Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB31B78E3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725882354; cv=none; b=gGHh2XiuIXW/jGTxpk+PpjnG6trC/5cLUPRffHLWhfsotyxIXh1FRUQPvYRm2UxAsbrH3TeeyAfPlzC9n8/mZj5C9PHyMIgwSZURvXoT1//CGtMQM2swUKlUpOxYy4HxORK7yQihUt/DYwAhz3LP6fk79gJg9YSgjhTr/fCGqYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725882354; c=relaxed/simple;
	bh=2QLt6SqmHHphaLgYInXaDH9+h1RfKUiCLJEYMFWCpTc=;
	h=To:Subject:From:Message-Id:Date; b=FCfbFEkofZUwWQagpFZJijBwVOWaALqORTG334Ef+dtS1dK9LVZLsqrnJ1WlhZa0pUmnHTHT1HfLVKGriK8JoaKCk467AciLBzlF2ufarIL7HTTJ9/6Die+NBIhkVTvOBTSgEDO8dOfW9lFRWKzXYUWre1m6cS8nD69ROdg+Dco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuEOtqv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuEOtqv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FFC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725882353;
	bh=2QLt6SqmHHphaLgYInXaDH9+h1RfKUiCLJEYMFWCpTc=;
	h=To:Subject:From:Date:From;
	b=PuEOtqv6dn7Ns7+/xky9gA6/bsxh9zVcCYulmuomaiy4y4jiokM4541yRFs8CJFJ5
	 ek6Mr3aWf9evLQUbraRR5gGjC5m0HRTejmzEUSSFukqiaBcXatTWKPRTMna1gUF/KP
	 u6EEG9g021bTH9A5IeVUoOFc73obJBQmhY4ccvDuSGxcmgHqBpIMaRMA4aG5qYLo2j
	 HkYGBGE4OxZRhXcM+2AoQoOXgBTYd4PgS8Dxua4swJMcgntpUSb9CRD+891O1j+YzX
	 n9+Rd9iCLjNGXBMvufWcJNPtnyyq6aq8nBh7zXsjMrC8hyldAg+6+AjQ49nqRx7J/Z
	 +1/mgDe1gh7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F0ECE57A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172588235360.4027.16748189336701534109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ddb57c2a0eabd15420136aa0a3f0863ade7ca29f728c891e2fb543419d6c1d
Date: Mon, 09 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725882353
