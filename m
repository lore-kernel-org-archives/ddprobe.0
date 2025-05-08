Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330B1223DE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746706194; cv=none; b=WoTw85wvkAXk07AAfRvRl1kG4l+f2heBqTeETZC57RkXTmlbPKWmnKwHDP3Fd+xOygLPWphaVziNpz6XL26Qkf5fNcAtzBhjNMj+rcNJfg/RhLsvw2ejek0huzpaU6vrNAGbMjyM9f8PumU4atPC9SdVdgnJffr3LkZLx330c1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746706194; c=relaxed/simple;
	bh=UkLmoJ+l/tJV7lBAuN+Gtk+xhIKpGWIXn0aoAFDG4Xw=;
	h=To:Subject:From:Message-Id:Date; b=G5pWCmniR8TTf1Md2P0AKtLjYYhsfMTO8VcGP+M1lgf2xVXzxhFhMXZeUb8ku5VesIGx10ZJRVpTYh1G/EgJWrgPfw4HRRhpmuAyJQ3Llrrjwv/gBatRXlA2wsysitdpo3yLJXM0XDBeEaNVWjjTd4Jx3dZfqCVFK4gjBrXDTSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJzeFRXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJzeFRXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A178FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746706193;
	bh=UkLmoJ+l/tJV7lBAuN+Gtk+xhIKpGWIXn0aoAFDG4Xw=;
	h=To:Subject:From:Date:From;
	b=KJzeFRXUnXZw91DpxH/5bXcR4JKlB38NFTveC7sDZLo3cCqX+7fKKmolNu/5BzYUt
	 CiS6QPk7hcqUL3AhvVx6+nrNgei3GMx2sZXQHl3akcDOVsdvJPN8MmrxubqTzkZMGg
	 yv1KG/xxspJImpVqw9V0LQ4nh3pDoFUrq7rdihB3uh+mzr2VrwkunrbQhRKMXp5+yc
	 hhXvXG5HbQlGQy6fRApWHL2aaUXVycR3bgpLnDGA5uZarSw4nVRwdZilCOcKrR85Wz
	 YpOwx563iirKEpLgu5JODeorq1t60vLpqrWrGwiwmzH/byx9wKPcmW+SMBCBhCHHYU
	 vcWzh9fNWGQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A5C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670619357.6696.15280203093575011922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5180cd1097481765c35c5c219a8378c85cfe40dea32db375f42117f953d5481e
Date: Thu, 08 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746706193
