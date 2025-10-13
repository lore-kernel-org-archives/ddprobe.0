Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F02BB1D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760379594; cv=none; b=B+02D4QFxgvo3X55ZcpQQrRleydTBy6qaEueQPIXmFgEHkdd8YKSmEy0lbQYLoWf5YN3VjbPPGjWYVQzpbtl1h4PTnmR1NC7gjZGDivEvAuyjMZu/ev8kwbKsK7zEX9+cgGuimD7RzTZ+R4/coxy+XDa0Cw6k1U3NX1OTk2Y8Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760379594; c=relaxed/simple;
	bh=lbMMy3XVjKgjCdmuL8wexwH1aqYsqUM7jt6Sl8QXwfE=;
	h=To:Subject:From:Message-Id:Date; b=BU4UWLugzlAkpRC8aQ5liQybIi4hlCNch5ATXUJG3rTuEvhqabx5X8JfVgnmwccfuzaBBJmJmtETHgYdSSFMdnJf9Dv7XUThlsL4xf0HrM1JNctRuZaIzozca6jTAoitlEG3cJRrPgkndEKUsQZp8nQODorLLO72CXSrAGlkMzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9ToJ0Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9ToJ0Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760379593;
	bh=lbMMy3XVjKgjCdmuL8wexwH1aqYsqUM7jt6Sl8QXwfE=;
	h=To:Subject:From:Date:From;
	b=p9ToJ0Nx3ZTz4aBQcWRQuKcfnKT0fVEbpcW6S6md2wCGC7QK/ZUKpPU3gCftuhNKZ
	 2DeEoYd4ygIVg1sD4qTZ2/VDa8Ex9qTPRLhV3uWyavj0efgqeeft5163cdHJMocysX
	 GHPc/ZHzoUfFxAuMUbIYZyW+2R8Eq/i90XWGh0R1E6ijHnuZNSbgNw3Taik/u+e45I
	 4isbh5eYOxtu4eG1jrz9N24rfOrEv2L3ZiH1eSF1gOn0YIv5x8+VM86H1vhXjzZx5n
	 HE+v4FaWcO4afhLIE3yXiRab3t9v0OpocLspGMzStCSmMlclfrnC84EO7cq4DN1sBh
	 85G2ENqdJGsEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C8CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037959358.16002.8699175418728047542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5b4332418552213a7662115bff289bdefd7627ae8621c681521dc1f6c1cb12
Date: Mon, 13 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760379593
