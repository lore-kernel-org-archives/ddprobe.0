Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393111FF1D1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748463594; cv=none; b=NGtwQaIvtU+4lq+cF3UZ3rOL0qdZ2EhTDsg0oAt1ZoDgAL+FX/vW9NPXmB3qQkYk2WC0qeVu7m0lMzA0fUkIap4H3Nv3eqmQpL7Fpkpwp/fMhSQ7bV2nUrwmgFaySUBZeXvvuCggMueKd+WujRXW+jv7uF0b2c47ms1upAn6eI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748463594; c=relaxed/simple;
	bh=rYy5s5wp9rO5vOkUm8fMif6rVUq8A1UdkUUF6gyYCYE=;
	h=To:Subject:From:Message-Id:Date; b=n64sF4eh5XgvcwNwapk1Mp3iVpo/D47P7xdA14qj1K4nrzppNCMtDZkTaAxamVQyuPy87dZY3UV65sDN5bk9NjvEgv0VT5A/lw2h9TAzjVNF/8lu4nHcOR3uVtctXMbWjqVr4w72vGye8WKCrRqsEBQBK19fL9yLqmqFMGOg/tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCdxb/ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCdxb/ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748463593;
	bh=rYy5s5wp9rO5vOkUm8fMif6rVUq8A1UdkUUF6gyYCYE=;
	h=To:Subject:From:Date:From;
	b=CCdxb/ZA5/gf4SsjBvlGL3pc+xLrZyjaJQWkVL/1qk2NFqHTrYhTxyYT/Zg8r4hyt
	 2p8SBiebHWcLX/SVkKmhnsKCpyZ2XOoQbnF1xFD+4KPin2CDSzGGBN7pYJVXBAtWPF
	 Yj/XQ2/HfJs0yJVXOAJ31VgmQHdz0jSZFOsm7yzWy+ZHqqz28ULvcX6UUrQAMQG0c3
	 AMGRxQW/fMKzmNqO+j09S53ADRt/Kvj8fJG8feEc4v8e8xXPKHwS5fp9kyPONTRHWW
	 MA5NafNgtr5kdkg3ZtLl6j0Shqovqe1tuRJT3qkDFl4LNW1v2ZykvWV6h781qJntbo
	 cszc9Vp+Nz9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE31C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846359357.25512.4095246599625916737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db5de39e0de558ee0c2067917565fe27749a5118dd3bec7179d0826f97a7d19
Date: Wed, 28 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748463593
