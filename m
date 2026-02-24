Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176201F30A9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771922694; cv=none; b=K98yRXaTkOcXfq4A5xZklFfmro1rE8M3UFbjeASjcauE/399OauqXmZYZayDtBNbztfEiF1fVYLc8qNkuSUvxrRCvQApAybXjDnb+Z0eCmJ28KOAy+hJ/NSCoFvGjINy8C+AJREN3AOS9qZn0hhkhVPglDavxIcmBwz3nkUom8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771922694; c=relaxed/simple;
	bh=PjoYbQmxqPJXEkD5bUXeBJ80ia0MuOxLXkUtjFgVRrk=;
	h=To:Subject:From:Message-Id:Date; b=nxays13luPTYeWLwuDArhwAt4k9/UnYFLzmK1UuqNv98B2D4cpTbCcWRkWHc4IhXqJ1ol9aHGgvhzPE+1V2vaWiY8yPbE4Gcvlos7jN8RcjjC2Lff3Asewgdfi2CBRmRU8S4TprhrnKpMkWR4/ejI7gqj04tqUDHZcsE3V9ukUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of524cWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of524cWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB303C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771922693;
	bh=PjoYbQmxqPJXEkD5bUXeBJ80ia0MuOxLXkUtjFgVRrk=;
	h=To:Subject:From:Date:From;
	b=Of524cWaswlVXKiJiAsWYpMoNblzLhdAnu1W6bFBBKm8sRhzBtzjTQ2oj6gSS5vQT
	 bWaV5XapfVHuI7HRCv7HDOy+0mLI7oSsAVvS14ZgK74wSk9/G1qVoHTmy3kjq5KscH
	 l4eoOMy12ZbTrT7plcuTRwijNq/1gLo/wAsBy1+kJdjUHLe5zUd9UfaiDzJktqA0dk
	 V0ZGulUQOdX99mN4zCWkxWkN+wrEF4S7hXqQML4oMIaJ2kLLi6fcLQzRtfSgrCpI71
	 /rilLkd6V/MU2nJQ97a0UMquKg/52nDD12WUWu1uOqvoxdVzGrl0rULl/2yprxZ0cS
	 ywJMgISsMGyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6EEFB810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192269360.23117.14131531874938967084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3ba24c8ff2d07ab60a266da0cdad096ed2fe4a175535c29ce3b40213b2d20c
Date: Tue, 24 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771922693
