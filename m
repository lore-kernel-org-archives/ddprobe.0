Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC3283686
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762498194; cv=none; b=SzIQ+eE1+B3ncHwutSCaRZyR2rj74nb0OLEm3euLRKcS0ViuglFcKWmdNTRFzx3KQ1YAFYfa5sA3uaBkZ1BEhNZAkJEEvDkydUYFKmkiWoGZf6t8N/SBV1Rq0OPacgbytKsb42PtJ4dzkwfLmGplS8DCxpPuGadvFP5D29wvpfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762498194; c=relaxed/simple;
	bh=01KtGa8TkSVGWQKRNxqNQhdrCcsBdMY8B+UNcZlAEAE=;
	h=To:Subject:From:Message-Id:Date; b=Q4uogjYszejQBl+NCLAhuPvPoUapo6hwVBEHMQ6PmfHEnKo/96wX9v2Hqgjfs8BwyWtxkfGeYR1QRvjDZF6q3PJtQTD7gJdYwZTntvKUMWzV1QO+n329TrRXPBp/TV9AkCp3HFMFbkEgSgtDhM3/18Uci67RfRC3c7h31LS/I/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeJk2Bwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeJk2Bwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7044C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762498193;
	bh=01KtGa8TkSVGWQKRNxqNQhdrCcsBdMY8B+UNcZlAEAE=;
	h=To:Subject:From:Date:From;
	b=VeJk2BwnkaLM9X14OAC+tYPw96Ahyy9RZjbSrP7/5QN6WHyAzJUOtlGIWzLVy2eN2
	 j1TakirDuc5w3fpetU0n/0qA+bS7eTkrSYNCm6F/YWmg2fNZboc+8RaosWsghgQ8/T
	 mt4r54NxjVdgj21W2dNGdJCMt/OO8Hk1lFvC4gwIdfzz0YIjbjcdd3+/DvGIEjK/bF
	 a+wIa7OkTqLvG+ng6l8saufcbPaswYe/EhfVvfkDjObx0MA6X6kVKaFBYODEpFoMd0
	 oArJv13s2qcIhpoY8mzlOrfu0XrScPz113sOV/4bkl3XWUWodHVkVDOgO+wfL0S87z
	 92rM611dHQgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A36BCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249819361.15065.16836523381553476851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b358e4d866b8012fd6d37ab15912b858422438a9ee961bae2f3859a2a003387e
Date: Fri, 07 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762498193
