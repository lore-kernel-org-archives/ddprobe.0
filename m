Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D8822083
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765153374; cv=none; b=RTpAd1ZEBFqAiJf+Z5bbY7EKY2dJ/DnNKn1IZyZIy7kR/DIdB6TMC0Rv3yTkX9xW19SakF7bBUt9hj4qpgq9HnMrzOGIaCW9cEhgKc3okfuzT/e6C2w9wVf11vVaoynJqgm1pk4Mc6BfMsTFzZBmX6alC9fxs3OqBjejgieZIeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765153374; c=relaxed/simple;
	bh=8uAcJy44H2YW9M5jKv9XyFB1oeCl4hg80M4uLlH9ia8=;
	h=To:Subject:From:Message-Id:Date; b=KPxJvVnr6gCBSr5AIF9zN2oBQtnuf9yjs35FyKkUpxbU4CjvgOSocLftaTwtqh7bezxPPQFXfk4miw54aIXX/SuGmBVXel7GcWmTFiX1kiBh5RwxBE6d6hjkiarIYcdeQmyj9fwru8whQj2exqkN9gZ9eoA+QhVJWV/GhYcGRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU3ACrJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU3ACrJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8600C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765153373;
	bh=8uAcJy44H2YW9M5jKv9XyFB1oeCl4hg80M4uLlH9ia8=;
	h=To:Subject:From:Date:From;
	b=kU3ACrJQlnpnCntn3rHLKFkHLF+MWkJynm1tY6jr2TI3bCGb7LY8XJeYzBqN8YR1I
	 HnTAh7aDHpHwmgsjIolvJ1rLTHvG7TzTOreISsQ2XMdfdI3CRxmh7O0b+8KogwwltV
	 pNtqpzLdFA3g2wNBnn6SJ9UG24f6XvftZmGq5YE3gU1EPb7Tp2zWWhgbuyuf/5FCHd
	 hghT5bTEDg7JNeFgnMiZ79gpbxqnpwW6J1nn7S+sPjyVWoGHDcTMp7u09qq2WOB1GR
	 +GkT/YGyqvSd3/99SKcHIpwEurJSzPZBqI2Y5cP2JgOsYKzPXjJDxEX5kKcLYxbz3i
	 6kk9HZ2B37b9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9603ED1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515337358.29947.9167291212152965863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b8c42205a60487efe8ce6709507bd58cdbf87d1be486e3ff09ba544d0659c2
Date: Mon, 08 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765153373
