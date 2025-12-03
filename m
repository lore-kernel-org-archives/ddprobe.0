Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24383101DD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764777774; cv=none; b=m5uYMZa7nHAtEyRj/mbW7e3ckurBGE+nriHuwexQGKADALxmLBUMColiS/tzKLW2tGKN7e1I8boadguXE3UDceF964A7PclBWpkgLyyjtcKHpuecY2MTEDdhwm6h/gmK5lVsuqR+8UlkAHORCALQzDoWKSlbpxG9hhRAYGvYA+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764777774; c=relaxed/simple;
	bh=/ntQCXz+5xZa3zFigJJ1Iu7AcOWxlKxgFbR+ZuKdawA=;
	h=To:Subject:From:Message-Id:Date; b=K3tN87FEWKLs8QGVmMsuTolVPQecNBispepaXqZZyjLj9spFBA2qKbdIWSxM72TtYvTDJN3vV6JfRNPS2gvJ+ise56Esi1ewMwZw+tIq0HTGnnn3GC1ci2qrPGJzGce/pC7FRs3oGtpZYvllYq3jsu4GEGWmmcqSWSg0NOar8Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTZ6tY+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTZ6tY+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B39C116C6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764777773;
	bh=/ntQCXz+5xZa3zFigJJ1Iu7AcOWxlKxgFbR+ZuKdawA=;
	h=To:Subject:From:Date:From;
	b=mTZ6tY+loC43cKIO1XjKaLAC0+iUl7/9nXCnJelrBtpOwmc2T0bNSDP8TYPe31Egp
	 GF9C6+rjwRj7wkNSEcUh2zXowj8TZD8b2f1P/KQE5Poi+iPlP+JuxjNb0tiRWu3By/
	 lIKbBzbKemrGYWTy1Gh7HJdlSwOHhcMbrGoKViS6sEvD5wo5c2CAZu8taWFV2WRoHJ
	 wh+OOi7MXJVYpAffAF1nbOJVRrtwZjLRztSOnd+gIdX7nikPHJt6PkIUNRntz8FRTK
	 cT7aJ1gEJhkaSd+Lenyio/bfR2TmVqJt2O6xEjaS56djOWbSgd6vP+mk8fi+DeGb3H
	 Af0Ad1053vl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3070D15DA7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477777362.1910.5041567848965214647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15b0cf5354ad68060cf1fe1d8868f9153909028c77ad6ba63afd416130deda8
Date: Wed, 03 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764777773
