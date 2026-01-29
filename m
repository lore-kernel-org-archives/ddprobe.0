Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05298367F30
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769666034; cv=none; b=JBuimRbplmLE1PCPb+JKBlwQUp0fd0trFWuGsMFtBhQ4YsJPEzNNFMfIHnflqqiVP6WL5RPYm/IOM5/HwnYMJCT467q8osLVqnFb4WttJsIqoq+N1Kq5I/Pc1ohN5fjjX9xYUkwcZqyhebh2ZENcBNtWe6ZvxKZZWF50lB3t64U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769666034; c=relaxed/simple;
	bh=Ocq7xDjq47riMUo+86kn2AIo2EfKZ0K2zf7b+ClieUE=;
	h=To:Subject:From:Message-Id:Date; b=JZS/hQQNHe5uEU+FXPPQyO722xyu0CeCGmsMSv/gPvftktOr/yVtecAWWhuMG7MGdP+6yeTvHjrzdZdoTheS1SKrR4mrgnVTNGHL5cEDC2hhvld5yY5/MInSvOX/CeJWFVdbdr50BbCZKqsf50qo4vo7ICuqq2g1SuTzqEkwOYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrgyLVE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrgyLVE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769666033;
	bh=Ocq7xDjq47riMUo+86kn2AIo2EfKZ0K2zf7b+ClieUE=;
	h=To:Subject:From:Date:From;
	b=TrgyLVE93HFfO1XZ9bOyn2x0zlJrRj9idr+3SCVVeAJP+SR/UwXU/pUNGVqF261/1
	 bPtt72qwZVCTRNadGDPG8aVNIdOZG1JV1gpPdXZBR+uJtYeh6MPVAnR8MJSdkiC0WY
	 WHO6OmeUHzDzS+5snDettqhiljlwfhLpkJcUlAN9hN3k7IUhFTQ2xlXFXHupKAQ+cW
	 vvWCBRoaN7VaJyRP8Kk7M4geSHxr6RmdE5+6EyNTG7Cf+AM8LCzfHOdt/qbMJQx8d0
	 115wIvVryxwQgim+BiwUFyAk1pcltEGlKfVVYrWv4IHp7YG7O9RnddBKiDV1iUx/ZD
	 i7k7jPcNm6KXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1BD3F083
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966603359.24328.4212444039642959077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4f23fda59d442fc3f3da8bbd1e48023fd11bae2e715c3e53639a52a3afbe5a
Date: Thu, 29 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769666033
