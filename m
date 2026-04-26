Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E80B1EEE6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777162654; cv=none; b=bSvOXKnyWJ7tYKAMc4J3WfEpyue1IUB4DrqeNlhFvUvCud0vlON9QsadKdNW4z4lPqeogzJGkz6AwwrxPCwPzOw12o3LxrKjO2C3n7OOY6KGjKsfDYC7rV5qi7rguww0cMVdAtXm8aVT7XW8D+VRmrMuxxyzDd7gpdgANQ9MogA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777162654; c=relaxed/simple;
	bh=vvCTSJz3BDeCIw6eRvao0Rxd7DZDOXWZNLDqj8P4cXo=;
	h=To:Subject:From:Message-Id:Date; b=O3MP2PA7CFPRA6VEXrMrhoyriImIOWzPuLsxCnSjPEzlA9dXhVx1S8FyB6foHgwYilZxg4P+Yb873i1Hm9/b7bqOAIB916htIpEfU38I7AovcIJ2TVCYvPYeW1irSOBLoWbQZIwYEcaPco9IuomTempcyAlXC7otUHQ39aiQAis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4KwLFD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4KwLFD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40EFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777162653;
	bh=vvCTSJz3BDeCIw6eRvao0Rxd7DZDOXWZNLDqj8P4cXo=;
	h=To:Subject:From:Date:From;
	b=b4KwLFD+Sd+UMkM6UdjLF+w4DqTdDwDfuPp9DslAA0Vre6PsUd4Mfzw92PkQXlQSr
	 kThsoUA0aTo0UnCwEjmgMFtqzsxUEYdbNy/y1loAYsOQycGWIhrcbJ5kgE6YahO30P
	 5fTOJXctkjDywpjAmMN4j3PeWjeft81XDsGRVKHqyRbmbrsTK9tan7123aJnunR85g
	 FbtsI/+1lNauYiU0eenA36nUFoc9gm9UfxsgrVsTDwN3GOLUZ1G6Up88525HvLijWw
	 RZNxsVutG2lyI9Bj0gCnJu6IfpypD6cU96GvZcIazEqiXLIcj68VbBBgz1JpeG1PzZ
	 tKCbmSpYTfKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD960FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716265369.28640.15996012817833761991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec5af80e70459c524f4586e6c6416f6e99872f1b3736f902879c5f7c5e721e8
Date: Sun, 26 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777162653
