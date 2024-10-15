Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2104D8468
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728956754; cv=none; b=jM9oJ3GK5MHX1+61EeibOYG7V2+WcMQPJdExhtqfrW4DjQEg9OtEK1U3tNaCz8A0B4VvuNwoftv5WPfYZnAr6XzAP3KNlmYiS9FzFV+XjLyB+ex2RUcesl+Ng3LmKXb2msmJWKDoVe8PG99sU7o8znrHBCXWn/RPTVWWpejAeDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728956754; c=relaxed/simple;
	bh=FmVPspnHT/cnVLaiwYIWreC2XlNB+PnUQ+HP40xb/oY=;
	h=To:Subject:From:Message-Id:Date; b=ch65I+NdeCAwlIQU8buLBag0pgKr0hzXwfygHHsrXyUTLOmaOzG/w8S5P2l/rgwcy4co1ZLEddrQu/QVIxQROSF5z87CYrQl/qN/2kYNF6fautrXaDDwrqM6cmF0MADhTJySQycfQkBvSQ4HR1x7d5jgfqf1FYWXNxXEeFaruuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GngADVeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GngADVeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1725C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728956753;
	bh=FmVPspnHT/cnVLaiwYIWreC2XlNB+PnUQ+HP40xb/oY=;
	h=To:Subject:From:Date:From;
	b=GngADVeNaJsO26F+4I5G/EVx27RwWBMTnMl/UGWEioQ4L6o2ttpLWuAqAQbC3c1Nc
	 f6twk4eA4nAyp3JLC2EEdcqA9HcX9yJnPoz/DXWFc5/ru6WocVFLPtg5JFW/CDTWLf
	 rMzOSWBCykD6nkA0Xkm9LYir/Q2gHJHVwXZygLWNQNP2IAp+nRZDZzkngBOYro4pXV
	 xJCmCl7SJfjuUfqWWfXcx8LQFj0PqbBNzHDlmA5mkDTdTHd1SRQEbQQFw6rKS2X8Hz
	 MfHhiNbSHgstEMOuN2s9VE+wrLveguUD6Wf0YqHhycL6lRWm2DpK+GB+4k2lLFHe1Y
	 HvEO7s0NWW8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06D6CFC505
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895675362.29867.9416644508970498749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da157e99f321a1adc231e6cf23f382d631357180a43756eaef2c4789483b1599
Date: Tue, 15 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728956753
