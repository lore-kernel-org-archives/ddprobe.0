Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798BD377EA4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784446114; cv=none; b=u5jmNciy6xf91/uRhxOUYYz13/gP7s2i33sPvaZiHbae9xGEWZn5bOQFREa8vhXVDQw3gvcIWuuqzRdCDi1Bysk1IGZ/vlqj2Cn/XXixwIsBk42NhTDKRN6mh5IxfFdAwQfHSg/YP3Tn3X9DMj2CEHpCKPmSL4hdLSMGBOPdrI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784446114; c=relaxed/simple;
	bh=x3TwJqWVSt5/InkoMFa0u7GT7SJMKCVPW/fpmSmrt3Y=;
	h=To:Subject:From:Message-Id:Date; b=Ac8EwYtI9/Elb+KBxK7J7tQk8YOrSf88K7UKs/G5UG4KH42M+3O8/JM9yUNd9+1UF9YO43ZxKoHYeZiZuPv/jZqmuzvbYkQi5VJq+6VhoA4AA6ufSYWwGs3MaPN9xluy8lslW0rhoiFGkxsAxCWSJ/4QjP7q0w4nhs81zzEbWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoNYq1cI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoNYq1cI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64C5C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784446113;
	bh=x3TwJqWVSt5/InkoMFa0u7GT7SJMKCVPW/fpmSmrt3Y=;
	h=To:Subject:From:Date:From;
	b=hoNYq1cIE5+BsgJDnNVCRCxllmm6KHYsJuLYvqDGejGUmidjJBN0q5eZx8VAa0vBW
	 HsN8LP0qI4JXfZ81L+nHGStuvQPEOFA82rbu9rG5pjN4iGtPgLzo++9AnHQru6Mc12
	 cLrY8On9MAD7LSBe+5bFLss3ONdBascOLGETCJJW3Pp28xh29e0OomyEuTEm1r8jFZ
	 m5uE08cXagmJ6kdLcvSrcxuyvu670Er1Ukd56mKEYa3HU03KmNE+eFK7cuGsm91Sw/
	 QE8wxOY8n7EKrAyt0Xh6fP8sMHGFwAMwuJRodYZW5cktBbD3ORdCzP+l3t7n1uB8iS
	 l5JdXB8fbfFGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2219C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444611369.19728.13489230157143679991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c3ff7440869002fa89227b3bca033b08fac83f86094ba9be8bf168c404acbb
Date: Sun, 19 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784446113
