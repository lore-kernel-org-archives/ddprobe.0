Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C63285C83
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842595; cv=none; b=Jl5H424jrCkAhEFJ/sC1Gl+xIRbHgi64dgfFtGJUhJ1aWXUPtIGku0HWd710iCjK8zPb4jZWcCvoNaVv6uRtUe2beLe6MZdPKmuDi3H75apuX/obNRpqgY0+toGQBhA+ZCqjjOdSkj7T5KDqqZwge4Q6JUHEzCErCo3GQ13RLlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842595; c=relaxed/simple;
	bh=pr2OypeJleVYKJDFR5woxXQKXAw+vWIkSJeaQYqGzE4=;
	h=To:Subject:From:Message-Id:Date; b=PvKONfnYlkr37GjQ1puzx4fjhlf2UkbTwz7EWOqmibZE22bsZuHD27VbVZi9p/9QfvXrcphEzJmi54+RX50WWO23Utv4OQ8w8iBc15nuL5g8DjqFBg59SaUpJTQ32a9GG5UqbhR+e2QnWtsda9EeHtugwZyWu/59OhG/u15UypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2vsjHsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2vsjHsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE07C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750842593;
	bh=pr2OypeJleVYKJDFR5woxXQKXAw+vWIkSJeaQYqGzE4=;
	h=To:Subject:From:Date:From;
	b=a2vsjHsKYWtnvAFzLcItZuPMzR55cN5MToHn2DkXUg5yRsACw8Qh4/uVtRbDZCSuG
	 l3HV8+8UZ2qb8F6Of9Hd7PznNK3nerM3DyIVdCzV877k0SLvZlHSnicXPkLdlSlRRW
	 iisHCCow8+wysM+D/yVMO21dpPwN01pzcVeRsNM7Ym+FNVB6aqefRptN2dDt7UqP/y
	 tzgstc0NMnGRtw8d2nYr8gaLwEpIlYekYQ+yRd3H9nJ0xehEifU9sn8QNua2lbVNcf
	 iYvXhPXANc74tRNr5RbD333gdfd680Df/nWfS3CfQVOi42yOzpi5mmAZsbkdELbGpY
	 //QCHOsrf9veQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D8C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084259357.1474.2599587721158775296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7730fe8116a06c5396b0c5d9c16f3eb48fd6242e763484db916af11103a97ea4
Date: Wed, 25 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750842593
