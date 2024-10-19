Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124BC17FD
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729345554; cv=none; b=a5HNwhWvbLyzENc4toQilgxOwSuJjaqh8W3AkUeUkGJ4dCIGCU1gziLLq34Fkh8haClalABJkkF1mAdAoij+v8d/0VwS/VdQXinGf3vIVY5uJOEHubGZrF7iN8JqAKs4jMm4CnMmbl0t2dJZ3ax5d0kpacgTP1VOUW7fvyLIEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729345554; c=relaxed/simple;
	bh=wzbI8rCzGjbzheqFCNwQhieXnAfDbdjWWp5+ajYvJwA=;
	h=To:Subject:From:Message-Id:Date; b=DmIRinrT1Lh7I85MgNsGq0V0/nzbEpn58v3G8LNGCvMqRTb1qz8wb0heClviFvOqf3eqP8eJuj8Tv1s2KW5xkggR3jQkgU+eMc1jbBiekSH7L7jfyx1OsHuLCaSPKnRBKOnwlkh7qevv52YCOX4w186fBiP3doDVgk1W3yXH8qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Jz1KNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+Jz1KNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69FC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729345553;
	bh=wzbI8rCzGjbzheqFCNwQhieXnAfDbdjWWp5+ajYvJwA=;
	h=To:Subject:From:Date:From;
	b=N+Jz1KNq4Ihu83Xgy/X2V+JlsknS24wDKtVYIyYituwqFSWsMHgdQc6FazU1EMh6d
	 hBbMUz+S8NVeKV53CcThR3jaMKeWtiqppVbhsuK2pNjAfNK8jPo1m7Yw3nO6wvNOXx
	 i9cL63cdLBIEVCIK/ILOhFm2EJlzosIw/MtMgCma22f1FZxbH5qGolEpaqUfjieg70
	 64v3tPTI14BBVbaPTFArk3tdBC4GhuNVgEWSG3aDfkhYYq8hJzbzjAa9y7ZegwXv0Q
	 jL3kUoSNEpB5U1Y8xek33/ueLlJdhWxfbx10wdIAfyY0pfh6PZsA/XlPtT3yidgQjo
	 5H9ZlIGzjH8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F23D3C911
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934555357.25981.7717357485611903712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29c83b23be95f59657e7921efd253655052a7056d7eba6f9ae710ef769951d7
Date: Sat, 19 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729345553
