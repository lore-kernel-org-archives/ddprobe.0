Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA97031B113
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762360193; cv=none; b=EHVjqGOSHcPgrVje8tJyezFTGsCrHQ2C8215omMGATZHS4VNiCIhUjfXy5YYBCDGHiu0vTSvjmXBxknCP0CBSNS+5DBvVTnT31NAXFbWmvT4TmjR2fIS3w4qnEKC1JRKnJS7+Ocmbf3pWmnTu1v27OOVxuP09ycNcatVHBagpto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762360193; c=relaxed/simple;
	bh=AQHkxcb2SIVmCsYBCN4RgjyYJXOfkYbrVHg3eIqOLR8=;
	h=To:Subject:From:Message-Id:Date; b=aK8z2Qa8tWbbfDEDjkH5kNtyeeoL0aKLAr2GyxImcMoyjbqEJUALVIY+3yHaitO825GsqiDhYwHn3k0yrYb9ayJRRBNONOiahd4gJIWFo+HknYq2+wtOzaVGUhcltR/uAY7nX6g8WBTdJjiaSVVnKmrF5j91yMahxbd414qHaec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYIZSrgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYIZSrgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD10C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762360193;
	bh=AQHkxcb2SIVmCsYBCN4RgjyYJXOfkYbrVHg3eIqOLR8=;
	h=To:Subject:From:Date:From;
	b=oYIZSrgYV3vZ9zyevaW/v0PWRLCzLqi9Vy1vBOxC4vcj4c2paeqM8KtgmbyYgnPol
	 6Z03usD5iuwKch5x+vgSBdVJB+1Y6p41vw02BXv5oNg/i/CK7kvxCV6HjZruluEg5M
	 5YWNQru69X7ym7UjWYDmI1tcqYL5IV2szveENaLv/wD94ENss5voHz+BSvcEmz7xE5
	 N+hIaIetNApkglmiIZ0EWj0nQ9MfFSqX+xTURb392kvEv7IMR00E6rTCwSJ34VwDYL
	 5j5xk6mh/PovxXp3YPiEhru+MTmxh3KpE+zbZtkz2tAKCC1uRtNxB6el1fd8rRjc9E
	 WD29I91yVGPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9BCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236019358.29937.6470385254157042565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eed6c3a5bd62988ec13d8891c1ae57ffa18a648a68f30929c4c3520bc194010
Date: Wed, 05 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762360193
