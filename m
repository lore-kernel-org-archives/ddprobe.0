Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6EF13AF2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766561034; cv=none; b=Tc7lya3ZBDl29lluARH25kTg51OH5MofRfFft8WB77amUPHyyHdZTOC74ung7KSaQxB6g3Q5yiiRu6kdn4N/BNS6bp/XNQrcN4jIdjR7CtmmGU7o7Rc7Po1XsbqBwPeJ4s4PmlAKtp5nKvtrwRR2sw5yBuBafMakjS3JysFjGRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766561034; c=relaxed/simple;
	bh=CrW5katwNgz+Kr5wfJV6vHzqEssKRBVeeK1VqGZyP0Q=;
	h=To:Subject:From:Message-Id:Date; b=RMlNW2vK4W7TXR4YbboWfHi9cXIa0wQ4ZSWJqg78TEGZv664AOPr/X7/fKoZEIsyaqh0VOVVezXsbhHt+yqkxPDCr7KPLvYFkFMMyFxd7l12K6p5jiHVPRu5l1ketWLa5KCzmJnxKr8DdnYGk6JyuseJSdl7/SI5sdl5Ht1BBvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhQCXPe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhQCXPe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF4DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561033;
	bh=CrW5katwNgz+Kr5wfJV6vHzqEssKRBVeeK1VqGZyP0Q=;
	h=To:Subject:From:Date:From;
	b=dhQCXPe5ICjYca/KJsq+Bo6SwETHm3POO3Kh7KTSygOzmalasFra4LMHysXxXhL9i
	 /q9BCTcmjDDlAugvkcEsILML/U6QvDi/wRGcEk7bhOH9u5ozgvoIXQjdqUhC7jKTbd
	 hsIPIARd0EZATPDHpQYbzHyt4pbamrIJymhBrChdRhU0fP4nELL+jR0Jf5uzs4DURB
	 clpLdHuXnBfk2elH6m7A4QObRPgb6BciZt1/mlS66Bh53+2DxxRo3j5+Cg9tDS7XmY
	 2efYPvhQOVIofv1PDeYRbFpmADaNpG+PQKhHj8t8vPDugQuIlrb1KTJVu4R2yThLRz
	 AlYs+YeFbCGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFDE74ADE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656103357.29290.17569543640963370540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9683fec94e0b2bb3af1b39a9676f2f19b47eae60366416eaad23d0e33b852a
Date: Wed, 24 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766561033
