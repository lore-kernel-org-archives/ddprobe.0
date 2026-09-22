Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C94B25B0AA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790046034; cv=none; b=h4iNDgB2Yjso+4Sa7JNTIa1eZ0zPQ0+nhErv17FHhSSqOe4UW/H2yMVXvyV63sqBlh38VEYqhXqmQD3AO1euN7zNRYbn34l31Yi0dq+kIZVjes24dZKjNgBp93A+2pOtEvoa1MYo6C8YS5++jUNxaBccrCdW8ETU4Vx2XNCGWoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790046034; c=relaxed/simple;
	bh=riiX1Al4XkNO0Bm4Z/HDcwWAw+rzZnUQp++2jxwsNsY=;
	h=To:Subject:From:Message-Id:Date; b=g7wwEC2LMObQPNjKD039M4pALTenO3zCv/EgDd4rQE4bDa+Csxb1nmjRXphn39ABtSC+Ii9NbuQw5OdvLpGG30Zafje7AdMuCNlJUQzSqmiWniTaYWqGizu84F9ZnYdB6fu3ZkNyowPyMBnDX5yK5NQxkrmEEdf1dBt2hFvQu4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn9WSJih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn9WSJih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CBDC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790046033;
	bh=riiX1Al4XkNO0Bm4Z/HDcwWAw+rzZnUQp++2jxwsNsY=;
	h=To:Subject:From:Date:From;
	b=Cn9WSJihOEJOlt5jL8cVKcxQ6FxsxgKQNEYNM4VgiCgiRNdivo+qiA0TRm3XMyDse
	 x84jOLyYg/tr1jV/3RnYfib2w9/CdkutcN5s5ENojurn6xj4SodLb4UOHzyRf/mfbT
	 cZKgWaJE/7iMXnc3iq4DTX+IU3NWgDnF8VFJCRAgdcdoIDsvWb4cb9YAxUDZuEwTgv
	 hqL/ur4dSke7KGUehFrxYW4h9vxvL3ZCd/lrEkgkTYMixg1mk68o134JXFvxK8qln4
	 z0WuA9bz356EpbpJ2S+ElytQ+R++bwd+Hxk1W889s0nWA2gvTrn+lT6q9RuErrCGM2
	 4sox5t6U8PzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81DC982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004603368.15177.2142039773435686345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6978629e715115937a43fd78ef87c60f38a27aa3eebb71de873018db9f5c6af
Date: Tue, 22 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790046033
