Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CE4223DCE
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784371714; cv=none; b=D97OkpRPd7RLfL9AVpY82zi0ZCQ04iMECCyxcsmtRYbuAziE8rAj3tFCnq6BkJ4LdQrgZV5UQFfo4QjUH7kyfwPURsSEe9ZCHbdKNp/vl4zUbqI8gDJjjuIrA18b+RpoxG4pa8jFNZxNGQKnuUfEPE6+aXrsg7rSwpiRUnyg2sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784371714; c=relaxed/simple;
	bh=FAv10lOS/R86wOpuocl5B4iAHAH1Alr18hXssKqJu34=;
	h=To:Subject:From:Message-Id:Date; b=ZVfJJxj8Ohhvait2kYYu83f5rslTJZcpJmF6OvxiOFQLe0feDOa2kRASazdiB3EN8ROT0f+N+0xRFTC0WzHQPGIf0VTGy1Z+xOSK+oajgyw4ipAKRJusvNEEuTjE9hZNnSYbFMdVNCbdfyCIZcakmiYhhXOpx8nETMWjQtf/Hd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/+zKkLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/+zKkLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B5AC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784371713;
	bh=FAv10lOS/R86wOpuocl5B4iAHAH1Alr18hXssKqJu34=;
	h=To:Subject:From:Date:From;
	b=T/+zKkLBsuKbs/jYEgYUfS6DTI8jRdA3cpv1bnwQFDeDSm5h5oJzA4bqzQ0KoLHY9
	 k314/hJ5T09dTtj4cPAoaTLJsrQWm8IvNzWlzgMCVPylvR858OYHCBHQ37XEzWIUS4
	 CmqtI3jc+zitI71zyv9N6OR3VQJrXJAFG4JIgV68LTUNP7LuEgz7q6AM8NvjE/e8mt
	 Uv+ta/BB9HdQY7IClnWvMdcTfoHytu+zicJsOoMrNdqVJ4m4Z98hJGEnSeS2ghq5QG
	 MJdQWTBiQk9N4pl+kJ7+TXSD8NT5PT1e/qICh3iKkKdOZB4EX48iscco3px4x25j+e
	 KwRrtp7mPp42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AD2C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437171371.29672.1859649738429783879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cef1117711a4001270b946c88b8475cf6ad4fc697c89f81e5d1042424653651
Date: Sat, 18 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784371713
