Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1821120458A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752077994; cv=none; b=VNLToXvQ/BTcXq5NlqLJya4u2HiOp2Jm1pvMgCuryn2Yu1vMDMAfv+Zb9H2j90P2SYyJUnn+zGcTy7j6NhJxYty9RwSDRYZRY/JFwfb9gthW+iefmk55fBYkclUHpls0pzPR7jQ6o/do++hPPG06AT/X6yydZbuDfFCNgWbUTEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752077994; c=relaxed/simple;
	bh=3MZDlIBQkOEi/eDRtTD44Wz8mq0eg1ezgHAQQ2jWwqQ=;
	h=To:Subject:From:Message-Id:Date; b=S4a17HJOk0nrqVTnYDrXNqFWZE9yiN+MSnXh7tp485yaqzbsfazncFerH//DSLFlHZc6uga8AIwZgU0crTU6rdOyeg1LUWH/WDXyKvuRkfriLnxAPNPk2ZaIY8MSjyiMdl5Z0meGZtMnRod1DKnXX+C+9duJRMf6Qt2uLaUGqEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3OE2Pvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3OE2Pvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE3C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752077993;
	bh=3MZDlIBQkOEi/eDRtTD44Wz8mq0eg1ezgHAQQ2jWwqQ=;
	h=To:Subject:From:Date:From;
	b=G3OE2PvjPYxmBpJHp8j5MotB/jdTR9NJlnqWuqJqC3W4puF61Yt68y8nCy2WAiZDv
	 vUhDt+PyBKkXVCycg1ZJQV332urxlSWKlLcIfnKtXkeP/KN8FHNm9DsHCJGK0+UzcZ
	 uCX8jRtTjtIwUS10OFGGGhL6n0M8o+AfBltO58KP9xfjkge/8RYQTvTbVuxGmvQ9Z0
	 v6UsJ9sHpoPYW6v68KoV0TLSgeoH+F36Sn7rlkWfd9SIpK31PDrtUOObfTc7EAht7I
	 9Qd/vBjWZ+A7pfxJJY4aA5O6Zj2dhL/7hBwkTVxjNxp4QoMMMEVwTOzVZIPJOnlLPb
	 e51vessPxB22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60CC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207799357.5258.17964144062772102510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a5aad91a9074815ede81b6353365e79f006b3be3828e73c4b0efaed0bc8769
Date: Wed, 09 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752077993
