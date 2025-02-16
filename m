Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C5C14B959
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739703534; cv=none; b=c3kGwljlEfSjXHBbjqoQugtBuubGJ7tv8NF9//xu6L1ku+FAGLugXCroHGCr9dHhM39XFpE3f+LpRdck9d0t2IdLRb4OCUfZv5TEN6z5WciPyyZ8SxugnBTjYy3epa8Alhpa/bvwgev7VswP73dFyI4psWM3ObNAHEQmUDABTp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739703534; c=relaxed/simple;
	bh=JxMzpXEEFjzkk51ZfacVLvDc1nqelax14BaJmm1Rzbw=;
	h=To:Subject:From:Message-Id:Date; b=XPoToqbGCiIiblRdj/8TtC2ZuPOVubn7wNrNvrDqMdT5v8C+MAr+1/GiTkSl2xSGhri54xW8/UAxhAWqXjodbkJbLkcjeA7IxpAIOpHFOpiH7Qwayx6Cp1I6SmuUnlvaKSa8+OH0eOqLt/xNn6W0N5WODXb7cKNzLkxA+x5s1lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzoNtOvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzoNtOvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9FBC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739703533;
	bh=JxMzpXEEFjzkk51ZfacVLvDc1nqelax14BaJmm1Rzbw=;
	h=To:Subject:From:Date:From;
	b=PzoNtOvERCBFEMTNutskm4KhkRT//2qLYpQOkbf4KnAnIKwht+GBId8txoeeO/6Rw
	 U8IK/5+0LDYO4JluWShySlLTWkOHn2VsjmwK3fw26lqJlCaIlL5kBcDDfVdY24utSD
	 5cHiqge5FJs1wipYl3aDBT2fEkRE9p926oiDPZUndkPWbV57QrMpBBbx8REJWPaHKR
	 mo8KGvzVCradVKa+CTRY376gLic9V9vzTjTBZbCWcO4Nt8XTN2BjklNUZieKaOfoVK
	 rNfjXmGpZmBGv8b7LBs4sqHhBFD6FFjw5HzDnMPNvYDviimwpj54M14z0qrRuEWWwP
	 D9ImYn0nkywRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F4C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173970353360.23756.4892168948554017049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ae6afc55a46d2a89ca9f8d9240df808c311b93abe72101b7335203cb4c7c96
Date: Sun, 16 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739703533
