Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF2643CE62
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785316235; cv=none; b=kM+Gruz4IZbpbGrsDLi14SQ/72QhYT1WncLWdND4THiKQKKQel7cCZeg2oxGNtllS8qPKcqjg5FAiI82sfwHGJfQX3L2pc0CCSkRGQ27tBffxfKWvToOmea3hKdU2PEqxbqKMiGsXzApCSR+4LDwA4nxNUX/N+W7p3EQMYGN4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785316235; c=relaxed/simple;
	bh=WRwLY8e4T12GR0CWq9gn1AGOX4yBBAaaMgtU01jVOjk=;
	h=To:Subject:From:Message-Id:Date; b=hpA70iUljGsAv1LEX4JmI3RmEMU4/L7nvCSQUqJcnEz9RLjegWzBfVR9A93pJb7g8xOULWlXekIk836QDmdg/70bVgFZO8lFVjX2Jp4OPf+mtwIymuA1OOQnuP+qiLJhXT/sEaLoPR1vABJuK2PkSGLWha+vA2jIFLYJbQxtsIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEF9gaOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEF9gaOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785316233;
	bh=WRwLY8e4T12GR0CWq9gn1AGOX4yBBAaaMgtU01jVOjk=;
	h=To:Subject:From:Date:From;
	b=iEF9gaOcE6P5usW3c5H+nfPQ1lzRnKQvO1QA5zj3WVytaIhnYkXAUbGnzCo6Gj+bu
	 38K5d1mxtHKRI3U7ic5rdcoRgRawV7i61azS3U37kEMXXVvUnMLxCXS+DTRLG/j55h
	 COWI+tNw0BDMa4lzkl+mtzpiT0/HQb9HCR9WJFkgevrFFBISDrf/8aVW7ZKMenuwrw
	 utYrdOqik5T3QQ0gxhzaUzoLA/XmGpY4j21S3bcs9/lzfIvNa+9k2axZnVivle+MOk
	 9uelCInPcbQualCuGdQbAue+MXWB3G9A6DXfGW745gKBgU35A0yCynJ6l0mGRIdmh0
	 kpt8Yd9RnP8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D76C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531623368.11169.6892830439466367165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7553cf97480367ae8fb9efd27310c333ad0d630cd0a8eb5b5df6ef10bc4b42
Date: Wed, 29 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785316233
