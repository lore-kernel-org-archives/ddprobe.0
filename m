Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C96A143748
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748112594; cv=none; b=hfe5MCnBLGUsMLDtFu8b2DKZzbbi6gy1j42oCkQ9On4SnaeQzb5cwDTCyStFmsR4fxgACI1vbC8t08mDEnKqYslTKa7psFMxqU/7KgOkKHNtXB3VqzxIqgp6Wkxo/O/gUaH2KNgsNCrUm0rIEBd0Rgev3AzCY+984frvO6CZRKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748112594; c=relaxed/simple;
	bh=HvSARGiNoOKjc0hqb9u+2vQY+OnRgGV+mz7IP71+I2o=;
	h=To:Subject:From:Message-Id:Date; b=tHHRjEcNTyMJxINySPeLwl1QShaf4eB1ZIiQpnGKJEn3WJmMyTOKgPkJNdynRciDwIG+m5HpZ/gXrfe0kARCeCLZB4q5spTBfyZuuP7X3wR41rNfOj3NC4nRlxPead+zrD8VDn4CIdKpdcdgx9dYnwhXp1Mh94C5djsveB0pq7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSVa6auZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSVa6auZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0162C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748112593;
	bh=HvSARGiNoOKjc0hqb9u+2vQY+OnRgGV+mz7IP71+I2o=;
	h=To:Subject:From:Date:From;
	b=QSVa6auZF1cZE7yZk43YQdAwJR/2sDKeH5cub/mZPP61z/OtAv2K02vrxg3SIA21R
	 AUq2jzaPPSmV1Woo34SFHrFz8u1Ruv+LY0SLl2Z6RR2LWMlbi0KkORnny7pdYinlxE
	 5iGN4rTqgT7yiMacgGkN25RX2ISaqRV5GnI/HiHmsRVJbQZcCVzxuxddaOq3W1TMWs
	 rAMnjt1ftzmOYBrorPvynTfNnC2zuoTmYbBSqR2B6gLlWxIoi2geslnPEBTDZuk7Wu
	 kq5dnf6cMfs0ZVVnPY6HUYfcxRWte+qkuxlMut7Ty13FbUodf/LWEL8kT+snJGvjua
	 ycn9SvVyRNqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811259357.31324.5703315460903332399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6cb0108956b6f7324b1cabea6958504d1e293f359a73c8de053c0f27d090593
Date: Sat, 24 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748112593
