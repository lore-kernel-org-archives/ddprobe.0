Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F8413FF9
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722657354; cv=none; b=bTQAJ77rX53IiF43H/1pt6MIhi/uFFc9PazVGqVDUjhAR0DEIB4Lis/FF0a2zLtPla3tamR8TSzl5WHjV4gORhsyH7zEW2j0htZQQmTFxvi2EjG2Nk+dl3FAdBfRXV0anpkAnusoEOey1jv5jPNNvfTAedD3oYIC3+cR8Bn3l2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722657354; c=relaxed/simple;
	bh=EU8D1JGgBMHIZ2PKqkiYwA05/LIlr9GWSY/wp2w0xhg=;
	h=To:Subject:From:Message-Id:Date; b=MypQT4r3TbjzUIdx/7k+8OIiWvbnWf8x74m4fQIWDQ68yXyhSfNsAqtd/03NWRL+9FjjJPbNzQw0qTdCKuMt34WiEoT0N/BFRG5GlnZE2gICs8Pphz9JZ7kvRqu70YRIPiNG40uLxMt0cM0z/fzFi1EsWt3W3joXX0SARyHZURw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOrH6Gb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOrH6Gb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CDCC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722657353;
	bh=EU8D1JGgBMHIZ2PKqkiYwA05/LIlr9GWSY/wp2w0xhg=;
	h=To:Subject:From:Date:From;
	b=WOrH6Gb3+R8vQCBl74eJ+WbQVwPy56mhe0hgWa4K5YWngbR+ZJ+A14MA6FCF1wz0/
	 tqQirA6rAXAUyIaBKv66B8rHzDkSv+LUuMfm5TNKupnxEoOAz3RW+WXnBTwLywWo46
	 s1ahiNqUTmfvlDxUZq7dlS86EydH4Gftf/J3Nh07U1bhfiqPVKIrXj4yRxfO2VigO3
	 7coOAmJ56KxvWIjcUWpOFgkPy9F+q83HeLDcJkaUBmzE8nNxWPn5IMljdvKWwoc6rg
	 2jPBw9awoXAmxtswcBhMp7bKa4qVeW3Gu2gZp8wB67F47r0c52c3AydHMyY6JHUT/P
	 Ym0ACR9z/mZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11E8C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265735362.5076.13518128625422155047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1f50c8f7aa0b492eade4b5e5217ee5a5a68ca67fe921e9453e145a6fd02502
Date: Sat, 03 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722657353
