Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F902222A0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761936594; cv=none; b=fjOoPRSrrRiKKQyAmYngVskSQxX0nFdbaOj7tCvouJmu3/pC+3jzJYhazAD5JtB9fYEoZck6wM3+iGbb03xraPj6Heow8opyWXOUFCp4zEeBGlacUwGOEM7CutI8EQzgn0PvVmPdSvEOY+NXVKNrmDs+/Uo+zwelXkhsiPUJUP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761936594; c=relaxed/simple;
	bh=YrV8LAfzCEVX2JvXSNBeRx5i04WIvxpWAWKhUD9kQ9U=;
	h=To:Subject:From:Message-Id:Date; b=UjGvvh0jTwTg8E6zRIUagZyXS0fSGwrV8lThn7NHh1opCKdclPtWxmpK3phM4z1hBEzSBHFuN4MJlQ7DVElxDszGOEuWaPPmVStUSK11bQH0/eKRVaV9VzBmuu0VwFkuN8v5a++g6BkQWWbCiXxC/cl616pc0gdMmIZLNNLL90I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYpPf7Ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYpPf7Ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761936593;
	bh=YrV8LAfzCEVX2JvXSNBeRx5i04WIvxpWAWKhUD9kQ9U=;
	h=To:Subject:From:Date:From;
	b=NYpPf7LsOOeSPQxJvM4SLbqqT/fX2U1oosg22PCGKbbatMRJLr0/esID0iDXYaFP+
	 ihQvXxhDlgQ6H2kMoEyChgkGlhE2DlmIMSdsYhNJPYhQ7/anEI/F1Hr/QlKI+A64O6
	 Mc3T4q67CtFJBLomLQoKLwq1pYP1hUG7CE/LX3UCTCSbyGXxqjJHSS0Ms3MycKPr1x
	 ZfW3q8oQ998LrBD5f8y7lxF+7jSoszxuHoYe9pPPqAjqTqAajJt1VMZN3CAK6X0NjH
	 pg+7ifi9Sivvg4W3jg/bwpygRM40YsFHSD6nStAT/6gmJzq7c1L+PT7M7PF6rvSHqA
	 4dePChDpeIn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E7CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193659359.877.18333006986885984057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5667025b7cdd8033b02893dc05e5acaa38c2e538b180e884fcf23f23729bdcb1
Date: Fri, 31 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761936593
