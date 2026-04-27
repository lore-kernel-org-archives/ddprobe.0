Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C49336CDF8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777262854; cv=none; b=kW/qVyESPbzJGxk1xABe83K1qoigHDGj5wwnNMO6lWxo6LetgE8ACgNDS9WBrbPMG7QFi+qae0ZIHBeFnM19tWlkO3I/1Jb0LYyR3z6hvmk3Bbf9JnqjC7r90BQugtJyvVao1SxnHLqfpzwxEn4LtlQbtCMVrvcJAwoW1L2c/Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777262854; c=relaxed/simple;
	bh=tDySzh4V4UOPD53e4PQD110EzjlvzT5so7ZWGvugOQs=;
	h=To:Subject:From:Message-Id:Date; b=mipXL3/4yk9uMFBKPfjoWzVKTz7qDm9oNT5iv3yEsOy1Mm4kMviEf6AcYMa5Ukg3t4VsXIFje5ZRhIzNppx7Z67SrzCIj2SypniXFdzgWLbRHI9rUtJIQfJ/6KjeYVBb+X1rTK2m4Swkoojm9UTxPv8/tWSrZzt4MeK/LYsHuEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2OqWgd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2OqWgd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D51C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777262853;
	bh=tDySzh4V4UOPD53e4PQD110EzjlvzT5so7ZWGvugOQs=;
	h=To:Subject:From:Date:From;
	b=b2OqWgd4+G5cBeEXWqzYNAiXh0xe9aszZIzw20TJaPQYVF8o8dDmryUlkRghbPGUA
	 u64lX8+yqLmL3gyfpB1n2Hfeh7wzfZamgiPlppuavGiyxug42G2nEVvSAxtlr8hF0b
	 YV8s3AfjscqXfkRrBmH4U73lzuno89KsR0aMakoqyNBIll68TWjpbZ7YXLKI0zbtR9
	 Ux5XE/wOvYP0UlwB8NnINLzC0O3iJCP1DvAuPT1K8fyVdelLXTlAaTIOqlvlfLlXqb
	 x2cUdx029C0Os7YucvK7RUeFJOT0AYSpByMWdfclDt4UcMR9z+QiXxra1bn1mgAULm
	 WIEnTXwHVkVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD05FFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726285368.6380.17985833704709975486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa4f1d984a77589d7e978f230819d44fae2ad13a0e6620712d020c730941797
Date: Mon, 27 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777262853
