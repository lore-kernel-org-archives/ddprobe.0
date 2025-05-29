Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383102DCBE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748563195; cv=none; b=e3f1UNm308LZzT8KigD15nnESnBLomNSIs33CANR9BQ4V7LGrGLPrtHsajlJlAZd0b47EM8R41jlopqwhGKLYW+1u1ou9PWjrYyv+GLLuz2nU0kh6U1iG/8ZurktS2gr9Z1pBPiDDf8N4St5VVfroz52fD2RoQQbes7MYH2A8NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748563195; c=relaxed/simple;
	bh=adnZz+buFmlhWH+0RR1ZKlSWTmRptodBW382rKX0HKY=;
	h=To:Subject:From:Message-Id:Date; b=BcXlktl6sv/uc3XB08hBQ5eFo4iOvlzkSb7MA8D+cliXRg4oXyVnhtiWOJnCGgigEOPNPXuNv3T18zwT/OU7hXPcBiy6lBnilm7ywjxg3UOlwkElgjpOhrcpBCI+uNwR8xYD+I6xab3bSXSbz6R5khGHBE+26KBzeMoKzkFM8YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsvufRM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsvufRM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2424C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748563193;
	bh=adnZz+buFmlhWH+0RR1ZKlSWTmRptodBW382rKX0HKY=;
	h=To:Subject:From:Date:From;
	b=PsvufRM0iNwLbbvWqG3XtDf+W4V02l0OcNet96XRXEjbN44IsW10v20lhDHUoDKQb
	 F0xBDRC3HjGqTmhCgTwDt0B/n9pY8vfRja3nCkwT/T8IHWQidw/Ma0yjS8Rp/uWP4W
	 uXV0m1OuMx/Lv4fQx4oYkn5zaymB1eI+kjBo2tRb8lKQsf0j6k2Krq4bxzpGxvMx1T
	 z2gvUmT1OapCvVytiLfjf3WWfrGhb4s4qzNG4HoZS8SrTlhP54uDqkthZo6KoXAjEZ
	 jDDIfinA2eEaKMsRmeUBw032RImIXJrL5jGudDjX9/37jSNFXIcOY8gngt1bQuJ7HR
	 s836zSOmXh5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DFC5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856319357.22997.8139658738791036747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7b9437523ca817b39e5d5820fe411185e3124890f1cde8b137db5ba5f9e981
Date: Thu, 29 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748563193
