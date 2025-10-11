Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421193D6F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760165394; cv=none; b=iCxhjy/7tWuHSAGwCFdAurdJv5irlEG6iBIEfZdYWLNSPxxjo25wbNFmtpkeykTXMVzpzCVSfZQt7Z0XALRzeMS+CmAYv7cJ19mL+ZWgpveQWsbbDsyn214do0lCXLHb/pVZfq1njkGXoCxmJdU6kHtKErR50M1y6TCS+zQ7iVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760165394; c=relaxed/simple;
	bh=dNnMqhuP+qZCH+PwmHTPZDmsAIB7OXXumXsFIJj1I5s=;
	h=To:Subject:From:Message-Id:Date; b=NGgZJEYjIlANdy3PnMpwms9FxZnZzJLsdsV1CYIst0y4aV4DyBa2h8uorjninUGgKd9KXf/tLiqHR2Z8o5oVzeaNo8jjw1Kl7oxjBHxVg6t4X0S7ah+c82rKRCEXEcywfNMmVCYFtd/2jN+bg5f/fe9ykpkW2JkspacmAprBa+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwCsOYcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwCsOYcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F27C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760165393;
	bh=dNnMqhuP+qZCH+PwmHTPZDmsAIB7OXXumXsFIJj1I5s=;
	h=To:Subject:From:Date:From;
	b=nwCsOYcyeSFrK9tj+vYU9iLVwrjkVHLt6ZHyiCJ4B1G/hscVCbRaoxbyD6trpb98B
	 0jvTZyLzS/BAZW+4Vs14cnQYbKyYTu9j3E2jbjNtuJ8m1a5/Qxq4NfdBH45X+AoehR
	 ANEYrgsUzDIGKqAddjgIAJiutZBFJnwt1UfDURX6Db9Pgb4PAavU513l9kmGV1UaCv
	 x2T0MeJtPvnIfMLeBecbTEUISecrRvsxaEUcVY+MgfGspQtCp+2sPj0H5A3KIGaD3L
	 XPg79UjYWW6h/acx8y10xN1FPJTLeqH1MA89zjxzqxN7gnKIrro+3NfGzmD/o9RISA
	 2OqP3ZQ0RnOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92251CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016539357.26640.17067716956895189576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a184246689671a3cc5f79e8c1c77f434df52ca53e362eefa8bb40de15e092932
Date: Sat, 11 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760165393
