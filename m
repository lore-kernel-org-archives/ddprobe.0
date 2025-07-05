Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7B23B60A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751756394; cv=none; b=V3ZktpUEZL+tapiMXaGo9837BliWXSqyBpIP5Ltjy9mEYF2JLt3d7mwkW2wgBn7FZtxAI/cEgTywSY3z3g9qhILl+s8cBZZWE25aYxXInpCziQN0Ciz9WyaxODFSh12FRpNsjatmM+lXUUqpp4du7jeawb1CXfzFtuS3Gnva/Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751756394; c=relaxed/simple;
	bh=HQfCIGlUTzb477FOYJuddcUgIgvLg/Yho+j4rbtOH18=;
	h=To:Subject:From:Message-Id:Date; b=eFZRI5mb03ttAuoMgY5lTS8eyOrhpt7QdpWI7wJdg01LbELO2TYlN8Fx7XGcW1ndPaonBVH+TNhejNSPWqPVldnRLTLXndQ8vGwCWMKv3zGeXszLhGF0lUKhWjHV0/H6wim9PhV71eW4lFw+bzii8BcF4ccneCjPkCmWxSEoGEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvTHNjvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvTHNjvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E34C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751756393;
	bh=HQfCIGlUTzb477FOYJuddcUgIgvLg/Yho+j4rbtOH18=;
	h=To:Subject:From:Date:From;
	b=XvTHNjvskQuV/oNmc1h8cjGymSztSTPwebg1sD7L1bDY9nWKOXYWiJWeHOAFjpDRJ
	 hUYKJn/9v2zakK6UGKn2QpKSqrTSdVl/dTXxZZWW4xSn7x5w26e0SaUlJ0VCszq9xY
	 RZEykZ6tDkxHE42lfME+dNwrkizhvkqb/1kkyv9b6HjTSXUxuDAsKa1jPelItGPk6H
	 5/NLSuDyB7cZo27FUclZ0nOqUEinB3OQQuBXk2wUm0vK293z1bbB0TjHRCXWUrjmFv
	 6uz7c8qjrOcobJj3j9Y7OFuZrAxQvgr5keK8YkK5wbga6CclhhKwqe7LgwLazsvMkS
	 IkmBIB+AIuN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A4DC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175639357.16534.17540238592229755951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df024944478fa9affd99c63c7c644ca079e26330f3b27d22bac2fe6e8759b18
Date: Sat, 05 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751756393
