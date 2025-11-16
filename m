Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74B1F0E34
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763268654; cv=none; b=STbGbxNIL9piI40w3uCn0fbUk3lidL1hhig5mULKk7Nw4f6nJu+AES43B6/O2roP6VXaOurehfWIAz6XeTzM1cAVD0xaVKURPuBuir3ZmHMXqw+19g41h7vfyVL6SLdd+B+mU8MEwf7ypdxkt1tobJFkna87bn4w0JFBSKjgw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763268654; c=relaxed/simple;
	bh=H5iKqL+i7m13RbmOOHkrecGnfu7uPWX4ykjRcYTuZ6Q=;
	h=To:Subject:From:Message-Id:Date; b=vEHf7bZWsmZfH4ItEmfyzMOKJUxkZE1JMp9HSL3u213TPTm6GTZ168R4l0y5Zi9mDOrzOBG4cJDreVKHkoU2NxQOK6bYuNeZgmQi+oR1lCzB3GxMRMRRWJ+aOW0EwVuufm5YyldgS1gOVrln7saRbQAjH/72SIwa84wWz0Egejw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuJjqHXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuJjqHXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4958C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763268653;
	bh=H5iKqL+i7m13RbmOOHkrecGnfu7uPWX4ykjRcYTuZ6Q=;
	h=To:Subject:From:Date:From;
	b=KuJjqHXu9wQnSsmBBy5epFg+vZfELcqpkrwnGAU/4n9rS2Vmln1C1flG9SKdiUdRq
	 dxK4Yus1oOfy/uNf4bVlk9exXlwQ9yNV/dlWpewXzYf3wkTNJC2MTBAwSHG3DbujJv
	 nqLiKXAvk9jahsxmKJ/yl2DXMZn9TB4jYDWnPHfFNMsQjSUoK+GLTVr9Q9U31IO9kz
	 Wi0PBz7nKuLsvde/27ePtN8rwloywdJQhAgAr59Y+dQfxEVZi/99c4/MH1e6cCBQyZ
	 KkNR81+al9XrG0STWzu8WRB+jbJSTTOgCI/O59Nbht5V9ASJeWZWHOE4+d44vdiBi3
	 h3pmhkZXdllqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7FCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326865358.11413.2447497742509652362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb3e097a6a54131b03862feddbc2594f668eb7cd0747ea5c348cfbdab48ca70
Date: Sun, 16 Nov 2025 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763268653
