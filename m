Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271C7339A8
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761024594; cv=none; b=gfbUexWrqIT4YHM+IvDR4zxPEZybWBUSHRFH8gneKAqP62gdIII/VnrA+EPyR/jrTipwVZ/B679GDCc7+QbQH5upWAcps4h9h/WtzGUsgFUZRHQ5dlFQ04avUA6iByCEsb3K/JjKbTUnCMe3QXTX/5ensWAyUx0Hu/zmjoRIhPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761024594; c=relaxed/simple;
	bh=fVqfLrC3VI92meiwOunBhaqZjcajDyow9xNzu5w6CS8=;
	h=To:Subject:From:Message-Id:Date; b=aqhU3KAJmPue10Y3hm1wg9dLUt89TWQ+CoC8Cin188vIHSb1quFIwJY2xdgDk2fztprXyjfhL1TuG4hvJxPWOX+oq+l5u224tzDO0VtSxiTgACM7Z6Bmv2iIOTFsp4Z79/lveGFcGTYki4DiOF9l82+4vC6CpXZYpVru5rekZR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4G8O2l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4G8O2l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DFEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761024593;
	bh=fVqfLrC3VI92meiwOunBhaqZjcajDyow9xNzu5w6CS8=;
	h=To:Subject:From:Date:From;
	b=u4G8O2l2xgj7ohRh16IIhOo8GcqEsciq6pVEYDQxrXCc23C9QGEiqC4pwg1bp0s2b
	 RIcfwb39Ibk60Wgla+tPFedUKIJhkgMblGRgnnZ1K1CA2c5UrfSVlnGHjprAuYA7v7
	 gZKjcc5rrHhmJjAyLnIITKLW7icJ0Dk9bH9ykCqzcC6yMIACLoCfDDmtvvY+BwyJjs
	 YriyU9k+rlRZl5hLboiF2uclyIPnpvLCYhBoH5rxwW9SpfVhEn+UokmSbzf9dShsye
	 0Zfq2dsC3/rzyj0b2hT/CPYsyX+fYFTUTHhu9LezyZNEpaa7jU0m0AAth9V90iBCn/
	 7fjSo3xF2e4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A501CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102459361.9464.16223311770659226485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cce026713cb4121b4502092f53c945cb78ac57617ba40e53d491e0945c2db7
Date: Tue, 21 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761024593
