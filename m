Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291158F4A
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753454994; cv=none; b=B/0Tsv70824gKAT+lOoKKnw72W6MS/I+Y3/KWHY163ymIShgMcZrpOC3JPuHD1WK6vlGUorv1JUTCMQU3+3BFRpAb3tt6zrENf0mBuRi6Mv49VNAD8T046c7AOhOlM8N+HzJrs1INqQcB522HirmK0kYuPsf3O5kxNtFGmVKvJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753454994; c=relaxed/simple;
	bh=tl+K9+fYOl8ql4VOKk66mNbxwhV4DkI+bymIZedNNwM=;
	h=To:Subject:From:Message-Id:Date; b=pxlWK9Uev0/4tS2JL3Zed7HoTA49OskmC+KWmQH05BayLEQbgJaRKy0Opkmaqtrrq2bz/MjiYgfv66uRB7DGxk2Fbz9XK/SSCFUVJ0+72FBoe/ZK9eNhryfU3XPjKhViEh7XcdYOi9jHfv47ydkvdS1/L54MOpVU1pDLkG9WcAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrJVTG+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrJVTG+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D1BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753454993;
	bh=tl+K9+fYOl8ql4VOKk66mNbxwhV4DkI+bymIZedNNwM=;
	h=To:Subject:From:Date:From;
	b=jrJVTG+9dbNWZyJ5Aw2HhNzCSaT3rsEVHdTqouqkZyoLKd6T6V7X0QfkcrZaXZ5Z2
	 b99Q9NtMr44uOegdbVG4qaGehjUIOUR8fotWDI1Ip04xmjjgg/pONi/bt7Sa2I+geO
	 h4LvSvgu6U7TCYRdq3nsz3WJuGTpCgfKoxsn6M4e39WjuIQjYjZQxCTIulTjxfEX2U
	 HP/hIXVfgHrbRhBIy4yWa0Uq36IO2c4dZrOZQ8DK0zSYtUus+tkDj9vEVJ6ZJLiGlE
	 TOnd+q2iN+BlY06Pa9ICVcBDFHtzPoFQR3MddEJGiVMU/KwR96bCHEFUDcx0lKg1ua
	 LWazBercYaekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006EC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345499357.8855.6620142803001865923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd3c0d65a15227ccc3d3b39faf3b2a10a167edceced37a43225cc95a874a0f6
Date: Fri, 25 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753454993
