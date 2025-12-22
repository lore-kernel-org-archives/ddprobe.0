Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D631961E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766411634; cv=none; b=H/HtoOEV0M8LsESDs8x2N5ky5BBgyOm1W3IrZ2PKZhu63TMQcJHU2PwK2P7OKJF4Iuf44HCkfGxJTAPRVicjgwArJTkTFWvrN/Y7CfkPZWu5qAxWqRf+BLGF1FPiS8VN8lqEj74yZxjU08ixeKTCk1gNQLresbFbpZ1V3nfFPPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766411634; c=relaxed/simple;
	bh=7WmBrJ19uL70DbWrjFy/RLlz/gKdOz8TdEQoLC7+21s=;
	h=To:Subject:From:Message-Id:Date; b=CSgF7nj63gv1PTRH6os4CfbyAnLJ8PDa6Gk6dlFaf8mDsdNPwi8QFaFOcaHHxNjtn7Dcu5m7+xDeNBtSkVvJltMwwDxkR6/80MJJsHJDZjXwdIcuzxrASwSRwA31+5sbNmsqbcQEGHiDn5iUTubUXq3qF/sLmIwEF7mZS3g+dy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlmPq4ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlmPq4ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0065C113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766411633;
	bh=7WmBrJ19uL70DbWrjFy/RLlz/gKdOz8TdEQoLC7+21s=;
	h=To:Subject:From:Date:From;
	b=GlmPq4ax+WtzFV+FT48RAHfLRneqOTy1+jk4+anIM4lRuQO5NYbV/+evMNsCSqwnw
	 ZFSwXQEKKEhZZSD3NALBRZJgPd3qqctTyJi+Hq+hUjgbpmZloNKFHpIexuqXv5Pvdn
	 frA7vuKg1PjnLceTW3K9s1lfD/DR9302hcAwyWfsSYYnw78o6W6s/Wdv0OLdIZwXpb
	 wtAmCRzd/6YH9lHUrLBi1kspfGatHWudlJTV7dANgavJIJn8QWAvxmt9juvdOP96iy
	 su0SBENFBnJBllw4xHYKggX7i4rkX4MpNU7w+Yr72DkuEPzT8BwLFVarg7L+U7Dlqr
	 ekB6JJtJHuy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBFE674B5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641163357.12029.7824346642209649745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf11b9f06156ea5ff8fc38accad9189e74e717906bb648f8daf6295c90471da
Date: Mon, 22 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766411633
