Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8F18CBE1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749417594; cv=none; b=g1f9zP+7l3ZPbvGgz7em3td8jlyE7CMb//qpmScCaAL+vtLg1bxb4dhfgCCBOL0FQFtrIsZmnxiRXF7jAcWBEOggnlDeA8Nx27BudINi26s7vPI38wpNS+JGls8SpFTP/O+eqx24asL3JWVOYQuYl0lClzQWzsVTfusDlWtad+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749417594; c=relaxed/simple;
	bh=95rgxRlVT9fo4jKT+98BKKuu8AchSzLgEW3ocJU/LBQ=;
	h=To:Subject:From:Message-Id:Date; b=aHhXBm7zr5RXUkrBpYN4Q7WhdttOusrs3GsPzId6VhhjMYAceNghyyaq4MC3GHN0vE+qNe3h9x+s4a/Ey7aD8kCiMKhfRzAb3IGZWvaD729UhoSLrcNw8zlTVqmH6CzdJirn+zAVgnE5KrEw7WuwMB9qd6CAfDKGf4sJs/JXeDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktqkwDGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktqkwDGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749417593;
	bh=95rgxRlVT9fo4jKT+98BKKuu8AchSzLgEW3ocJU/LBQ=;
	h=To:Subject:From:Date:From;
	b=ktqkwDGnbRjnQxrjsJMkxycE5OUa2TeRxAEJNd+i9b51iZePgu4OMwwVZGENET9P8
	 lkmo7h6pMMACPStGEx4qF5AkF3dT9mPpg3Dwp1wrkKEXJzgtFIahPwMVTnfWT6CvpP
	 CbcRWkGDtnhVRNaiOPDyD0A/HALT3wao7TW5uR0frd15mIDM+QCfHOty34Y6P846up
	 XtdQpOXjgvpC0+Xl0fGG6rt1LTMpRikXMKZlxagHXxSpJvDxyzn2sOCNEdvVjtNg0P
	 4BwANgLxbbG8hMzDtWJkuvH19dsbaJUKv5cQ95XE7R/fewieAPYDUkCyVvh44tiGdx
	 XSHGLGwV7BNEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25FC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941759357.10945.13500795676784360058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d68b6099412f6f942a3873f19dcbaeadb349ac89a758c7e3a33da433761f3a
Date: Sun, 08 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749417593
