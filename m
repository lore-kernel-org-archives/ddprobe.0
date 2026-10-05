Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34472367B8
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791203434; cv=none; b=izrySCF//hVg9URZu7HGs7tq5qmpfisa/apjs+eeZ5AE5E90nj5D0u98CFaiTtalGOLwjbR9wM0+ZY1ilsB9qG1IDP/V7SOy93h1focR8PBiSnhYdacrQPpihXhVdfIQBPd2J/vhHnA8VNw4JtpvLXIJz8ZyzIeBufg49+glwjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791203434; c=relaxed/simple;
	bh=zaKONQ0vPg9Zg/uZq5oFuSHzpgsnbQVBwulWnXciufU=;
	h=To:Subject:From:Message-Id:Date; b=bjo8lhHcgQYyRxQZpj6hyWKSCJ+8reYnwn3D3pAXYH/1zbZCp90Aw2cdqStARCw254eZu1K2KNGvSmM+bMSR8nmyyaK6h7oa7rBfyfoC515gDYnYUzij2vs7/XCEHeVY+ZVBEdzSEZGaKwOd612cK3+gH6kk8qU3nvj7WLmpAGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfQtoLdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfQtoLdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6D3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791203433;
	bh=zaKONQ0vPg9Zg/uZq5oFuSHzpgsnbQVBwulWnXciufU=;
	h=To:Subject:From:Date:From;
	b=pfQtoLdhHXgxJiCJGTQYJjN2LLLWJWGwmGcSwDem/1jGWIgZVZfUNH5SQ3Wo6OCLH
	 nRySJC5osGAmbGN2yRU5JnaJFUOjxUejUbmlfF+T7XGXFdQH8UwDqtngU1AFwUs7uu
	 T3DymDWSDVAmhz5H/6F5ZThiBjPgkZKcRUSooQV6n2CEkf7K1375bqIXa6DBh7QV6E
	 iUEJpkHDYvqUTldwqo0qpt+NdeX/HLRAMMiSvzLXfvbOT/6xmGDyiROSLFN/NKMw6O
	 CCOvc5zKyM2N5HztxtYRoCg30a/8TXTeSoJXWy14t24kAFn+cGe/b2NCCDD7iKuYS+
	 1FWsC68PWTmlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ACCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120343368.26133.7637057258111976272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cf4a6dcac22e191986bc16394f0a57b7af10e527099a3f436875e8ecffb505
Date: Mon, 05 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791203433
