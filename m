Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18C22064
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728726354; cv=none; b=GHKOtkIbEvNvRQsdkBeI48TMujhqVhWqP2aEoW4g9KJ9dbgVltkbAsEpGBNnl/UXqwYEv0PIEyNi1HjkQj5AsyvUcevCnSQnnIMgPW7jgxeHS8ElQlgO9pM/OUgiUAnggp830ugHwlrgFSVQz9u3/G3yfiRLRhh06eY2kwkaZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728726354; c=relaxed/simple;
	bh=GVBvZoxW/AzdiVzwkuT0RjGVbjCxRqfuxczhe4tMuHM=;
	h=To:Subject:From:Message-Id:Date; b=jqXyGi1Gmgy0am1OdHIKz1AH7/O6w3rG5N0aIwdJrBMQ5Ypx/s6OWrbuvc79V3HSVb12VGFxWJWCCEvYENOR+uHuIcrgMIHNBJVGBjPXv8uc03A/750QZM3afxPtE2gO/jOXih+bfRax/BWTibRSDnC/xt5nAw9FzsY5b1CjmpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9fk0pOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9fk0pOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F62C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728726353;
	bh=GVBvZoxW/AzdiVzwkuT0RjGVbjCxRqfuxczhe4tMuHM=;
	h=To:Subject:From:Date:From;
	b=Y9fk0pObgZJ8udQVo8QKtDgOBElZo6/ok28GxIFcRFDYis4xpVmGz4xfPm/xdmSFi
	 9UzW2zdo6Ssl1+OdbINqutmOZpUs6KH6vlB+8fQvAQ82729Wkson8R99dGMid/2Wrr
	 7jLPSPgHtNY1e7i2028VoVFSdOwJr6XNKpChsSNrG+bKXCMQzWkuRHAO7FhnTHCnA2
	 +vOyLjWQ9Z5MX4i3tdz2q3oGRvc2kne8FjEQffimi+zCoRwcavRTZufXpWFUeDfdYD
	 Nj86G0rTuBF3jnmGJGG70gcQvhmpZ2G+a7Dn0K7sIOMSbT8sfhpxiFjnwZwREngVd5
	 YYh4IvT7oBvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD78CF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872635363.15631.13826491921844533933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c390f63226db331c59c94b715f9a7528a1eba56bfd423e60a43587d794a10a5
Date: Sat, 12 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728726353
