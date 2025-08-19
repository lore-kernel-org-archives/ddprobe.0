Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209B5343D94
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755638994; cv=none; b=PYzrXvTJzIJI+V+F0R0tBSwwMh7itzBkV+gLOAReew1PebHQ31byksoEgp6AsFoYOVZ9DqyqTVJoTS9GM2TRYeMMezddN15K31mmnHypnYMuq6N2cx7PY9YwT14ugg1oLx4JeVFF06z6fcQ3aEnzOAc61nqjgP5ZtZzTRqPCFSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755638994; c=relaxed/simple;
	bh=1LkY8CSw6xxJHbNzsix7H2l15kPn9acs2FSUj1ENNcQ=;
	h=To:Subject:From:Message-Id:Date; b=j1CkTZoaZp+2IYszLdqc9zlTHZcU7mvNqfveKtxraqGIbMlK6P4uNTqHzw0IppZkfVsqiiz7Gw8Vsm6voli658ut6RjFb38u53VxRgCvleymCTQ6KqmP74c7mn0mPbIcWeXnd98JqPRzu/M4B7ZaKA7sqMp++eSpbz0YSQbuVyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6U0tiQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6U0tiQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A002AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755638993;
	bh=1LkY8CSw6xxJHbNzsix7H2l15kPn9acs2FSUj1ENNcQ=;
	h=To:Subject:From:Date:From;
	b=P6U0tiQc01nZ5z9w5sVcRoMmG1Hgh+q9fw2etLo9aeLCqF8QWHgCXg7luNcDdSiJy
	 ITlCRGrx0VzQupQZDoGkeiMpyq8vn6q1sJFTyzEg8E+/0HeHVkxS7QhnaJu0yauMtG
	 6XN4HHRw4VXp+eO9k4/5Z73IZXrVkXPxDpQbnH1F/M+a/eU2pJ+7OmJLJoVZmtOl5j
	 7vu/IC7TCzCqaQu1aqPg20C6UvDHYpvOjOIafX83yfOkbyPKd5YAyBX3HzYL1Jdoup
	 QYgh9m6lu6VN/45H5Ly5kEiJ9qWxZxTqjLFefgAwAKDr/Hm+h1+6gG/N75r6JUOMYC
	 hdbCEeZEOusTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E0CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563899358.9351.15397451644125333980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5131d99c55d7a4c6ea1304427d877444f8b53ab6baa365e0270aebfad5449c0
Date: Tue, 19 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755638993
