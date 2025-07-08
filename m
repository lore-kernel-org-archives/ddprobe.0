Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE0A2E3711
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751969994; cv=none; b=QM/OOWk1O6lwR1FLFOvGp60bZPZE8rXkgaXUJvYjWJVa+Vcy6lICUsuOOpOHc56oFibojb841gocymAGTlq3cgtDlBA4fS57PniInweh1RqlhAqbk2SVRFsBAeG7/Rt8gr1Tkw7+R+wZljfdGJGuWKW5d3XWbEZGb3w6+R2e7KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751969994; c=relaxed/simple;
	bh=H1d+47b/mhnAK3SJHrI11MyOyYHvBUyxCdE2NdxY8lE=;
	h=To:Subject:From:Message-Id:Date; b=re9qdhYc057uz0ZS4p7XKUIX0h5i5RvJ2WPWgGWbNqrtP8zv9J2W0HzxkNfRmXL8CVsgrZZW40xqVa4A49zS8LiZ1noTA3vMzEeu8tWVzOofto5X+uunY0Y3U182Jhze2mmfplRzwQrsBs6wkI8B6YIAFgdmUfcGD7wolc20684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roBkK7WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roBkK7WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BCC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751969993;
	bh=H1d+47b/mhnAK3SJHrI11MyOyYHvBUyxCdE2NdxY8lE=;
	h=To:Subject:From:Date:From;
	b=roBkK7WBZxpMHP+MVKcWBxcyK4hvn1P8H2nbNyA8+GewyA9IGVooTTLehuIgMmkUf
	 JFXpL7JQrV1k9EGpLnkM8TGNWfEsWGYRo4D9RAORtLJ6nXU/wdbU64t0DJ634sAwbJ
	 ZWmh1WQCgWK6QDCZcrjB2GtxbIBohoCEyMblEVLzgagd3btDOTV9ksadGwQkICNkMv
	 oedo73VCvq69nziEsbtJRNyv3/4OLDePkmBRPzgGYs8/unS83nHfBpihOx8SxUIKwQ
	 udVqccYtFTeyu8bihpEYyti5CT3yluE+EA8DykfgmSrQEkpRZjd5vbrFl+mTnQ+9Wc
	 DBeDh1bW7TSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90462C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196999358.3026.4397861585989766575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d2d4854c52b3d6400b575f95287199c80f7a8657d1cdac4f57ea8da4a7f4c5
Date: Tue, 08 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751969993
