Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259FE36D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757974194; cv=none; b=MwCG5SEjcBepa81PFrUZFx1jYign66kDo1SmArB7BBIoXASUXa/xUGi6FP57LBRSm1eXYDfQnHjNT1N9O3yzJFXyMwzc7EhPYghwAatVTrK/ojGXVt5N0slhjrOkvMmhKRQGo0TkXvyUFgMQEO9O5hBx1t9Wm3NP3niKhzB4+WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757974194; c=relaxed/simple;
	bh=VrNBn3clJsxzDwWEBzx90WS0eEwVhwTY4VlI/aBJi7M=;
	h=To:Subject:From:Message-Id:Date; b=EMLA1ZjNY95tGmzt1IXxAztjmxY5fo6qXJ4PNS87TDDlti//Ofn065vcBoXt/o8Urlczt8wzdZHMCgxX4Fk3C6so7H/fqmNpwrVDzU0pkZb32rfurBSwuIePqcc0nuEV37hYmyxeXGCHT5BjJdgnmRKnHjbZKkugg2shtQdEBN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyOB3/3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyOB3/3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5224C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757974193;
	bh=VrNBn3clJsxzDwWEBzx90WS0eEwVhwTY4VlI/aBJi7M=;
	h=To:Subject:From:Date:From;
	b=CyOB3/3eSRL0OS4Y1xxzJ9Fr9OgwrUp7xK6JCk+lNsf8Z3jQeOD1vH7/6x6dfyj52
	 zJRbgcl51v+NtKmoPjIOHN4mYzghtMKPSw9a1B2afgB0xjMzXDR0yTQhfIU8eTSQBb
	 B1VW4pYMDfdjroYYPcVu1jFZDDLOCt/z/qZX0iCdPf2VnrY+XlS1sI+Kb39ujr9lSa
	 xNzjxb0cKq/E4KbOltw+A74NjYFk73GdAwy1mhzpFXL9DyqmGDQnN71URJTqX4Jl1Y
	 c8vXdT8oYSlTiaCl9PtyPO3RpvX9ISaoN0+kg9LvQPgyEI1hCckpLNO/+QWxZuSmtd
	 uV4K76MBD4StA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9221CCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797419358.4577.9941381391478258912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc783d58ac5fb417453b401cf9284ea208fc74ed3a2bb0024497928b849db46
Date: Mon, 15 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757974193
