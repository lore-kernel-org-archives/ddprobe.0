Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E933030C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767949434; cv=none; b=rgsYHe2FT7XlUrmqg/M6Ux+7H4piuVeiozCZymPnAWxGybI3K3IuGJqlNH0YZYGHDDdZbYzTnJGHb1tAJkCFqAF5CQD385/rIr3g+IgfHu+SABeFcQReyFeeQ+ljYJ0sWf4QzOyOD26dG8D9N02N4RMneMJdmz9e6q7IK5nZ3s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767949434; c=relaxed/simple;
	bh=2OhyWUFophU9whaPSEDVUW4ewNDllI2+Swkrye9Hv40=;
	h=To:Subject:From:Message-Id:Date; b=USUmG3FpOD9mY6F7Zk7jviDs1MCFTwajHH7Abtv+5tY3gpzqn1E3nGO88AzxFdL/Tai64Dw48w034FFm49zuFlH9YI0kSXY69DlHeLHsDXf8ejY/TSltcbFBYuffUEs4Z+9e3pXAntV82/s4yNBWiuwub5WJ9m6ECapglghBbXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1G/dK+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1G/dK+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A245C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767949433;
	bh=2OhyWUFophU9whaPSEDVUW4ewNDllI2+Swkrye9Hv40=;
	h=To:Subject:From:Date:From;
	b=G1G/dK+vcpUdNvSJQFy5wppDelqbpB8EhESf4v8OfuPDpoXmpHsLmCOcBKPvv/oOC
	 BDyLOddtru6aBjyAlq3f7J8WM23zZaK11XnfRGJirDWknujXujPQhNv88A+XC1ajnB
	 9xLNLRiEsVPRtEmsQtMM3ZjQG+K5QtMbfyBNh2H0a5dCndM2jXvVwoqLi1p83x0ICS
	 teOwUuSFXpLOm2qG990RbXWHOxWjhD4ldBxlsON3vtLPdKNSqHbQxFpQpH9TMhZjkL
	 rRXvkPM3nljY4Rsgs46aCyS07SfYKLk5S6nqhctqTO11TBRdNYfdyTs5QQQiXs7auK
	 geBaK+ZfXzYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D689D232F6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794943357.30668.7686750741316272158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966a02ea9c1925086191700bd9893e6cbad936f7129a25a270b3021815bce5f8
Date: Fri, 09 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767949433
