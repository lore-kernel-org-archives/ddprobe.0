Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336CE2D0C61
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970994; cv=none; b=hs5Uu2VA3SPkbxBUrv4fFdhHGKQggmzP4h4pbbMX9XWVYRZqMTJatBFN1A+3rbp8aCrc7jAUvNTRJj0K9EL+c+T9uZOwwQMFXMPg9Bwh48H+xd2UcHAy2Eyq9659MX7PdNd+sH5KxF/Addg6e7fbmeMD0JsLzuvxJtOagtuDusY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970994; c=relaxed/simple;
	bh=DTYEznnw8LZ6x7fEpokTIAYrV5IUfnqHhK0g81pn8Ms=;
	h=To:Subject:From:Message-Id:Date; b=OZGFoO85ZegSe+4j+0CT+JSHb6+NsxG60vSFZZbBQ2nsgGNXaFabjEyAwRAo4xu6nGFFNtXZMC9PhqFypLdwynryYIkOlHeJ0dD9ICAtyCcDlO1aHUNWf0UFx9tTN71nqJzsPBWbwxTODpUR6fTRN/4MciwuHOQadoPutUSGwYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVhBl8vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVhBl8vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C7C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753970993;
	bh=DTYEznnw8LZ6x7fEpokTIAYrV5IUfnqHhK0g81pn8Ms=;
	h=To:Subject:From:Date:From;
	b=qVhBl8vkx+BkZ8oZpn9qwWQWUg7wWBqV1Qv/1+/3cvVudWPWjYxvX0zrS/Uh8KbY0
	 1mceYgMf6qK7llZG+h+QLvwWO0nD+maALYXHD5383AYW31Np+KoBqVyzuJB6qCnvgc
	 WCYS9/pLDYELERgIYYp/KbDJerWBgxQ4TkrJG9JzbYSz4TU7fVZDar0w2YOqLUDIgq
	 ezqnraUHDPmS8J9Gt+da1SvsfJedAuyyDbgsgtgxNn7QUeYo1yWN2bZ9P1KMami/O6
	 K4EKSlOXpnGvEhZTSjx3kFcLwts6D2bQNalh+72dl4XME1NCGVo0hiSyLXQgYI9OBd
	 Em1l9s9q/px/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F956C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397099357.2386.13222857632073787511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed6479b40732708ac709e934ccb3a691cd8b83f7d03e82592f6868088f48311
Date: Thu, 31 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753970993
