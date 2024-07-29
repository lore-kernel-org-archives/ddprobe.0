Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E91E49E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722229554; cv=none; b=eg4H0KakA6dI79wsv7TPd6bzOEnOW0d6We9nBkk+fPcsVDBiDoZL7p++O/Nw4ojeV1WwsV74xesysy3fTx5ft2JDk9bJBMJrLhAjKaoRbPXPuMBZhgPuXez4/5aXm4ejWc0ad5X9D/EfZtnr7/n2L6MvdLnUHlhwV1kTFG9e/As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722229554; c=relaxed/simple;
	bh=FbSep1UfuueUkP6xfjp/lGTUIxUvwOxUZL0fba0vxHA=;
	h=To:Subject:From:Message-Id:Date; b=h7AVhTm7AGNdAlYwEFNyFiQa+c+5kibP8G4DQmjNncOO5q0UaqelgRYNKDfmo+daR3qW/TY2BC7ry/0PxdvtkWlQdwC6mP7VKlCLAA12FXaDhH1fvonUHxJkceH+vyAKiUrghvkI9b3MKjDDDEluaVedE7Qh1fJh2T9jGfZ6msM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHuuBYFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHuuBYFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA756C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722229553;
	bh=FbSep1UfuueUkP6xfjp/lGTUIxUvwOxUZL0fba0vxHA=;
	h=To:Subject:From:Date:From;
	b=pHuuBYFTf3v6a7atojfW60RDAcxHQ8B5jX1GiGV4ufdds0hEQ0qQFoj/X5S8zny6r
	 58VoD5kGeqxGLJ3DyDO6Wfrwi5fwf3GvUC/n+iAYwOtnsGQX70H+rIFDqhOIMmjUUW
	 J94Pu3KG8bCOM7GrZDKs4r8XhJBYc5Kzq6LehcZPT4V8X8iPNgE/qS/bKweDrimIyW
	 kMGiU+f99e7ZKjDiApcUe8GITke6k+uRWKBQsH1hEhPMUvm8HSU1yPqz0oJyRhN6bq
	 q0qGhNIgcKlxgt/yhQPrxI1A9v96gF5lXHU/s8W9aMbMA4o7Lq4k13slRxjH+i5HTy
	 8f0Eb6mum6B9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA7C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222955358.3239.17078316604553647140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7043741e6bd78170fac6ab83d1927eabf1d940d3aa3d9148bc3cdd7a8c056e3a
Date: Mon, 29 Jul 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722229553
