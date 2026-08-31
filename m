Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF83C108C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788165034; cv=none; b=LYZE2JQ5U54hxHclOXJk3Awp9/nRJN+aWlDqMQA32DVOzU+hhLZzzB6LSAakG8cwIMkMNHfC7Y8H86XxUHIKM1NBIx+iE8bodPezx7UTvCM8Gsq2I4IN0GPzLpEFD437Iios5vpBwFfc29dzsRmaTd7KWr4xmdXnYtf+ClWDyRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788165034; c=relaxed/simple;
	bh=G4txsu4pFhjg3jdCts0OdnTIpkPvkQQpTQ2mBgqW5rA=;
	h=To:Subject:From:Message-Id:Date; b=AX+3Wfvhj8E7gRyaYAB3Y9FzEpiV/mShWDXfOx+N0GMW6gtbWuhDdsEfq7PlZh+0a3LU0pK1uUCe6Fcs4rGMo3X6fM/pbcIk4nXqq/qXCTTAWpcMOT61nnebBxhYYCeC2jP2CKRK4vIM+kfQjbULGrHuWuKf4ORldT9oQ+LKDjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riu8tJlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riu8tJlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19ECC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788165033;
	bh=G4txsu4pFhjg3jdCts0OdnTIpkPvkQQpTQ2mBgqW5rA=;
	h=To:Subject:From:Date:From;
	b=riu8tJlFOH0HFxakcdZHPehZ2fK1C9qwWQwt0aCcbVwPbKhMz3/cH5A8+38NtOikB
	 RiBize9wc0EgBsOIdi9ruj1clFHb9+1lVydOsmk0dFQG1imbC9C5elFEZHyUo3KAxS
	 6X+JX0+siYb6L5nsqIc8HzNuDgLr28KRDTjAN4RB983Gazhq2Wczx3AY9ztfmEes9j
	 1NjEExM2rvdM9FlfUVLwtLF0g+bgAYXRvaPkDvkwA1NJ8Vc+Sk+pqk0it5xMlYf7Dc
	 u3+SOdU8r130oz0sBpns2Uq6hsauI1FPNh+ig/xuhbnZT6+xBDRQe8gZPxZp1eJ5Eu
	 UC1iR5FfpaWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE653C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816503370.30156.2375950567224428133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9428e6b94fd09c30f53a4c477984863ffabc1e8d0885dde8ab57d2d39497d39e
Date: Mon, 31 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788165033
