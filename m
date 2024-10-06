Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F7C28EC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728182754; cv=none; b=laP5nf+y/dhXLP4OBzloOknMmeoRiTCfujkzsuQ3LaDChoidSRFwL4Ti0R6wey5diOhC/QBlyiG9/UUcf2Xy2Ihf8RVBnWBmvizVvy0+UBp9F6u2A+0JJ5ssJHTHNY5abgYP7dJ2Vra24Ma/Jwv1M9w4EfLYQk9dVlM7scrg2h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728182754; c=relaxed/simple;
	bh=xhH8/a1GsCcjeDvZ9puJJd26U1cIICSsMoHDtYc0yXw=;
	h=To:Subject:From:Message-Id:Date; b=Kqb9QwYHX7kSmm2Cvblf7Acu7Xoi0cNrubdXbaQ61jcrotMk7Vz5hz9NLsmO6a/wIWU1VpX9Dzzumq1U6dB2vEN4QUiKYNM3J23QkeBS8cSVXk7Y1C9fGKm0bZ1rzO/iXyuizMwNc14x7qMXhLptXCM62lQZ6IenGc9r9yiCi7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lruuTMhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lruuTMhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF339C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728182753;
	bh=xhH8/a1GsCcjeDvZ9puJJd26U1cIICSsMoHDtYc0yXw=;
	h=To:Subject:From:Date:From;
	b=lruuTMhFQ85fFRP4OYCRxnXNy0wjYQujoEDFCNvSr6rXlSNb7InpoaDdZWZffJOXx
	 qO/o3UyD9N+T5nifSu6uCzaMM9XSC44odwRcmmfoGb2qnzJLbj78qlGK/bUgpi0SbU
	 c6zRemdeFpcgXMmvl19/S0/N7uaAe1UMeblpITW1KtKDvQuQdjDtsqfO8fqq2M3oi1
	 gpO4ogCIyJ+WzM6r2D0/1ywgnwcIMO3oq7xSKwSgHU6wRU2Px156WhBBDpXwZryifk
	 xupTvb8JLKlPch9PhVGxJFujybz8fGyOM9VlXK8xqDCWld/n3CjaCYIYKuhAcfilUI
	 8nFVHBuURrzkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37A1CFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818275363.7935.13638262349949748373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7354751bb0a0812c0b41201dfc823e16c4160f608969246c08295edc4682524e
Date: Sun, 06 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728182753
