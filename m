Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CA95474E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782658114; cv=none; b=MfKKB0lCE+wOAxlhNXfbYop+b1YcpqQkLspQs9eOSg4yDrQp9lL8RP2ItVezoNJrvuUf17qkpIOWFUJ11jw5PkbqeePANUvhpawaeP7JSS4cRSrozgmYMe0Y/qhfQtuYl6guf1Sim4aL9P6oJ3Iba9vF17gkHk3bnm4y7mVcfnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782658114; c=relaxed/simple;
	bh=4/Qla/3FV65mjUHLE4+p8qIZ/3itLXZsk87WCA3rxKU=;
	h=To:Subject:From:Message-Id:Date; b=goOxESuB0mW79rmWQsL/4XKVvqQ81v6fU8VqzOz9+aIfEdeccjB1FVSJDHE50VIIcAsyOSeNyrZHGiogWpOtGApM8Nh+3iJyEc+oMNHkO6RoZj6p8hRBLhKkPsBD6xAIlINp80eFVytrQIVR9BShIZxpteJ74HMlr5GLgc1sczo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJpPnIoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJpPnIoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF648C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782658113;
	bh=4/Qla/3FV65mjUHLE4+p8qIZ/3itLXZsk87WCA3rxKU=;
	h=To:Subject:From:Date:From;
	b=PJpPnIoJSV410ZNHIlsI5SmQ62Dg5rwUUIe/GooV3+EO6HTwjvzhIBIdlmPL+kYBb
	 mj2VO7UddQGIdwDav8qVWh5Gs5h7x8F0sFC7vKCsDWpk9yCrDdIbGwykP26dH+vsP4
	 4Mh0lbZda2NgU9WRMDpVIn/wA4sktFc9SWEbPwkhfDdtvFZuXXQdcSksBSXKUEGnSs
	 j8AVzHGj4eJQb5GFdXJALmcXHIMCKM3jRpbHQkFw0oWuyFrOUhIr3lQmS6IM66VnWn
	 yE/H6uBt+Vhy0yvInEH0xwF3b0utbZl+/ZFkl8NB6xpLsglXU5WAiY5WAEvoIBioxq
	 tbWGhU7xVU2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AFFC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265811370.11108.4970921140027526956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcfbf7680b7d0cdcbd9c4a452b94c4ee15bce7795336a33a8f9b6866a341f84
Date: Sun, 28 Jun 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782658113
