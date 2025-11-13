Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184ED2D7DD3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763026194; cv=none; b=nITfPaPNB6IUX/ebKw7sACJi97ZYmHo3SdeJqcbUo+vJkRboUVi80Tv8uyx489egHsJxwACx33U51Lmg2Ww+c2DfBn/ZgQ5yM14Ej/8JcDEJ2YKMgmw98gJRpMInD1TdEzTHe5hvSdV1wEfUpNdw3+g+eF9Ixil3OiU+wiOeXYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763026194; c=relaxed/simple;
	bh=upDEVE+kLZhZHYQZpIZcgEsnSjw8HU/IG2n7UbDRKTE=;
	h=To:Subject:From:Message-Id:Date; b=bw+zSoKKTeGUbsPJuvQYgtKrtkFkCp9uiQKzHQvfU7mNF48H0b41WdDvvV5ckNHjpHUJMRevn9UdeVUUl46xg1IE7+xHMJ8y2J3LS8GaHMubPSk2rIuGr152CCf92alZPJUWtWLLGX6zauGV0HMm1Ln4uCTU0UTUsMTmeWo0IW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0elPrNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0elPrNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763026193;
	bh=upDEVE+kLZhZHYQZpIZcgEsnSjw8HU/IG2n7UbDRKTE=;
	h=To:Subject:From:Date:From;
	b=u0elPrNqkMERCo1YghQ/1YQaaSwcgNLU6XLOuIIHCQYaShHUD09+NKQt+yFzNB0NC
	 lNGikpJlENi9rya8zkfcsYGCJQ9LqKzHjIhsFP7cwxnmRqTDztsdSQx1ThiBKYFO+A
	 gH78aHGuTzGMyA6N5Gsl5jh6vWs6Fn7pLv0nf6unsH8N6l2QLapDKNBKEH2yeuJ5b/
	 5fbCmMKG0eXXcbOD8Wa7XWYlzkzfS2u2NSuZVjnuYyNBtIZoFnLwhAsoQm9MDzdfQ6
	 wmACgl9ajpRff5Yl6kWONZ90CN5DhO27Y5nI/MzBa8M0AoOyTomGPid2qC6fcRgjnG
	 2mvx0JqOCaBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EACD5BA7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302619358.15510.12830306389344145039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb5e9893288e9126c31b4cdd102b692780e44391ac6bbfdbed39ef7cb38f4d4
Date: Thu, 13 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763026193
