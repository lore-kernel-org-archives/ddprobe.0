Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C123F30B525
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785025834; cv=none; b=u+iYuIOglrYnmxLXFKdJhUFgwyD/W4WERd8zcAPqCkoR8aDZ2mDl+qlLBJcHX7H21iSbXjEyAizO/K81nPz+ZlzZsx90IZMAAa1q0phAtgHPKPo4lB5KuqRnWfVYpeYT5nOM0D5I+qP+YjQumnrDYSdAK2ELhJxDeeydNmhI9YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785025834; c=relaxed/simple;
	bh=JpQuvRwopc8dcsCRZqnpmScATvFJdEqtDUdsCARxxIk=;
	h=To:Subject:From:Message-Id:Date; b=mGQUDBt8ilFs5bjkmzOxC+htlQ38EK77qwaREAkRZh9suzzy7P2OsogUo0HLlT1EzB0nmn8snZutlG8e6KdDocpToGo0O5n7O65zTbjhgEdfQYa3+Zqp1YgOjkBr/2Lubt1scwhdXoRnNAc015x20Kw0VKJBoBISMmy+RAk1l30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDLEE+Rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDLEE+Rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BA6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785025833;
	bh=JpQuvRwopc8dcsCRZqnpmScATvFJdEqtDUdsCARxxIk=;
	h=To:Subject:From:Date:From;
	b=IDLEE+RhmZFkM4OuhK1k4ssNWen9/aJWaoY/gIKbNblhpxpKEKHh7n3HH6lHjkG5K
	 coaaamI2ipXWdPXJO5JOxO8HdnLZ9m1R0B9Boxb4HkxM0oglH1lUCFRg43zYRhxbKr
	 SDxzDwGqM/eDwKSsQ8c+KNhmvYup9On3IivFkglknQuHwGb8RB26mSBIpIaUMvNyjQ
	 jd7LYzXCXbMUmo+GrUFnWIesMiDGH85f2Nbz0fjTv7dRVtaEAz3nBsnkzMNJWcAYDE
	 T4+JPBbYsYokdZzxSz23zGmgeYmMgIfCQPYZ9/PaeGErQbat84P5zaDvtJHNM/7y7U
	 gBvqjYgfoxGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB31C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502583368.24680.4153514188018963245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d23456be30842f42c10f26248e1add486be9f68dd4fe40e7c98da6a10af71f
Date: Sun, 26 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785025833
