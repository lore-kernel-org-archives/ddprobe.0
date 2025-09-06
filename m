Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B50131E2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757164194; cv=none; b=oP8NrEgqXnCILWbvAdSaXHsYcqIeq7fTU/j7T4x4uP7pblW1JV7Ge33/UD9HlWgo8rFW+FNr1TmYvTgFtVqyeVChmmjXQ5Cyh0YDiXVhi5Q+f9waiYilA2Pkvan6tMlixc3S0qUIwIIAF02mZocBXa4i1fT2Dj7xhtNzbf3p6bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757164194; c=relaxed/simple;
	bh=UJFLICM4hv9LTamBQ9NyXjsEK7o8O107dMCQ6xOK/Tc=;
	h=To:Subject:From:Message-Id:Date; b=ekt0yH5IuKR8T9hzIwiZaDD1+fx7FuOnGy4pt2oEvHF7hVZmU/Jta4peTqBxH7kD4m77bX+IOa+Rr6Ewjndj5Q9fPXCJah+TlmO0tXO2gAjizqdLBq4tuTPBgtMXUP7mhKO8QbIJe8U/BTSlK8GNdLwrHSxQjtHBFYz9fGAipMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRzRubLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRzRubLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757164193;
	bh=UJFLICM4hv9LTamBQ9NyXjsEK7o8O107dMCQ6xOK/Tc=;
	h=To:Subject:From:Date:From;
	b=GRzRubLFrKEgYYUrHlNicaix5jJsVS3h8dXHYMRugRNW5Z8PStACyOFGMIbd2QhUU
	 MyQmp7QIxsvy1/4sbJ/C64KqnHvjsNAvA10Qa3x5AuIdJLv55hG5A1FdMK3VpFBFoQ
	 IoI2OJRJC8oBvRWuZ3zFXTmlEhEX0SY2Eg9iU07UM7R3nS37Su99CKfov1A2EjCsbt
	 1c719tf4GsRrWtJ7O7RbySAY3BK/UG80DCVFeEaCLHlrhH7NUiUKOAccxPG2F4oRdj
	 puf4MEPtQ301ObwKuS5LO9ru7HiBs0kb96B8DFj8lNe1accUlniAYzomTT+59UJdOR
	 bkNMxc9i1xx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98721CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716419361.418.15762317603533784833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908d46b6e5d9f1df0b5a2b2d578ba72b9e77615862a7bc8b1d4c3f3ab4e965f9
Date: Sat, 06 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757164193
