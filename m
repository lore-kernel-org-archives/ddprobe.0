Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C66684039
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783157314; cv=none; b=At9BcbdRUXPkgaAuJoKygy5xyWlkyqNJCnPBO0QxjQKOSfE9KTHhWZGwrfNb8HPiZwIupYWQlE1C3zGXnm/k7qNz/kHYn2y0nk0TPkgEJ3Jn7AxRqRHv9czYH6r5Y0sUlRwidP/N5ygDQXQVPTNgryoA15pfxX6IbpTrsiDxcXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783157314; c=relaxed/simple;
	bh=g/dWWT6gpnfuQv+egL3YMKKr0s4ACRHQr1K6pFdjn2s=;
	h=To:Subject:From:Message-Id:Date; b=sjdYpKg+KdMwJIipH/8hZ300eVQGRa79QliL5Ozd+HprfkKayzb8qCLwtPJblkhk6DnmNJDmEhchLO9TKxHT7Oqop2tBTUcevEMqZlAJ4jukbA5tEoK8DKeSdCykwztk/dgVtl8Zbo6lMT7aUvXrz1ww/cQJ90+t8o6kC3WbHCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIkqOJfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIkqOJfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA359C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783157313;
	bh=g/dWWT6gpnfuQv+egL3YMKKr0s4ACRHQr1K6pFdjn2s=;
	h=To:Subject:From:Date:From;
	b=YIkqOJfn2vxNdXynIhT7ldUyIT5Pd0Mrme0O1919zsl68nypms3r8T/6qCbIiTNap
	 fzXEoTPKTZ4dLOpDPmBTnyURhDPJgL6UGB+BBPoMDbAEmWCxGJlvpcHR43QVBx62sZ
	 ZWA9XdiYSaa6izoPWP/ZzVbcF3WTa9cUKgUDYXSemCvin/7L8t4VaX8cM/lDd6BRNp
	 qHOM2ChtqmZr5f/Pn6e3WJBfUq9iZQoyW7p0Tth4qhmLgHM3amm4ai68E6q2I1cscu
	 m8/lo+1eqs21Y41nnooA/pQ4c82urQsfbQl5bb6Rhe+u7hQ8231YIeqt+UixxzFqNr
	 hTnlQMd+ww8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E4EC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315731368.31726.16158498501605535955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec45b574d0a89d54ca41261f3dc83b03f4acdc08da0290a6a64034ef1ff37659
Date: Sat, 04 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783157313
