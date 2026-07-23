Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02329994B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784835034; cv=none; b=RJSRyyQpTelCysuqan9aGwk3ByoATjlLmsVzAH1pbYS0CQpaKerdPH+vM0085tCBE5avGfc/kLQyx4JH3Mns9b7U3/1DF0a5WikB0b4CwBaUK/zV3EWFwuBpfOktsmcLR3AZroCSiUqu/aa16rJNmZ1JWA3WibufXIpyFfBqEIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784835034; c=relaxed/simple;
	bh=tJJ4WkRMyLT7WLijyVkU3IdDP1MnHt0DCwCmLE3qTlk=;
	h=To:Subject:From:Message-Id:Date; b=iaWlJ6Rbr6roSkps67zsBHB6WakMOj8B42hPp0qF6etjlGxZfo5KFR0i9nxsLP6JVswgTbUfmZom67vqu4+8n0JRal19CCH9Dqdf244nk4Buqt5pgoIpvT5VtjczgN9JYDS0DFwoetjgU8KIgeO/RUFi1JkYRrZL35JNeqELMi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw0TQk7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw0TQk7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF877C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784835033;
	bh=tJJ4WkRMyLT7WLijyVkU3IdDP1MnHt0DCwCmLE3qTlk=;
	h=To:Subject:From:Date:From;
	b=cw0TQk7rTNu+gt0XXia+cojhk0Yl9gl7b6FqSCqceEHwsdoi6b+4h6SsqfDHMz1eJ
	 SWhxyCyJixGbdE1JbzvTYGNjuUUSV1bo/UMcNQkkuS0491hmp7F2t0uKWm5ZD0RREB
	 T4XQQuik/kBS42KId92e6xxAKCX9iyOqcQm6qOF5sP8Hh705iQ39iYEb+zTEOqYolg
	 4gvvOvm3Oh0erocxJhED4aNb4mzJN+DF2ylpvEKUBN2i6ZjmnDvQaEE21e+ULu3X7f
	 VAcRu51udko0AWHRk2ay8T9PxtOo8bNcBjgD5N5Yfd5iOp54RRb1N8w5ftxS+DYcvT
	 pO8C69DMlu6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E6C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483503369.2600.1825486517817434562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88c4408b03e74332fd80edf21ab3cee41503f4b0e7e7d33c7fb0b7b97938db8
Date: Thu, 23 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784835033
