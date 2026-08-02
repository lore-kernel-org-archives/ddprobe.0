Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D17175A86
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785640834; cv=none; b=GvqXn3WOETfFbfBkEzRQj4JKSMwLOHY6M2FXnjEKtrOuCEA3QMZMjuDjF/yno3NOkJjnp0LUlpzCrDzqi0yQ3ri/uhZ0cnKJ/Ni1bZw4SI+jy5yGbbrkk1sx4tyJ9YK5TA/lYBWOj3+bQBuaV1ko81T8Ht7sHjagO+YzNViqZXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785640834; c=relaxed/simple;
	bh=ZsgfLSuAp27Je7m6jvji7ePaRYS5p3T9NPT7BlRyuKY=;
	h=To:Subject:From:Message-Id:Date; b=evTAlfBeSHTSR1glAF06POg1pDob8y5YAY1s0OibxsOClMYY5PzRI+ETriOCeVM8lEktaXXwh1jrusv4ZWRa+6wdbw+JQrMsDqTB/vN6veHTGdEO2IBdki+Ke4rhJMMyD+sq1rpkMrs7DpaqJacaci7M/oBIOfX78h5k/WGXyrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tunIedRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tunIedRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A0BC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785640833;
	bh=ZsgfLSuAp27Je7m6jvji7ePaRYS5p3T9NPT7BlRyuKY=;
	h=To:Subject:From:Date:From;
	b=tunIedRcPQ87L014RsSIGtygG5I9Ctx9ff1Mo/xBscB0DLy3r10l59Gay9p3A7AdR
	 LCYi2LtxZtp795ybMunPLliJUxpu6pR+O7gANd8lTHqGQB6KjakVv2ErTPpz8MYPWY
	 u17fe3E5KLXg1jYKjHbqo5xT/kLmymk9T7dMuFfbqUseC/lpMD4kRS6mCUgd0tZ1zv
	 hvqxO9cDaLrrFSgX1XFVU2pRRT28QTULmUuWAbzFr7pmc4BWXv63OYjTc9mzrhJSKS
	 VCUmhEwxs+877tygSonBlwqczb6t/eCD4TOa/6UpnvRr5kqE33I3j867TU7fCmpYHo
	 XRYLw/hm/UvxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0019C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564083368.24167.9495681911081179713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f5ecbc7d46a6f5ff926d18221a8ef911a6c4eca6e68b9d335b62e17d113df6
Date: Sun, 02 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785640833
