Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326BC1FCCF8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745715594; cv=none; b=jYhDdQmj3wiFr6QamHy8sOru+qoQZt6jbGPoE3/BDA9wE/+MVFNPX55dSa88FcLsICWmPgewtekwm9Hm6f76AveOpvODmU4SdDJmEJFiUZW6oolHTNf8GWuDg/9ffBH5kxkQWC/gATmc9hpzaIG1TJA5aSgj5yvJaQSs2UMeRuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745715594; c=relaxed/simple;
	bh=mz9sy71OMd3H0tombwGqdrQYyiXNHshpS+tndgQ96Pw=;
	h=To:Subject:From:Message-Id:Date; b=YMvbuIw30vb5i7pqm9YLitFOqORfPAOI6IdsnMHEq4AzL1lkH5tnf19hxHFPrF9Xn0+zkkOT8MDeY6oKLZBnCURBg9vwK9pGTbYzEFGcrOYP0Zq0/dUpuetsRv/Gcm86F0ixsTbHU9FplV2AY9ZArZVtQNDVrES/VVpdio3oyEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr9bxUxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr9bxUxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4596C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745715593;
	bh=mz9sy71OMd3H0tombwGqdrQYyiXNHshpS+tndgQ96Pw=;
	h=To:Subject:From:Date:From;
	b=rr9bxUxhXft1ccGJ6/ZbfVbCgioqCSfMCv4yhc2mJKsHr9OmCatme5RtXQ6l3H24G
	 cwZ3vMKN2gNSSHVnvQx++BQ51rmS0DuEt0aDXqX96QPmH3WrpwaXn3YkmsVzpyXEBN
	 B/Jnbf4x+La7imnwZCkoak/t0aABXKN95+l1jdlNhKzw1VwkbkADK1UY+wCNaFAleD
	 LaMNcZVc5vJFvvR+t+HLSi1R+3kJk77/dA8vhRouHyiNAlaP+RijXYGTU4c4arG1CG
	 kHZAQcXGOWakd+ekn0aqx3fqyxzRaXEPvzGEHTwEPJdo6D7YuhnvKAI6bORiEdL4oG
	 OlnIwa55xLyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91937C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571559357.12808.6498634303584656587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c7ae018c8d07034c9c72fc54d36208980d718623da5a7826c5a6033e762ab1
Date: Sun, 27 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745715593
