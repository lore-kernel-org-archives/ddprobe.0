Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B73E1693
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785769234; cv=none; b=WAxHKcZ1Slm94FQXZ+RMyQmCt5HRM0UoKKodeCfCDWR3dEO5SIaZGuEGHfBrX+U3orO4RsYhz7fciCQ/NaZLgRmEoLakfVeNAt45zPzcSJ8ItYmr18GnfDuFORI2iWAi1WAo+lee9DKZQ6I1vH+ERVCMzuUG6db+t46PMVav1UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785769234; c=relaxed/simple;
	bh=f5hnNv1/13FNc6dPU1eMH9JhNKNgt9cy+R9uW6VQDKw=;
	h=To:Subject:From:Message-Id:Date; b=UvDvl4dIcFMf5RRRmM5cvvW4wJd0N1bHA9RgC5FSxDAV/wW2GZ9rOu3qvqHM477orTW51t0wB/uViSp2vwDCc0zaiECwow2DmArBmAKJrUW9gGrXsgtr2P0SWzWOlNqNDYPNdrFtzcWws4sqRRJCsX7vUX86rBq8k5h/L9ochFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3MbRfi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3MbRfi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8016C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785769233;
	bh=f5hnNv1/13FNc6dPU1eMH9JhNKNgt9cy+R9uW6VQDKw=;
	h=To:Subject:From:Date:From;
	b=F3MbRfi+ynrlHV1+CYfkHrQPsKlkLNkqhpuYpVTC5MdZuSlm8rNklUOQlusNB1fME
	 uy2bMNgMsscdiUHrntB1vceKzx1aZi+Qb2Xh4bLd3ZgmHpNdw6YpljpuC6LY6jP+RH
	 MsnYIHLA2FQ67kuFPIz46ZyTAsGkca+qvoJRRaCih5NER1wlkKM2mEOFzQ2vyd2Asy
	 pDJjUoACHibNSY7KwXHQSTPL2JEsTOLFYjbn5q9S3kZeDJNsiSajCxJoXPOp2rVPD+
	 GFJb5lGwLDCi2AdqAVchkJhAym1fIveezKzWd57nI4bWK0lo3ht+MMuS6IV0sNOneX
	 afW/7wRzKsFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC87C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576923369.3150.10055345925841198103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4147e3e4a05db1b27cf23c52197790b442de3e699552a8aa34888d542fbc6d
Date: Mon, 03 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785769233
