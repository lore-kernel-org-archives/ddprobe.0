Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ADB1A9F9F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778200054; cv=none; b=iRCS2eGA7QkgBYVZEGkoacGN1PxsDhcc63llTZZhtq43J/NT56C7QqNW+c39mTl36ZK1JCnZbYgDO/OX0y9vEk6Exk0rKHDoimyz8niv2xUG2s8J9e+GFg57M0e6B9JQcyxrapkxrnsZIjZgerE3gkcBHxI4VZ0ue7K22wn0dPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778200054; c=relaxed/simple;
	bh=3eI2Ad/U1YHETm+ty9DXUbmeoPbIJp7lNuW8/+1RkLw=;
	h=To:Subject:From:Message-Id:Date; b=kesetrI7Cwtl3gGcUHZgToYZ2ETOOtRVz8Tw9W3plMfffdALadlDJntrTgpZPgNQkb20gCz0Skix1UtYIObsuGU7eJYqBjMotB8SdlN6XTVacARqK/OdsDi034CWloJQaVL9fMUkZjTKndjLDAZLMxWwON+XfguUwKUj7dd+xyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaQRBHzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaQRBHzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FA4C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778200053;
	bh=3eI2Ad/U1YHETm+ty9DXUbmeoPbIJp7lNuW8/+1RkLw=;
	h=To:Subject:From:Date:From;
	b=jaQRBHzmHfoy8NMl/eQcXlHE5eeJQI2NZ70wFQiCjnXdh6He+8f6cL5ubbHGUSHJq
	 k3kbByuZZO9DbZxDzQjzUh+ZUK9W05vrJhdBiSfNOIMWPArVT1WZsm7AZot1IjdGGf
	 ywggSwfYMLWQFF0vFOoJx85DuWKqwWHwFtLFgRsQHiew8wbVsm+IOmj7DXEnKKxJVx
	 x9uznSCdoPtGK1YG39onhHOKpiUECs5xRo1DLYPe7dcGQLnDrFjjHRLb3oQSeIXYnQ
	 dgdd5+yPQt2Qvfi+IFNixEIevRQzEdp6E3ecprSkSK4u7OaOzCI/S1tn05tpcAEghI
	 lJgRROnfc1tjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36ACD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820005368.25863.15149382014305156188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bd2a1210a571ab85e8bdff2cb032c75d2598974cedb2d3f58b06689fe86576
Date: Fri, 08 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778200053
