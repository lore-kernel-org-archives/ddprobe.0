Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4BF2DD5F6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792332634; cv=none; b=I+bn3vBQPU5ir0NVyp34MgiqhlAoMytV/74fW6hjxUq4HPNfL6QPRJ0gw4QFldSjPW3as7SHStYH5uOdjv5HP3KtjeHSOqvD0WlWHVN3xGzjEdBBPNmh1iPRmrRsOJPrFIZH6fQP6xbj3qofT5WFuwiDfz34QXs89NEi1UtT92w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792332634; c=relaxed/simple;
	bh=sHJSkbBasEQYBa8jnKGb+LekpPA9EKjbDnVXrB2Tc2g=;
	h=To:Subject:From:Message-Id:Date; b=dy2tv18PMtzi0/IeeJlY/fksrML8oPQQkQTEw/ugwYOz9oElWjqftvIG/bkV/lH/N9eN2uSwpL0GWd1HieVMZwL1OXFj6SITeAHayWcDCz9kN8yD/AKf1DTn38Hbi00vUppz7VnhXE54GUIg3v/TnWEzihlCYvISKIYjfIbmryg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaMz2Vuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaMz2Vuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1C9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792332633;
	bh=sHJSkbBasEQYBa8jnKGb+LekpPA9EKjbDnVXrB2Tc2g=;
	h=To:Subject:From:Date:From;
	b=YaMz2VujKyumVTLf9/5Lqiw6iAQ9jTWGyl+j6PpidnjyQlCYzSBzgh1B2d4WF7g5o
	 zi7lf1NA3qHsgIbzqDb5HekKLPMPVqgs+IzURmFEn/RmE80mxSV4NSue2qMz7cpvyv
	 QydnVwe9+u1+XRPtpCYddlZ0uYC5iMf4ywp0VR5W5dSlONwJN6SLhtWXQ/MODH/CJY
	 +8OURqcAp/cijObTX4tt0gcq0HGVkIk1QIx3VylmqQ0pvWDGnw2H2SK3nIYheeNJRu
	 xoVIv0IAmHixAg8m6lq41ZFmedUHmxkYxUSs7kdYMNdgNYd5ICK29garlNE1asEHLP
	 43HDwNpIBSWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B4CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233263368.15321.11549066321883331468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3518683a14a0b1e7d20f2378ad58f0260d4bd149989533d54b194c238e8318a8
Date: Sun, 18 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792332633
