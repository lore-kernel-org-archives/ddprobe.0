Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F65A247285
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748419794; cv=none; b=EUJGW0CJpPIsrlcGLJmJJoPhmz1A2ND2uqgslct3dvmW6HCoDzQmxFdkjQdSX+sydKkLGOHxwKiY8nl+UqxBmmZ/jowhe6CyyyCoi3R8kfg0dF9FmXlJamh0L4k892lpKbEqXVT9SFvcfhPea2nSRG/k5R5Qw6+XU8MKoMNmvuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748419794; c=relaxed/simple;
	bh=fs8Z6ZK9007VnAn1zFBxti1sjNaw7hY/JjV1z+6BXLk=;
	h=To:Subject:From:Message-Id:Date; b=nWBFJ5vQuQBcsT0vYa53AXwpC6ouKjri1VosqftjuK1Z2jXIdWM1t7ruwaL+CNYJ69G7OkdBs9ioLXhlXgioFRsCTxIhog2SDri+LNAxvuCtw4/+R9S0Bzl35TI750H3mYOlCSd75D6xQ1fPwXWHRwz9k1N8rFnP92P3bh1XVG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/dfuPDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/dfuPDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E683C4CEF2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748419793;
	bh=fs8Z6ZK9007VnAn1zFBxti1sjNaw7hY/JjV1z+6BXLk=;
	h=To:Subject:From:Date:From;
	b=e/dfuPDA28w9zrn5UBmCdcEuS94ZiureQGjhMRZZS2ACvjlEwxHOOBoyHb9/Pkgh1
	 Rh1b5pcpwDAqac9U2ZvSZoqcHy35CHR5bf+aGlo34+mcL8cFlwIDzKarxWj1uZk1RT
	 20KWKVvj5hzY9K4OL2ENhDy2TGwfEzQCj2B+oMhCHGSNDaxPCdnK5C3JTRYvI6cBX8
	 mYDz8fa/TOFExP++fiQ/tPMp82s05D3PIYHymIhr6G8Goys6QBOlpV3O2EzOqtQdcw
	 1kemdgKZrQQvPJ8r0ZG8GWlbcJQ1p+FY7HoM74Rw1Aruaew0w6IZzmKSj+EpqKxvIJ
	 dBM/9lddfg3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8AC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841979357.15937.9843542408650585690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37308e01c865061a9b5e22209d22e8b28d6e265e06f6edb6e41b7bae1f080c22
Date: Wed, 28 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748419793
