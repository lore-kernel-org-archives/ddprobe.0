Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105FE155C97
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730105154; cv=none; b=lQe2MNBx6pDIJpvPgvSJ5C099MuBxTiSJ3rCrSmkDstX9u/5iHmlJwn5/lV9mVXOZzznPC0mYnNlKTuied9wb2nijAv3arrhfaHmB9q5NrndE+msVKlBJY/0X37iY8q4IlocSdEWhkTS+OqUvgK6eTfY5PHTZ4F3R8+7hvcJfQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730105154; c=relaxed/simple;
	bh=JKSwxCZRJLsY3QmD5Sewzp12oCfgXDJ5JXgsgwrRMLg=;
	h=To:Subject:From:Message-Id:Date; b=gxDnTlaLrhhg1gX9Vxjr9JIpOxJ0AqclMrLtf24MsxndoZgY6f1HyCNd95ZkLYJKOnV4RZDhE07ZFFbMGZiBzL1un+gnk0gRjgNlJSlBG7sMYNcwHcHgjS2g/Uvn8WXkjhQw1LC0ZLCYob+7//YnmhH1D7t7P0+eVQ8We8XI9AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VThSYoIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VThSYoIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730105153;
	bh=JKSwxCZRJLsY3QmD5Sewzp12oCfgXDJ5JXgsgwrRMLg=;
	h=To:Subject:From:Date:From;
	b=VThSYoIq3ixCXSq6jEoElm6R6b14X/Q3Awc3onLLG0c/hOjzOPSXPo4wXMS/X5NOd
	 JGfoVfCveNqBshXInMqk9HHtHQCzL72vH46JVAnSv5HcO1h9Ku/V2IhI8E0IDRkjb4
	 T3B/FaZCdNcbW4gCq2QQKu8Bw8X2PrZu2JSPOD10C3/EMfx0wn7+FMP3G9D2gTKjO2
	 NHb0XkdM3g8Xtxyr0/9VHVwQ+Sr6JcdYEyaqYBuRWVRqbFe/QX6Nn5wjUVYqyUwaLp
	 YL3tzYdy/67YVcAF7eXPfdb2dy510v8AhsQmEuXQ5XwQq438BBbOmcK/aaJAFtNGA3
	 akh/dGD/O88UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F1D13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173010515359.21516.4711194180150152174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638eb9b0a6507de5cee17e7007624199a05d912c4d25e75be2f832514c64117b
Date: Mon, 28 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730105153
