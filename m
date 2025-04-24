Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF171AF0B5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745514594; cv=none; b=cgzlEqrMe39zEXDzO9GqXWWBOVgMwiOyNA5L3hYbciZe316354MXIgjj23w3vpC/v7ccIBEfn+b4B4qbuLleuHbSfo6ROlh9LUzu6IBCumJShbcRS5qZOF0rmWY8PGkkW9HR3S1wcIDmHmOkocv2cgcjH+cWFg33WuQQprCzGB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745514594; c=relaxed/simple;
	bh=3VfmpQoJxy2nJmmvtFKdgODxa7nCSCZVVD7CJ3MMxY4=;
	h=To:Subject:From:Message-Id:Date; b=ccfN5jlWDNCQAZi7nORxcbU+OcrwfTsVVARaypJVDu4++xuwi9f44+K2HIaE1k3ISmpLqQpIHTqceVHxXq5XVQwZjMFRHRCWCYxyROm+MVvCBhwW2K/3nNfXAqjrBxUgGe9F3cu7GKD3G9Es/bozOjfH93cSJDlf/yItZYGnX1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQqbopi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQqbopi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF84C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745514593;
	bh=3VfmpQoJxy2nJmmvtFKdgODxa7nCSCZVVD7CJ3MMxY4=;
	h=To:Subject:From:Date:From;
	b=lQqbopi0N53CyGuCdLC41p6vE9MehDmNuVa6KliZdd8BUTtIzqgq+yhSGXZXv0lnq
	 lQfW2fTjDN0nYTcH7+zL/wBHDMl6Yn+3SBhXqyyFq5Di6B2NaqxzE/YirgZF54YBNs
	 cKcWNOFWEQ9RK9fGujKsE0jeS9SQHLzw6+3+dqlzSbFz0RbwXsOCvoo8bkqWYB6wyT
	 3JH30RrAWjNbk+V4wbqMl8a1bsYPR1OiCwQOQ8TRvDqZtwpfbIpnnIp42LqDbflj42
	 q5iR2DMSWZL2Gr1wB9OK5+owXgsdSV6kwO6+QwanYcBF0LstNRA+/NWmdAEP8E8UWj
	 W1o5OaoaSFsgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB8C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551459357.9811.3072149930686369631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67280e8dac655dbd4f103b8fcb4c997d1ab87b2437995c1fb10fe52fd957114f
Date: Thu, 24 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745514593
