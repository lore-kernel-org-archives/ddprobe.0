Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5555E16F287
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715270543; cv=none; b=bcG3ZLN+ToRjT092KuSaHHWQk1lNu6GERVUABagttHh4Mv3nsdxHifSepcu1NZIc+DQKGu2PjRhm0mhAn78j4PdtHTZKUaTYhc+fp+btjmdJqSmhDlel1ElO+OkGKpk6Vh7UtM0JI0GVIDXMk+e27DhKh6G4O8DQokGLCZOVhyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715270543; c=relaxed/simple;
	bh=+EpLtupvksBh8uBzl+CjJoKXPdM9gAf3kssWKHqJBQE=;
	h=To:Subject:From:Message-Id:Date; b=GQMohPlM2eJqoen70jnRx3bn3jIW+VSkXb3W6H+GKbX44JpBoFYRRO/g3JQrPZgAWfyBP0x5LjXX2CM4AGZvSR3EK1Mq8dKOy+HgZSv5coohwgwykWYjmWxHwa164TmetoJnNu+s4Yv56fmSRtt84CAhWfVEBF00OP8H43cWWxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJpbYdkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJpbYdkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA75BC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715270542;
	bh=+EpLtupvksBh8uBzl+CjJoKXPdM9gAf3kssWKHqJBQE=;
	h=To:Subject:From:Date:From;
	b=pJpbYdkVNjSqbLpCtenbpFRzyp2jdlOtohCMr4zOiSpW9B7He9eLJm/YXUK2pKDJT
	 tUO184hIHG2XJlxNtL9KL02xem2imT3MQ0R6ChRkJbqJCZo0VTh/RHh4allsYRrFgy
	 U6bzcLynh/mGWTXdeITWRpWJ/1N65o8VcSlWikiMIAtSN8DMDfVLu+CIvQhxFIp6l0
	 sT2lxZmgSy4QRe7IrCMBbNM7ILtbAcDRP34ZYGOpRY8IPKsfry5ZaCZjQXeSQ7O+lu
	 B3RlLD0dBlsNgK2c42OROwN3QB1Ry5kBFr+scHyXBEkKHeWKHriH9n+4yw76NnaDmZ
	 0QuBs7CBrg7Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D72C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527054279.553.17214143285425906127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2ded029535269835dba0f699c4e7368653e9742b2bb97fccfc2c3f27ccbded
Date: Thu, 09 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715270542
