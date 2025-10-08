Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6D52F25F3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759942794; cv=none; b=EGensIXflrsuraeYTnHDfTtebpzfQdizN2oeFuPnsiFEUS31cbIiQ3OECb9rmOc3oauay+rCnZm7U2kcSVHavlr/5k8o/3oaaBP/Z0/M9ey6584jMnPNfb8uLShd75NJScURZPYP8tUx5EtNh5bxjoV7DpsHZn2Hh6134836E2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759942794; c=relaxed/simple;
	bh=22/tCc0nUY0YWqCOj+7YRxkFgg7j8OCxoivIEtpNz6U=;
	h=To:Subject:From:Message-Id:Date; b=nVPD+T1cx2E+0DYwwZLkkIyWX9IiTGVmCC/FEhr/mFGCjtXmbekOSG0muxJFIymQlyTJ84jCIOs5/+ivB0vuPQr2tuADc7Y14V4QMY96wLrcqZfWcbzyICzdgL10tZSnmCtfhZQY58RTPEzLmrCRNiz7W1XIgZUH2St/9zE54oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHUwjzmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHUwjzmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759942793;
	bh=22/tCc0nUY0YWqCOj+7YRxkFgg7j8OCxoivIEtpNz6U=;
	h=To:Subject:From:Date:From;
	b=aHUwjzmGG3N4wMkCa30D3tJX2qJK4rL0v16MjrVVo0NrBNwGlhd1fh16JNUzHwdKD
	 RTSeAGDUnFTLBJVwR/ZpFjlS++xNNsu4yZjXdPj+tRpOGHZQPuAF0sk64hznuf7XLb
	 iLL3BuYlPZy1xFxWnAWNmCUZyUMbhLdKGDpHx2d+G7vuCiY87J0nMuNeFqcdeiXYUs
	 G2UEBHcCJO9UlKFMn71eXB18NrI/wPAiZt7gk7HdGBLYhy8CfNPxZDe2OdeBluw5Cp
	 G4ftAyJUGN0aZ/Q5luc1pLOU/EB+rKbT3o9RjG0sWSCiUJLYRkN5Bx0CKjkI/1O42k
	 aUeAMaScNqxow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C44CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994279357.23572.1508061539836675026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58eac654ca84e665f5207c7c76181fb9c9c52146282b739725f660089b8e131
Date: Wed, 08 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759942793
