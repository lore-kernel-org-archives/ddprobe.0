Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3176E382287
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788760834; cv=none; b=oIU/1bbDmBSP3ocrdYCP8OorZqdDu/IiRvu6UIfMTfptPKuVoRLl3jxWiwZ3FlkzH+l7jtcJOLr8NM8Yt9q3tFqpDyumNzCcvuEEzvE50cG03NfxPmWQWM3QzojIHjeKXhVGfiRpNU/bdWbSgPuLhc/4/J8OWnaTOwa15phxVp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788760834; c=relaxed/simple;
	bh=+RIchvzpBtT6HHH10ZV3JqsWnQvPR8oKoD776uQaHXM=;
	h=To:Subject:From:Message-Id:Date; b=NEWqOXU3TNod4xvgDzoW+rbBWAgEzgeStnWc0gPN8t5vSjeTomOewWwEiWq32ZRGmhFYjyyy0IUA2seozuLJ9zu2xdsyO3w98WmcEy5ML2mMxheRBOsE2sRRfBFCG7XhwE4+r18zf30kwys4IHInqdNwn2aYc8UfMQ67vOyQsg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5kCqMyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5kCqMyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F75C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788760833;
	bh=+RIchvzpBtT6HHH10ZV3JqsWnQvPR8oKoD776uQaHXM=;
	h=To:Subject:From:Date:From;
	b=O5kCqMyZzScdNyxzv1i5Kt/7SmEiZ115rDq/fUYThZrc/2Z5IHTofiRg5WTBlrm0+
	 IqlA+oDZvsTjKGBw+DxSwfSYmD3x8oF3yGSTT10EKc70YnLlo5zWzLJeJ+lvtonLlX
	 LPQpYhrvPz3KzrwbnAwYkCRklkuTVhiR8oagHEv0OhwvE14fa7g7lLObk+1oBx0Dgg
	 d4ucnggJWe5jLn5c+Oo2TyedfevKbeVeQtqEs6y2AcTJUP9KjmqwcSd+AlZxJSjYsw
	 4FUjadPwUM2rlwSbntYl5NNiFzeRSOmIT0UZJeQoj1/U+JW1fd9tjt8b5WDV99qYZ4
	 X+aVK5JbR1jNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB54C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876083370.23385.13456790584711774232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494424a2eed8a7667f0187e3dbefea3cbc6c21f64278badca7eb8903df4689ec
Date: Mon, 07 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788760833
