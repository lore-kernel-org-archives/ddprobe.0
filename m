Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB9B214812
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754948394; cv=none; b=sNHe9Ctpm1kNzphr5X5dsU0oqW7J9IAjacpRTNtXXRgBf1YFh43mLoWPuiXfeF86tFkgleyXoPo9PkER3yOFneCFZrgtEBYOQKTaU0Rog3TmoMhKIZd1nc95o5uQsra0QevpYoqy1MeP0eoiB7k3Y73UJ16oqQqeIvc6gD+dqUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754948394; c=relaxed/simple;
	bh=HxRe1FZPU0CuyaDorl6X33untrSGZqWd8QI3r8eK40g=;
	h=To:Subject:From:Message-Id:Date; b=ViU5EQZ6Bq4/oSHPwrwhDy9JfIA/U2uNgPdBH25qYDQQBtj0IQvquOa34JrOd/Fsm0bDyOU2PbErhExkhxAgXNDz8FH+KGVhcs9zufLPVK7euPPw+AzswYdoKrW4GVySY+8/s4Q9qsxMMFs6cxdknQanbplaElL+iWfH/PcyBXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPNkcODH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPNkcODH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEC4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754948393;
	bh=HxRe1FZPU0CuyaDorl6X33untrSGZqWd8QI3r8eK40g=;
	h=To:Subject:From:Date:From;
	b=sPNkcODHz1fqqWIVc/kISTQNoEIZZTFQNzkhqoDV8WVc+RLU63b62CROBNhmkC+z/
	 REiINu1nEa63iMV3zMc+ULfa729AfOW5iafgF0+wyqt7wGOSkbNG3aBUOh1sfRaTSj
	 9QSM2gM3cO67wQILXlm1GKto3rAfM86tmLIwvTd5RxBKwhWYHpzwrVVccsUXqn8XtE
	 u3XSGgqiDbfaXXb4o0eVnd1B3823+9aTJ1svDkbvLppocJtRKd/9osm0aYExLA0qff
	 8bGNGIcr9r5UKjWp7v6fOSotZi2XNQWRSwjlew4mu3c4NLqno6jKs8qPSxLJpQDQYA
	 hwEMNUCQAKz8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40ACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494839357.11908.15147040232877907387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282e6c9c1c85d9bab34443ad37b701e0f234e96733d3cae0106d569ea0c5fd30
Date: Mon, 11 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754948393
