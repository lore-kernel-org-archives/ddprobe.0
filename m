Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CE730E82B
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779875554; cv=none; b=uQnKn2zlN6X2lpXJFlgLG5u0cvfk+4H8QgC++RmSbIoRlB0uylEhBxeZyIU0xJYHL+7oJKub2W41Qk8pC1sC/vNR+aalUs7CLFTFSbpNd7QZY3al9ybqtBS+E0bup/Y7s8C9scEaiIoiQ3scJBTCMBJ5y7lYY9mChBBfHvaNhKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779875554; c=relaxed/simple;
	bh=8IZxXpVCxIznXPH0qZMt11J94D2uKkrpOkTVu/AEVKc=;
	h=To:Subject:From:Message-Id:Date; b=neng0dyRLrkNy4oqMcgU3XcX+Z+9ENF3WpRvO3U9kzIILX7YTynp2DjzB7jxAyg1OeUUDwUtju8wUxkkhSlMMKrcAd0utROvVeQOBIQ0CGzJ6YNUgBSr9UHKJdC2tJYzfBkV/COASiUHjt80CZXCwiOID0KfmaKipqMGCyxz9zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duymCttE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duymCttE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40C8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779875553;
	bh=8IZxXpVCxIznXPH0qZMt11J94D2uKkrpOkTVu/AEVKc=;
	h=To:Subject:From:Date:From;
	b=duymCttEdAJ1nAIOdiFVBRdPSco8OPeqq+xnPbIaKMeUaGjFes9/2cM6TqQKLqvq8
	 1bYTs7D7aELm13VZ85tslS7/hMexwa0tblxwvq5PWCXuggdNeg+ThZFfgy6IKJ+R9l
	 YeDoq2XbPJJhSlFrad3506nKwM9LUdzufqETnK7qS3IzFNgNMEgStsxZs39abdf755
	 Fa/fE5FsuVK1OVlJchHIMVJ+pehKWXAaB2BvYdTyqeO3csM8FeRD6m2L9P3Bde0w0n
	 uCwx/Cjogo4brOVtRuWZtrklVn1YR2hcV0OYnL+kQH45Ky2/hOVEDJWhgQDDXvQlt3
	 1l+n15LI1Re8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6DACD6E43
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987555369.29182.16528010376809581253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acef44dc4af863ac2521f7ab0dd2ded1ff4a7ea6069df80ca63c9f6c01b8c770
Date: Wed, 27 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779875553
