Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406952E62A4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783704514; cv=none; b=c4tkDryQOEvscX1CiOH24ptsL2rs4vx+Y6ilE76t+wW+Sf/5VJqCbPzYHSm65rmfuuIGiyTMxiYTJC/VF6+sarMEp58UJF4Fy7ZUt8lUbxk7PSkMftZXFmsJlUy7bk6+y4AGHTZjuGAP8lXJ7b+s1nGqiMIjpPOzdx6KN1cjDMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783704514; c=relaxed/simple;
	bh=avA1Q+9Ji1LNQ1cVFieQvVwvFfeE2JmaOdvDJRJXo98=;
	h=To:Subject:From:Message-Id:Date; b=k2lSLkm5LjMpMPa+7cTMu15oEBq24ud/4FeOQ9ZmjtPOfvLsK2qFWkYOoNclbqqM+1m1Tb3aXM1oqywejlFp+6AJZ3oWJgVeInVQG35EeZ3gjSm39aR8OvOQeD1elC2gTdFHqHEgZjtIX2fhgJGoEPZYDPlk8QBg9iEkV2K60Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPB9Gm7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPB9Gm7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE61C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783704513;
	bh=avA1Q+9Ji1LNQ1cVFieQvVwvFfeE2JmaOdvDJRJXo98=;
	h=To:Subject:From:Date:From;
	b=WPB9Gm7VZkiIitYyh3/o4LSOmE8HiAdrDpa71Web1NKnfWZ41BvbFTPFR8kkVnDFj
	 QygcKsFWbZeUc0weag+3TFUHOAvXvzL5qsEWH+V5UA5n4/dj1IYP3O50WXEeC8+K3p
	 Lp0ND8VzQYMSWFJf+dXEnykGfNf6bKXMbVBguGVnf7tstBIMGF+WztQS8Tn+Iq28BK
	 PuLGPMhLtwAfzQdvn6WyymBKQcFfc7wL6p1misOAOWaTUMMb3t7/kPVPqxkeXvkNzJ
	 LLqLkmz1wlytq1Ffdkl4UlACK0zgyy9qFF9zLH41/F7LAxNsNcot0t9I2+GO4ysJYZ
	 HuaTtNbuRg6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F3C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370451368.19240.16542736534510667764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051e36a58159c3ed359dfc16149d1eb3c12edf018f807110d88a7b18191ef3cd
Date: Fri, 10 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783704513
