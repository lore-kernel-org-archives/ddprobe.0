Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440001DC1A7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747080594; cv=none; b=uj2r6qFn/Mg6W93eP7mZfEBsWeIZqw1qr5t3n2RLX4hcGok0jEZfG4zRlRjhsCfoxtMFefdue0nQp4VZh8NtLphmIDeJLkxDX/MNaIyfsB6qgDWz9l2OXXFnMrsRll0UcO2InIC7sKcIUVJSzPmeHG5R8NM3gsoZK97aiD8GXBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747080594; c=relaxed/simple;
	bh=iEZW9u+deqONhNu4k9CIqOBKLrqYCNgY6f5QGcAShR8=;
	h=To:Subject:From:Message-Id:Date; b=RF61nYmCkPn4mTRJW+idjCXKalOD7cnd+zB1x02mOQTZzdGujUwdYT49CSjk8oFOfGxXYamiRipRsZ4zJBHAiU9aBRpbSNY6xo4SyskBdUba8KYItQpwd8bBx9W10QUBogHLHUI+RlkwPZz/sweKoxSxjen6M+q8YoAyD+u3u8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZNmzs0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZNmzs0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747080593;
	bh=iEZW9u+deqONhNu4k9CIqOBKLrqYCNgY6f5QGcAShR8=;
	h=To:Subject:From:Date:From;
	b=qZNmzs0NkBJlvAJaNVdLHvnjgbsSgGx6xWYl7xpOl3f4G2ag2ML7pLSKK04BEVHE7
	 b5LIGFgFOtqX1uXZJqMHCo2yKHwmZFnR6k38pMVSxEXJeGsFdt71wDiGw8m4R1NIe0
	 5EQeW8yHDEjnSf6uAwsKQr1iQpmDxkjpTQrKWKVmqwiIlLnBYXbvRXdHwwWckAuU+J
	 zVKIdPgGx2S9//ElTBjQj7TGH9NL4uLn6r8Mc1FfKt8+znbwuL+v4KUFLQenGN12E6
	 CZE9TOzMBKYDEgPsxjHSZnG1xz3+wsdEUy9zpu0WoVT1OQeW7M/50N8OlMdzbFybKt
	 zOSqJv7UwVbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ABBC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708059360.1854.14154996024541201449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc188643aada543c0db540a9d9edc8d37fb13a4c1ca33e9e256e403d8f4201e4
Date: Mon, 12 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747080593
