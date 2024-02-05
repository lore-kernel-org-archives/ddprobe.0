Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CEA8F49
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707104297; cv=none; b=XLJ5c1ezLf6Wdmn6OwSWE9YMMV24zaQv4jqoJ8vFe5/o1Uelev/DEJCwaS3dEUV4gUHLM8QjMh8WBDaT18WCr3EqlVbo4hxrTs8RtuRVHq0+874e5hT80fB284l2bredQF6pEGRqU78AwQLg/YRg9zQVCCr7tCb2Yq7jnxKAt00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707104297; c=relaxed/simple;
	bh=PE5J9T3jjvSMyfOx++fZ8Ua9DY/AI8YzHqM3DXp7xM4=;
	h=To:Subject:From:Message-Id:Date; b=XeK1hmcNLO1ZSljccGK5k6IvTvvA5+5p3F3Su/7ULjKwV6i38pG48807T6IFDU5hCjkBVEn0dm10/D9LaTRKfz/B7ioEx83DNiN1MUUGU/MxZ6KiRwDsa4y6SwgXRJ5f+TTBwR9kAXlGARg/WzTRTgEcIU13ut54zbunC186ETU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bki5rLit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bki5rLit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 886B0C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707104296;
	bh=PE5J9T3jjvSMyfOx++fZ8Ua9DY/AI8YzHqM3DXp7xM4=;
	h=To:Subject:From:Date:From;
	b=bki5rLit+85T1aSlmMMjX8ySVf5UZvlHwIrJ/Lwt5Bdp/naQoOCU4uZqC6+YRVMA2
	 vIaPTI2ionKZa9D+/th7264J37U+hPcW2Jo252CGzmBJkO6hGGdBpbi5qzFgzfOy4u
	 MtiHESIMWyMrRaCY1eB7rN0KjAO4/M5NdpLu5Ql2xiMQoI2YvJfBaGUIoWt/UdRwvJ
	 2BxK8RS+0KzUYNvs7HLzijBp1ZVJ6OXhYIltbwzWTRHmY8cdZX5m1xkab29DyBY3UM
	 1WaTaDXUakcAwz+x9gR2TtxtEJSBdDuctIqUZj0KZDeIAARCINW2wC0tcupGGSepTk
	 uY5oCIJhinlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63064C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170710429638.30601.2265285373457375483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af4a266e2e671ce1858cb71a4f2aa2431cc930aaf28373a8f6e22c716b266ae
Date: Mon, 05 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707104296
