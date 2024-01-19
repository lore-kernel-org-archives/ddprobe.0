Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAA480D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705630697; cv=none; b=kJia0KQ1qVq2KRfZmScDuWlGUeY6mr7bRMninqNHIt9hyn1JX5IaTpic0tsSW6mGqdgnhI4gcU3aEdmvkji8BQ/ML7V1oxwTJkBZ7iPdfURIbh4oQaFMP0MFvKTTIfOOcTnipbWZz5pQBbl1Cvsg71+uVFTK/Up+CPAYEH90PoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705630697; c=relaxed/simple;
	bh=/R809NpmOyVTPTzA1uYselwn0bB5Qx+FI9CILkemmQU=;
	h=To:Subject:From:Message-Id:Date; b=m7u0b92vySbiyfvsx4COuxm8oX/PvvV7GGRi1YSMAzfC4ogfzw8ozVuGgjxbD96Q8cslBPiJ8q4Eev7DfdrEHDD0WSUIoXETJig+R8JQ+QUB7Fr/J5j5Az8aRaXCGCvh/h1wafi5z+0t7xOh2WaIEawHyqsB3euE0IIC76eI9jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7qAlajv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7qAlajv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780B6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705630696;
	bh=/R809NpmOyVTPTzA1uYselwn0bB5Qx+FI9CILkemmQU=;
	h=To:Subject:From:Date:From;
	b=o7qAlajvk/yrmVjBpQPt+CQYzT/j//pBrwB7Y2vNU7xq1wqSNZYMETfc0Wc26SmKd
	 /hVt+yPBeLFcUv6sGKf+nG2UBsIvOwREM+vJ4vSvW82v79DzGXjaddAOKbl4VRXWvf
	 qdkjlaKUyv5dZTy1bCC/9XGqKHt3hZGE6Zo2fOglEJ1Av/mIsSpj2+8FERPeQDvo+m
	 dqYLFKQLN85MLuAB+zs30a1ymta7lQyLsovSxsNK1HYooWd9kZOomn3rpxdzyqWiAF
	 IXpccsyE2UIfj2+aujeOaEfV0OLXKCCF/h1Ob5EHRidk+jr986peVDnPfiBFVnh7K6
	 D96a7BFIesRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCF9C47422
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170563069636.17442.13350695202327823903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48eb69809538499d446fe644fd1326b1724305489d7104c40245efc4b73fe52
Date: Fri, 19 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705630696
