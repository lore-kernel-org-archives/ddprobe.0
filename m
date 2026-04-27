Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0951FFC59
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777250254; cv=none; b=Dc6cTt9bj1fHmAcZT4JftOBJ4PPjdfJRF3kYooyGkN86EW6VRYZbgCVEP8VQ0QUhxXjxD5OXFDMMq8TyYtR7Y3g67ua6z7AzTA9I9rv3tPJ2Ei/ubnzDCqJWTXnRnKEGHdjCNg+Axkg4qusLlaNDDaLUcgvEFbv0YOZOSl+pGc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777250254; c=relaxed/simple;
	bh=QQQwVsk4PHTj3MnrdA5Ux9xuS45o4+kU1yepMhMhN2I=;
	h=To:Subject:From:Message-Id:Date; b=Qf4jh0aYUn90x5Xl43oYKgcnqzh498bS70ODX5CJ/b/EczafwjLaMQrVjPIGUrFxIJQUDOhI4RqoiPS7TYQQsSq/OP4i92WDvWPpLnnHVK8EmFB39Xxby/fll/hMkeOOCASoAsMhKQrcWIfw/AvXJy7Y6wRdbQF1REnIVNkHGvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHcTppWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHcTppWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4703C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777250253;
	bh=QQQwVsk4PHTj3MnrdA5Ux9xuS45o4+kU1yepMhMhN2I=;
	h=To:Subject:From:Date:From;
	b=EHcTppWqXru/CypCDpfY6ypdazWPM1UjOsQ6NjqTXjX6FLb71kRLLUCnUSyv2ipb2
	 MLWefi4SPAe0779h8/H6SY4HLZeAqJ061DeKFx+I0YU2axm3L+IGmUkJuxzvJmzZ93
	 zxog7nAma21F2XTyTGRJSp5rIyi9/l0Vobf9TfxD0JdfOnoHasO+T6udLPDGMVYAlc
	 ZXDqHW+AuZQDJUtGno0NJQa+MgYMVbhgL3UicOLaOa+LUSFE1I29mCreCMudyqQ6+q
	 kxnjraygcd1Jt0KBUeR6B9+7UwGQlu/Z4kmQ0w8gG4vxw2bce3mQoWXS6MAo41sgMI
	 z20Uj0DTaM0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13AFF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725025368.18620.16708046289767613363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb207132c845cea7df523f4fea6528143919a09d3dad9628a0e1cc6b09dec0f
Date: Mon, 27 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777250253
