Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF212C0F71
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763116794; cv=none; b=VAETj1+xnRggVlz7XiKkXK1EmXvwTMwPXXVy+j/vG5RfEBPZj1Yu3NpMKqWakPjWClOhKPPSgSARl5uxGhVQI1qEhkSTemCiS1OtzLe9SdZlIJctNl+S+1SArQc4WY8T9LKsWwRPAITfDB9UhQzZa68QhpFHZ9iiX+ZBU7c/JOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763116794; c=relaxed/simple;
	bh=tR7I3VmLlS3gMZ8OWywu9xM/PLbSnoqnsnc+122XhP0=;
	h=To:Subject:From:Message-Id:Date; b=NchZkHE5fq1Co7V/hO7wW8jEhSDPV0zsQpM0K6aKGyqbVou3InzhZ0qNUBLAcDbCE/gE79g4kdAgwU01gI+KtsG3GfxkdG9cCdlcrxWs3bfslYFDdH/xU0s1HigD4sxwU1BpJ3LP41wn8FqvTdG4mnyugC9tkqZvHAm5LyzngXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZAlEBEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZAlEBEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED62C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116793;
	bh=tR7I3VmLlS3gMZ8OWywu9xM/PLbSnoqnsnc+122XhP0=;
	h=To:Subject:From:Date:From;
	b=UZAlEBEqUf3TX5dVjkFTOr6ajdF5c13DEvCnWkQb1P+InutPfGbpIsdqGxHruxRUa
	 VYYvClqGT+n8/1HTLY6et1l/ovASsbF1Cdhu1toeya7z7Abg8wTvSoExmqsOTn2lNg
	 1CJAN1Jw4ESrPngjQkf/8V1RaDRBiaCetQZEtARxRwsyfA9hSwSVuLI8zr3virEUBJ
	 XcZSM1x2pW4JUDshNxTvkSpEarQV8egO2ggh7pRdW0tJZVmoQu3HupmR1dD0hNN++z
	 kBvFprdVozH91y7R0GKe8jbgFw7P9gKnoxSzRTtIqJ8iu5mQFZh4K9ETSZiHjEnNci
	 gSe29ETmgtx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91415CE7AA8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311679358.9723.1588260714788482733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75cf7fae6e4b784e17ef68af8aa0593c4d6034e1efd67f640dfad650c7ab313
Date: Fri, 14 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763116793
