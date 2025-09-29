Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B2A2110E
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131594; cv=none; b=r1alhh9fOuMkCO708s7DF5uNTvKOfajeIPlO1rFwf5HzVuu/Y1gvxKlyblTnFqIrNebyCVTJ//yKStOncUtzKMcjoka6XEL/1ZDyD1N0YPeUK41MwVI2zh9dd1wO+kQiYNf/4Z+LTbnCwkUwlwE4+YgQWDzrDwtVLuQbH5kYgV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131594; c=relaxed/simple;
	bh=Ay3glt2m2uyun3ypRUftjoJt/aSvnYgXwXh/6VoetG4=;
	h=To:Subject:From:Message-Id:Date; b=jA/YrdKRc2xD1gBYj98Tl3ByG29LQG+fJ1C6TM3iS6EJI9aa9G7oIdZyPuPUwjPsUhSW1ZPnH5M5Ll4Tpy5ofObIhKyonZvcp+ibipA9+AyspCO0w0bHGubj096LxXl3d1Ky5ZPpwAF54TewkDy/WLjwH+gWQxn5RKxrNA3g5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldcHZ5nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldcHZ5nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759131593;
	bh=Ay3glt2m2uyun3ypRUftjoJt/aSvnYgXwXh/6VoetG4=;
	h=To:Subject:From:Date:From;
	b=ldcHZ5nxkzPykNzLI5wsu3r1UgIb/IUrZICsS8XYupX/sSoJi5/7q51LqqgNB8lyh
	 ztoFk0/ieJVCxMOjaGKllJBDxjRhjO6FsTVROMG2jNq3dHRbyNe1UZYsqdCvlxNU2w
	 LK3hGnQFbKxb89GUg2jpEN5y/csGHthGlNpOk8O1A2fhU0YB8FfOc7Ucsfca2zIznQ
	 8EedS4nyY1NoYq2sgVxhLOGquC5OeYkF93pfwXwEjnMZS4fMJSgHj9R6zK/sv+Hp+V
	 cRZosS5WzZAdp5fUBUvq6Qv68UgfXvggf3iYZEAwTV1RpIkLCRTaHjc0tNyr64llAM
	 aKSd1e8MMtKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9366DCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913159359.22712.5614115145433754987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06da0bb04dcabdabf291e8a60c8c9d7fc37da3936b56b26d3103a4b732f6f58a
Date: Mon, 29 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759131593
