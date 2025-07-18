Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEC31E51D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752843594; cv=none; b=OSPVJOusLC84089vhZLVUxuPiLH+9NkrYcDJDbYAKOP0S4/u8m+yNLtjRu8IJMpIcmHN+QxaiVRzEL2fDx5652uau75d1sxWc/gXOrRiaWcYMluv2aWC/j7a8HT3c8lQDhtk+qfjuYjUWqV9cce0aqK72bFvv2UcKSVJeO9g1cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752843594; c=relaxed/simple;
	bh=Lai80WLO4hLYB/uKR9AUGpwmD3Y7i1x1KxXqAZpBvlk=;
	h=To:Subject:From:Message-Id:Date; b=eDDeNyoUG5KT73ifY+AdFJ7+LoaysnM9gzgeri8wYrhvhwylyViaeAoFKx3S2VXut8yXAZc2DFt6x1yQp0WpxrAPOQS8mwtcDWnj6SxK4t68rCagJr+OjsDTIg2J0bLJTjobq2isSn+knPIQkDwepbEhiconQHRxAk4/y0zqpds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDYb1Tvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDYb1Tvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752843593;
	bh=Lai80WLO4hLYB/uKR9AUGpwmD3Y7i1x1KxXqAZpBvlk=;
	h=To:Subject:From:Date:From;
	b=LDYb1Tvnthla1YaOtJ6tKcJd8Un67aJmakqrEReo1NFmAG7M7ibk2TPwbDsCAlyp5
	 tW7LZOKOl8W8jf08Sypq/iIrH0XIVpvfKL+ZvUZaaH87y0CxSlNwutiNO27mAk81Kq
	 AG/lk+guR4uhYk3YgaMyg/eXT4rv1BgRePC+Oc5ykUKgmN41C5118tLRVk5rWWW9EG
	 UhZ3GuOSSKWWMcO0aS9Bn3RwG1O3DoCJvpXkTO3BGkup0YNtWf9RM/JnjgYp1XvfIS
	 ECjO2jcvi6oaBLgm4fDy7o07t7PQ6U/xfOG4k3onbOFQcmkn5W/TwGCYU1WgiPdeC9
	 gKV9CK6rfHX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE21C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284359357.9871.2864682330852947915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49993bed58009c49c02399054c4e63f69d39d15b1f987b98895ec8b34f209a96
Date: Fri, 18 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752843593
