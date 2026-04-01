Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F247AF75
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775054734; cv=none; b=s6Huas8BjcAAQ/IXyChQp5WTU+ctVtUkBGv3mNHCMlW1wyYqG3sFsj+O/Vq6T8ifmyJrUOoRgjBYWoM+CdNiHOtFeDU97lL5nSjxRuFyroBoV3FO9qlfR3RwQOPbxFeMFSAPxWtOEELuIj85EfRdLs4/9nNMw1tKIoRKlBlhLvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775054734; c=relaxed/simple;
	bh=QTDMK/NDnsy0irRVE/+BKPZtNz0ePNdvQia7uQ8uBD8=;
	h=To:Subject:From:Message-Id:Date; b=gnyKOhOWcOdFjVhbsRxhN0cqGFplM4g/kt0rk5wEnp7Lo/jRRGydEbwmF0ib0wonBFTFZkdRyloZD3Rc6ZZn+oQ5odjfYOZSlynRwdhxGB81p0AISGTutCZkwIO47pfuje1JZi7ihlUBkZOIZtLuxBLxg/K9BsJaAW3X8iutRfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGFwmgeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGFwmgeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F1AC2BCAF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775054733;
	bh=QTDMK/NDnsy0irRVE/+BKPZtNz0ePNdvQia7uQ8uBD8=;
	h=To:Subject:From:Date:From;
	b=bGFwmgeqn/hK1VViW1JjT6Q3o988OYJzj0DPt7UZT99XbVqF4fMh08snPkYyphfR3
	 LEpnkrqu3raDYsX/4xGt0O4/fByU74I0Pxcvl/KcZgHHU6ux9EshpOeV1elb/XOe0f
	 B+fxB5v2oQE3FD2auyFoPNv+Jgvl3Orpr2ixexESBPW1Ps6UHSeyYphgxDXTxHRCWf
	 7D1lOV1N+K2APjUAyi2LVnGxduHJpT2W6SrZ0lVwmiiauAEh4yLADFCZ00iK+oJlXH
	 Sdr7WNidws8KL8b1g1iD0P92IZF1wGkg3NJLNGZgkLa4EiuHKdsJMwXuu2tm/jJUd3
	 mdjofAkUX70ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18C10F6FB7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505473369.28227.6901980191128862831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c86a9a031e1b23f66d74919624f738b6677a5aa48dc62a5e134e223acc6bcf
Date: Wed, 01 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775054733
