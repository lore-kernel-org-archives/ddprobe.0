Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEC836F435
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773748494; cv=none; b=SLXr9u0gYuRjOrrNOs1hd3uhNp33VYow5xdJWV/UNKhdSDNVC9t1NBRkU/vSUPB2PKCZKOSMLVzeK5VX1s2TMYxi2GfTa/jFCB19cs7evlolpUqfYS/uerzjPH7IpsLeofH54kp2T9mcGbnVpp++6rlO9XNu4tkAwpfOrg+DMes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773748494; c=relaxed/simple;
	bh=7QT08/elb7vTmY+XUnZ3Vpdj9O4LC1y1F+maZCqT2Nw=;
	h=To:Subject:From:Message-Id:Date; b=dm7tt8JAAASJXZXS0KbMY5MU4j2h+AueC4Yn32Fwdj/ohazyNg4Q1ZF1q8rRnDJCcSe2K/M5owgAtZq2JxO9MzI63sefzeeePdhV5M5sheAHUJR/WPI4E0tpOgUO2OH23rszW0nLJyO0Aigj7QDOUc7hMj+zCiN7VoGDOjH7668=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvoYhta0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvoYhta0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D07AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773748493;
	bh=7QT08/elb7vTmY+XUnZ3Vpdj9O4LC1y1F+maZCqT2Nw=;
	h=To:Subject:From:Date:From;
	b=XvoYhta0uOTQPNggiFxUQOXYPZGVGy8ZuPU70IzIL8OYc4R6HH8jK9t+Cw1mzIQPr
	 ALMysRyEi7XcDg3zWAJvVhtO3bOvTaDM1wuSEw4mnVGNxLdInYX6yiBGfa9Q5gH4SI
	 6xR4akINeiZtX3P3DulhyF2fZCyr111AGBRfIs622Hlj9Vj344NbwfltK7wEvls+7o
	 sBLk7x+RVDJ6eAM8Wc1VSk8kssh7GH14JXvyuVY3UAxuiO/9jXwGL0xntO/yBqHNIM
	 ohzufDc2uQOhMng3ozBJ/m2YfoykZ/2iBxHM/Uzgc8ZSRxwRlZttrpuqwRPRhJfA8X
	 khYdQBqyuECtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEFFD8741
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374849357.27262.582721229146276146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac50ac2b36716871a448834a8dd3937ecf3c6ace075c2d12dbe3a9028390b304
Date: Tue, 17 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773748493
