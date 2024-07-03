Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE8F13BAFE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720050323; cv=none; b=KyR2ieGF4FpfU+KTChNf7SlAC6zn2UlrPoeQEzfAOR1C16YQ+BXB1cO5qYAxpDKFvJRiBEj70bGcXxYGMpITYIQH2PMojZl1xHKylQceO/LQA0NVc3qNrAg+aEWknNJgWXfk9hXadsK9eP/p3YAIJPOtDcDQ+6HjKLTVDWltQxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720050323; c=relaxed/simple;
	bh=VtgXLsDzd/y1GDDRqbUMUV89uLmJEih3iV+Gy/B4kmM=;
	h=To:Subject:From:Message-Id:Date; b=iNMLnSVtnRfILJ7AQRxuDcuDNpamP3LYb/zsSpheia3Wl9dRhO64Bf6tMHwu9PV/0FXyXte/Gp3cyogqZE7zd7j/3igJ41id6Ql+6LHYq2WsvnFZWRtt5yqSZtlv0cJ3Z10MJ73G0Qkb0a9T1ad5jBnw6RNKoKED+kEdfCoWmks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vnkd0LIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vnkd0LIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC7BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720050322;
	bh=VtgXLsDzd/y1GDDRqbUMUV89uLmJEih3iV+Gy/B4kmM=;
	h=To:Subject:From:Date:From;
	b=Vnkd0LIhlfPT1a6hZlIjQzZwC8+9CS5hTk1mFIIIXhKecBjJmdR8xKTyXg9IZ1vF/
	 2bMGoTlfA/TpRUT0UjRrGqPOpkovBGcJNTVUK6uCLAQa9qrCW4KZbFvEVv6NwYL7eG
	 Iiktx31e0vot0pdsbxJQx96BD0UDuoyEmqBa2BLtNqyJB3hq2a1mDGMR0VT2JuCtjj
	 ABanwqVqSfqV5/hbJ064LbGaGHE0Zi+oAkFmQ2WrF3paABazDbz9Ne6Ug+h59K49Fy
	 7McR221Q9p+jQp0Z/EF9BGpfTVZpXODns0Ve1fB+keaLo97lw4+y2UcMGlGSobp+Km
	 mtjAzOltsADHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E45C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005032278.32732.7493019649751837095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde4c1ea82e2902f7f3b04da029285a6faa3f371ab9effaa54ce035f50bc9dc7
Date: Wed, 03 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720050322
