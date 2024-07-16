Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464D512B72
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721144723; cv=none; b=MVxfKEmWkqsWSpo1N9aLs9mcWqrwwboUZKsJjOtrQYV0xJWh0aSckhcQ7cqjbE9pKv4rLmWyalwQTpAwnBefKM2ZypH7PJJNJ7A5a+BfkwNUlBjkMnOZPgZLT3Xug6tIW9AQRSa8H4lfObmbBd931kqNV9N847EkrjG4NfOVlqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721144723; c=relaxed/simple;
	bh=uvdrjdHZKbfIcL7pwJHo8CqugDeyZ2f3c2X1Q/VWEnA=;
	h=To:Subject:From:Message-Id:Date; b=u3k0WUF7JyCOPiLR71qA4nnlDyRROzZ+33jKASHLsAxQLHX+O8jUIA8hmVUn34KKfM6NnJV1joUIuFkxoKH58DdxCsYSWl+q65eIc8hZ8DV0DGBBU8I3zbvaIP1lJ+cdwVxnoa1rSpszDXbbfhi7MTIRK+ZjP4JJ+cDJ2DFj1xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLgGZeNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLgGZeNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D299FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721144722;
	bh=uvdrjdHZKbfIcL7pwJHo8CqugDeyZ2f3c2X1Q/VWEnA=;
	h=To:Subject:From:Date:From;
	b=YLgGZeNuqHHfwnORCJKBxtglxi3WlYlZd8mD2KBHBJ53xdanBWCBMuQnBQvW4lSbo
	 LCCM3R4KqLjhPGuH4GgTxYLcX4vHbSK+BIMXfOUJ7cZfy+rZgN6bTV4HJ4iL1QKKEN
	 ueFLa25nVziikbWLRTxzADIowvabwbxRFol462EKodwiw9dDVvr7FoSDPCbBAtSKi8
	 qjZb0sPKhy5+USoMVBS1zB7gftPpTZOzEzI/5gisMMKYT9ik2yo8BCxsv9C4Vj1NNj
	 dVXplvlUd8i/yxOyuf2WUhxrTLbFmMJcQ97RxWvEVRknuJmRSjmxaUSgPlOp3qV8Ie
	 S3FU+Atx9NFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE9FC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114472277.2064.5417972301861928020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9d331b2dbd10f8cb0004d4f0fd827aabec4f33f18dfad2e786dcb836f198ae
Date: Tue, 16 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721144722
