Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E2D1537A7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750574396; cv=none; b=uorhKbTZQ3GUJkKdti3fS6rCDsu9n2Yh/TY3UPXM/806epTmKy42zXRmwPkZcA4WFoI33pwsfbU18oTPDp9F1vg4lCLyZWI142cSZuW2nZA8/DpEww2UAJHlolqW78vCWzRE/JdnKnxIYvVkQm0tHG3AccXzXFoihi3kQ94AQmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750574396; c=relaxed/simple;
	bh=Prn7cy54EyltIj8v35laBNPTjLEB8shXTTA4utKfT+4=;
	h=To:Subject:From:Message-Id:Date; b=a5ut9UIJBBipd6gcLpEC1aAvMO7izeswj4p0OrXX0Tx2mMT5pClG5fDycYdG6bd0/vC5x7bx3kvZbGtliV4Bu7RHiaDhNe3w8t63/sZzwCBGGxj37wajipX+yYK/5N0rZWBqUqn8fCVf0d0LifWZGMxLmF0CEUxTAtU4cDjskc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzJb/X4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzJb/X4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750574394;
	bh=Prn7cy54EyltIj8v35laBNPTjLEB8shXTTA4utKfT+4=;
	h=To:Subject:From:Date:From;
	b=LzJb/X4LzQjbjuSBWTpdS7Zk8tOm5zdLEDQUbfbDqKQ+ujigP55AU3nLyNUKOfHz5
	 N9n3lEJxyC9Vy7O6jDDUvQDj/fMvTEUiAp/Xc1ZBpwfNyYWUwxGFMZpILtBRKfu0f/
	 8sSeUVfrmyxugLIA4M0/vwIW7b2Zc6CCn/Eon7H6CoYT6EL/l5obYb6LxvbRIYNB3i
	 2YcFNsMaKZBWs6tExUcL5cC65LOJ35E7t4y1Wex/aiRQNQsF78fsSjOG/HMtNhbY/z
	 dWZToivnK/a9Z+3xyjXZNtMn4KPRfukai8t1Ttg09Dy/lWXt1WwFCWPpklaURjKI2n
	 N8iVsWK/NLjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C30C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057439358.28166.11430880355765062393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95655715cd209ffb1b42bc7a613e9add82e54ebb5f6cb7e07eac57218f951a27
Date: Sun, 22 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750574393
