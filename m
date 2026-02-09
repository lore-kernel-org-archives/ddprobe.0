Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDC92FB97A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770626034; cv=none; b=WLX4h3uubYHOBedDDu6GJpgU5qoLNc+dljjiry3e93eyM8eBLqFH00v8EPxe0BPkjlpFflRWLWHi/clYxV4qujOog+E6oWfoPol4EudXDoQa6YpJ1A2sR1PliYtYRcYz4P4K+KjxLYS8VqVHRtYkwQf5xkj09ZQ5aosF0LW+PiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770626034; c=relaxed/simple;
	bh=1AoRWMqLjrQ3VBwdUGk8AVvpZTEiP7VYCa4YCBN1MMI=;
	h=To:Subject:From:Message-Id:Date; b=OdMPU23Ju9nGrYlIUOw10Lc8tI1qQG2evk/Ax+mjLXyGub8ZBYJhnM+v7InHjdoKn4icmbLxZMbxpJtV6DVPTtzq62uS6VZp+asf4J9c14HldUxggt7n6jqfYT2gDXS06cM034Uz+kRnIl/uN1x7NZbPaLVxq8bWZCFEmeQN/sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaonD9Lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaonD9Lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0CCC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770626033;
	bh=1AoRWMqLjrQ3VBwdUGk8AVvpZTEiP7VYCa4YCBN1MMI=;
	h=To:Subject:From:Date:From;
	b=GaonD9LrdwCAER5Oqjqq+xRhva8yN9mV2/3h4IZs6y7Q9XJHg8jIo8a4V0Re2EQ4W
	 76U96B8ULMVLa9gVoDchCrx4SL3m0OJv+1RS0QbGLo9YQQhDH9qGPK7REDFZQluS53
	 Mg8Vw8nToP7dv2Sk3W+t176mof0scsTj029c8nmTUAnPzTO1Js/4Rp2ufJ2jydmRdk
	 UL3jlmzMwTy+kE6KCKugYbbqUkJ1KBzxhwJ4NOwkraQwEaA46UKi1IMduj+qPLalNv
	 BpdwrCdeQ/C2ZLh3JQTAHZ8CkNAWZsS7gEBZVz4t0UNTOsfdVcjzGUFaIP1OkPcQ2D
	 lPcDx5phb6lMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E8E78D44
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062603360.26493.11150650917926567583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2346de29ccefeae6961597e0274799ff7881df75f26feb2a55a568c5e7743f
Date: Mon, 09 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770626033
