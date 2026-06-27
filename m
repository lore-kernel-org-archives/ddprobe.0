Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378FA186284
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782520114; cv=none; b=ZZqTZrghVJnvfBuPgaduKCwzLzGukdSGhCsYW9A4w7y0cJXq4rIM2hLGHWnkb5+dshoSibjbUZPiedE0SpAkfWbAtDDwQqWZMzXsXQbOYY3hSDqpSgpDNtI3D8ntrDU1AHf9O17qoQgfAZSwSLZE24Tv8NZpadtIzXSU9hOtZx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782520114; c=relaxed/simple;
	bh=c9P//dzmx6bfJJzTeAzsIUAU/kmZt5MGgM4hf1NupRA=;
	h=To:Subject:From:Message-Id:Date; b=sVhnsojYOEZD1uscae0LNktXhZENfJf4GXabUeUp3me3/0cJgW+TZScbTY3F8zT1SgvTc9Hg0XIsOMUxVrN+PbPvrLkn6OXCpWK4zaTZ9ec36WuzenjbL60UjDFCbfd0GTIgbMpSKgCqE5VrE8yzIDRv3wT08VfH3PG30GqpCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T697P+ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T697P+ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA198C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782520113;
	bh=c9P//dzmx6bfJJzTeAzsIUAU/kmZt5MGgM4hf1NupRA=;
	h=To:Subject:From:Date:From;
	b=T697P+eexajQGCUcmKJW0MJhQ+EzUgonwrYsTHqJ1guM9a9b6UdqNy+lX9xm6+yv3
	 pqJAl4u3za1SPTAuRyGZfVTiphUiqECh+fX910e1HEzDg+abClwWdodcXtO1uZ3axH
	 Zr9vecQJKhfJ3Jbuz+6Wfofc9YIraIOGn3YKmWbJPu3X6uY1j8Wq6GwcTRK+0MznBO
	 NJ9vG2UBlGPVKpKEi3ANzv/HYGrGzmL/6vT6rYJSqJnAJnqqln65fgcsOP9OSUrHEA
	 xEvRDf0YW3EuCx1oRcIAODvYw3q1nW5VfVnyhajwjEWII3T+ozQ19gbeE34E0JD1UQ
	 BBpNJDgHe46xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B083EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252011369.8272.14541501506566994611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3951072239ace9969d4e683c4ba511ef3c5be00ed5cc5b80e5138e8d4ac61aa1
Date: Sat, 27 Jun 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782520113
