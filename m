Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1964235962
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759795194; cv=none; b=ZHPqk2UgKYOq6unDEhsq++HdvNK/EWyMwe/u6wI8MUcrmi8+MmLwPyqY/yJbpwEqMkbUUt2rWAh4kMVtH5Mv71y9S99n3fnJGWCO8QGLu/VlVc1MHQzTdVDv7GDsjPzeTg6fWEX2SPNhzqWD/My6ouzIutARP6ZD9ktW97t2NU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759795194; c=relaxed/simple;
	bh=g8ZxXo8P/9TZ7Zc11tq/uAYnvA5ICKAkTs5zWe0cIF4=;
	h=To:Subject:From:Message-Id:Date; b=Cp0zSV0wtc+HN1tFq5xMwX2Y8gDtLbH/3GJojVXREGwme/g+kZQO+Zzb0uC6lukqLmjn1vOj9ZqRCFuK2NzmXFLm5kG5Kf3583scsNAw25a4ffnMQYHdT2DmlhaVEyJwgs7R4gZDj5SlMGYZQnuDObTn67SGG0KN6x/TEQnc1aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdCiZ6G5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdCiZ6G5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759795193;
	bh=g8ZxXo8P/9TZ7Zc11tq/uAYnvA5ICKAkTs5zWe0cIF4=;
	h=To:Subject:From:Date:From;
	b=QdCiZ6G57cuhVW6yWEzZFhBNt7tWykssYcOui+bV0HRBUYJogGCKgn3BHXAWiom1q
	 yrymTMaLgLFQ4tFzqeTzln/MqAOF/BK14bhQj2OKOtQ1+ePqodapRR3nXPfozmIw3E
	 KUpFwB2973pWLpGkvdGVyBt08va7M2HF0cBDIU2L3zwoCuQ0m3Qb09grk7EDwRrYAq
	 ITnkvyzd8OoIXpxI+03ZcpTCogacWnhtgV+RNZwwwoFkpm/3KyMSn46fErLLNwnZDa
	 6Y0naoqqKXh7tCG4Z+HfXcIZ2RkjlzfbuQf8mR17aUzYkfytZ9VEYr8I8/WkZoZIbW
	 N/9S3vXJyvTZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489FCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979519357.23128.8716528745765684699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e238c0e7b9e57be033406b515cbc2e71a8fdb8d58d7a4a31a0361c42190e727e
Date: Mon, 06 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759795193
