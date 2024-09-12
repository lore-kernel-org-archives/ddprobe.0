Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AAE28F5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726110954; cv=none; b=OySOYp7bqiRMw+WRK0l974K2dSKYYFeW/oqosEnxkI1i+3x4jkAVRrAksAQk08OAJOTrKHITfpBCN5p0bSHIpaghYfZAlYXvSWdi0XM5U86bq9RdFBgmpc7sSjpaF9YNEj+CT3da3XCIqAWkoOLz9SjkW5f2wjDiioA6qAfZNRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726110954; c=relaxed/simple;
	bh=MeS1B7cC+lrlBNLWTzF7UTHSaNuYAmTFVtc7Vh3rir0=;
	h=To:Subject:From:Message-Id:Date; b=ZBUgiZXZc/sxJr1Irn26f5cZdHnsTNGjRC8xCsUegfqdzRrX91jgzWzgGDXmdsVghD2ykUq//7p0jBmg1G3pwNcDwcZon2nlrK9Kol7d3CU4EN9MfEUCKMrjXKRiN67NWRS49yku96UOqGLCCLzLV4WqmC3IIpRSrdcWW7Eizi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqNYZgP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqNYZgP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66DAC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726110953;
	bh=MeS1B7cC+lrlBNLWTzF7UTHSaNuYAmTFVtc7Vh3rir0=;
	h=To:Subject:From:Date:From;
	b=DqNYZgP0r+z8OazdNFkSu0V+TtBbzm7G8+UYID0p16BDH38YRH/Ldu0NTbHrQ02nY
	 tVwopLQImcm8L4c3pRro80O3wCoin0gUlKiTSJHE99guPFUoUunGResNLnxZvoIjKm
	 fWBXnTZ+Hry5ox8hCUqwWsrqdG1DmYmgtQLF00IMWPcl6cH9ptTn5+gx/GjeP+a2lk
	 I9gIlXgnyGkzOvXLDG5TrO3P/9XJrQO0U3alDHE0DPJcKiCF3l/UUyytH7IQlv20mB
	 bvY5DxF7EuNPCjPYr3MO/EXWq3fSQENJm0MIUfH4GvLx2iSCFP4uoNd/qTq1xnSk+S
	 pEsQJlJKfB8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF95EE6426
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611095366.21227.11669838159725978071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cbba68efc7574204ad47fd3323dab936769d4ae35a8e1247044eb51d69cafc
Date: Thu, 12 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726110953
