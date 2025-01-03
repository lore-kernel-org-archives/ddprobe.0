Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E921FA168
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735908354; cv=none; b=GoOldYN3ah5eM53LkB+Vi4XToOvP7E1LgLVpR2N/2m8LflT4QE98fL5LsvKi5TrHbGqEx2zHgIa6JbuWPyKm+dbwTeeOSymhdwVoPEq5fk5fcoycGg/2ltQ2ojjy4sWXhuQ2erVVhlw6iAets0cWwuKjzfK4ieM6cxxS+IwPmO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735908354; c=relaxed/simple;
	bh=6FSaesWnOgbelVCOuFp+whh+ZuZ0donXmeUxcd5P3Ug=;
	h=To:Subject:From:Message-Id:Date; b=ddAi1fLT4U97SCkrtphkn/Ch2R/P5JAW6JFFcec1a3zQnf1tXvS+dHdVlyTwIn18eWtmEmETcj4i74doA0dXjERFwmqFMFO2gBL6XhvnAfM3J6zLc06vgVvaMrtVe0jJkKq2SwzRqh59fHXugcCw9bfYl0U6zyMDNnEWoTCGmNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crVlXqTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crVlXqTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0424C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735908353;
	bh=6FSaesWnOgbelVCOuFp+whh+ZuZ0donXmeUxcd5P3Ug=;
	h=To:Subject:From:Date:From;
	b=crVlXqTjaSSTEDATRnqlIrSraVsO5WXasc6Yld5ofMQhbKM+Ny8R3GTkj6HcTyWB2
	 8hEfGe6wUXUSXy9OsVaCUGtFSpwOrOHcf/1f2ZpGXy3sN41qPNQWU+U+yqjNxUKlum
	 cWqsSnBs/cHAUG/kRVmYLuVgTrNfzhwG+TOXJQvdWsEaiGb1yAWF9EYpiHC1Z8rOyE
	 JNJdawoJfllrrvlSpjBqxQhddhNuHkd/wtiKne7sLvNgovsUuM/mHwUyjY1Cw7mtnr
	 619hX6KAr8dcBqWCHyhekmWPZP47ms+aZDW/dihVBSd+pvVvuqbA53pmmqHlEWytRJ
	 Benb84dfp6L7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC58E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590835357.370.18314029273973504617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb7e28b8f3ed46f83171044ffcceaef4060d8dc01bcc6d6ce6bf03ca7731fce
Date: Fri, 03 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735908353
