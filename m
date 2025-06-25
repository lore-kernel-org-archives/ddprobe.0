Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2248B202C50
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750872594; cv=none; b=U3ZelstjklgRddYQaulNK1h1pEGYYgYBM68jrB05Xdecy3I7NVRc1Lvya2EpjizhjDbsNX1/rMYTFxonH94O1E1jvoOWGDW8eHQbr7vEQiKXwsSonTo+QzlD4a6kXCaEnA4BWVQDNZRQQJQGb6yt9unf1FFvj8VjcE2F6Mbe8Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750872594; c=relaxed/simple;
	bh=H9RnlQHiFnw9lP1ZyrgSWf7T5HUSvKBW3iUayBfy/0Q=;
	h=To:Subject:From:Message-Id:Date; b=G8fQ/bVLdWUwQODChvURB9r5scS+toyaFF4HJUnoBmUp+rDL8uI5rlrzhPpkvhrT2/StKEG9OqgXP4mcWnADQKfob2II3DvYIEholWgr6huwDO9X//uydGUJZqGLncv/kPJk0CO5s4MEdqeYt88Y3k6VKNEUq5PDE2Wu2/SGt9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJHN/yAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJHN/yAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0381C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750872593;
	bh=H9RnlQHiFnw9lP1ZyrgSWf7T5HUSvKBW3iUayBfy/0Q=;
	h=To:Subject:From:Date:From;
	b=OJHN/yAfqqE3y+orFAZmqfEF6P1u0I+jxJazJ+36Sc90BNi0fjN/PJ0uI/j6aeIv7
	 MAn2/eDjYHHKCzeC2DlEMil/R3nxMZdZzXijRxkdRQbQc9nEw36coajL0sZFYECnyz
	 tw44Zwji5Tz1YlXA0W5eeFSvj3HPKzSPniuEvsNTlI+P4KdV99goOuvLlZJivgUbg/
	 QswIpiI/vSOVSzyGD4lTwVSQPPhF2wlxO225myBaFk5uvp96cBC3LuuUHccEGuatIU
	 +jaH1WIkSwnhrk+//eH/NIglV0gLFJFsRftJBWWaVlKFYlxHvklDCLhaKO1USCWUG4
	 doe5nSpqqmoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A1C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087259358.11820.17623836087323307392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f1966d1b719f818c5a8235bf8da6c46fcde3b5d35989e9f248d5a82ae46958
Date: Wed, 25 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750872593
