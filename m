Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234B1318148
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755169194; cv=none; b=e69CZ4fELK5jyyoCyNEv943+2KQXhreSbQJesr3dvDHY5eRJ6djuJQ5D9WgBb+AhIa0ekkIvIE/jGWe/XN20DJWGliygcCB+H3HnGx8fIzv+3VMenm1/+MugR53sCusCoa3oyk3jr8fD8Q0Xgr7q1ciWCp8OsMdfAc/0dzmpJHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755169194; c=relaxed/simple;
	bh=rqFTzaj8g5sCQGPP1cpp9vhMdudlL3tzrsCeRFQe4ks=;
	h=To:Subject:From:Message-Id:Date; b=jmF5dihxwZY0lQQMy5TEGSh8spWTKWmhh2r3HCz1/26fiqNRMHPEL4N1bC11BmXipFy28r9nb6NE1gwlgjaRZW33RLMlvkFJZLk3TSbYrVTVFguL6z0BMw8lsSw72JKAcZonCE2PNOfhg64UlVXkae8TnG54a9b5rIYr7AkQw9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6YyKEI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6YyKEI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3ABC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755169193;
	bh=rqFTzaj8g5sCQGPP1cpp9vhMdudlL3tzrsCeRFQe4ks=;
	h=To:Subject:From:Date:From;
	b=D6YyKEI90DMCLllPeY8MJOk8sIWm3Ww7aRTfjLTXc4S1I6oFVN5kSfa7DNiXsH6PY
	 C+pguPmmedRO5uF9ri2wD9HlBkwwVlOCXvi9ANp8BrYjVX6vrj7u1wQRbbHS/C7LjH
	 fAIuotduWXVcGCYe68xpKoB6qzFzeMi1D1WclMmMeUyzp8ouEjCsrrwImn8WcdxonU
	 ZcAb0MrtAHl5EJWFtq/Zkc1bHxKFkCMCknKCsa7Zafut0qentEP/ahZEHnDMrFvMyh
	 3LCFM6fiySXB1fFBDuNv3Tgioubn4jPO7gcQI2u5607AhULpYK6ApvMiutq7ZMZzFE
	 wEdiiWWPETOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E28CCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516919357.14382.1600359493094793200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c16ceff20ca0116b9ceb385ea94be8c5e8545ce8c75a1ceb0feaf7bbc5afe8
Date: Thu, 14 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755169193
