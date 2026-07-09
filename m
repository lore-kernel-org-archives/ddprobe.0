Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420023EF65D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783604914; cv=none; b=K2zXoKexSQp9skp58VqxgaFQZm/1RtQ/N3REb3S7M8h4srf4PMJ4noTvIeqMeYfBaW4fZYm14rx02XcWjDk1EltWGzr4oRY0iR/vK2amDWGYSlHV4PP564pChRjOFGoyCcK9VIjyG2bCKASVKvm8lz/LbOAZhiGHJzeU7NaSNZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783604914; c=relaxed/simple;
	bh=BzGknKs049n5uVCDHER5Hg7Sx/Vr9h0I1oGBqv11ERU=;
	h=To:Subject:From:Message-Id:Date; b=p7URja/hf6z7IMynLm9ImU8ZXN/vuYat/GKH7VhNrGOdcpJP7c4nImWCo+otAFUWIAYNs/yExFbQFhM9Cc4+IzSr7YQhxk+VoFWnz/NpXXUqweGlZ02rm4idbHKeG4LOGEoUkEVceaD4q4loaRu8o75hsr1JJ4hijpf/+M8DuCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAHb5PAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAHb5PAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D5EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783604913;
	bh=BzGknKs049n5uVCDHER5Hg7Sx/Vr9h0I1oGBqv11ERU=;
	h=To:Subject:From:Date:From;
	b=PAHb5PAR0u/hGdjUndNcBSkM9dKFt+DJtJI2F+HH30ZtLYo4x4ejdUIxTvkVt6cqP
	 Y1aeEuxjxvJI8jKlktdcExzKrE4HlK7tS+0v8hUQalIkB+yV7My3BTKG4iHgT2TKaZ
	 w7Ylbb/pAcmUDb4kKmN4r3/rFvewdCxXsRTXOYQxqeVwu0s5OfGB0I7viREwOHeOgY
	 i2Lvq5KuQH1onPjayY1Hm6EdXrdCG6QJm0btVPnUVQJVZrEY4nUqfTXoQabwsYX8At
	 HhoI1sznMD0dEHOCwFYt3+N4iAzGT6811p47nt2Rhi8VvhfkuZgC+MfMuJciMTefLE
	 8d0QXIuCO9JEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360491368.27546.12544773759665838847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fa5477869fb71f7b870b7c61362a3c81bb0c5abe7d08dad329f8844e766095
Date: Thu, 09 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783604913
