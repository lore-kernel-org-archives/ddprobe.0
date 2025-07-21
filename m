Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1FF8F5A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753069194; cv=none; b=J/I8mYKtFqugFxE7QgzYHrrtrAP8iFtDYD6U9NDA+e1LhQC5YuPKwm/ShtpDixpqdIOSDahekHJ53SRQCmUPsr13rVmOjDPC1kyFmuI4RQhRLnYSZ8OlalSw3C/vKrUkz1DEYvmLdQF11wyuaXS0NDrZTFWgZt8HOb0YzQfSPpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753069194; c=relaxed/simple;
	bh=MZTDii9mCYWYYVsWv4EhNGEBcg8qvSjHfYsTfhVCRkM=;
	h=To:Subject:From:Message-Id:Date; b=E2eYNXJiU1v3XaWEWy3UkWHLtn3WS+mTsMLxZSLs3/xPFaonujo5ACNP/8szZw2YEpmfdQo+ymtjeQ3SsO2Jw3q1P8UTrSIlppA5A+7yUrGAO5uHhtSphr912g7tNOWoB3aGKpC6OAs3ZgK/svWgEpmLDPbWhtiqPEYTEgESvSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiEd+Pin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiEd+Pin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1775C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753069193;
	bh=MZTDii9mCYWYYVsWv4EhNGEBcg8qvSjHfYsTfhVCRkM=;
	h=To:Subject:From:Date:From;
	b=QiEd+PinkkxRxq6ViGUtr1hQ/u7PdyTzS/gUCAHFYdeSnOQs66uXsr1JFs5DsY7xX
	 QPQkNCQEpQbJNpkfiXzRpFZRSXOFlRHqUdB4OaIKu4DYjdjRsWqwKVvqJigbBAoTRy
	 FpobDdTBTveFut3Fi8xaKS98FBRbLs07fdEaZqep3C6cDP3po9K0ohfJK8VzmFdaLt
	 DyHj/HypQFYkY05NLdMV5Xg1+30+QGe7FwWcHapOAHaAmig4Sg0IttL9zQoLN+6L4P
	 Xd6BcAl5HJtLt5QsHE/miXd8jH+3KAKeCLKE9HS3sSYTZdq22bHTsxi6aY+zLUyeZT
	 J6ynN0Y31JclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12FC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306919357.25900.5481399526393678580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b32a288b3ee38ac5acc9da9153ce4e1c4cb64b233c576bf2ef86533e98521c4
Date: Mon, 21 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753069193
