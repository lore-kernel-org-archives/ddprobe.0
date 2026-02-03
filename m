Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39858316193
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770146634; cv=none; b=sOygef0f8h9XrLygNN/tAmX3WIqTllHdJMxmZZ80CsFTDpYWiHCxKO8cFHF63iu9sxe2pWeIvVkQgFVNd9dwKWOmtuq2YslzD7y9UEiH9lAqmdKbhlwlVjQQzmGD3t/hMQ8saD+NQp6f9o8MWrE0NiykV3/Jyyb2gbAgh3YwQqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770146634; c=relaxed/simple;
	bh=n00F0KI/I3hsBu60ZoYBgIXGphwCFw3j0lCNfC4oxEw=;
	h=To:Subject:From:Message-Id:Date; b=s0Gy4+Zi0gcyguRJofyWXDyjLs+8mrEhyo0awpbWuU1rN7XNWu/S4vU1KAUoXZsgHPY1AhWACR0dZgdwsYQy+K2zUT9xluLcYGoN4Fnyt9VsyKxNI+L12KOWrdkRM65249JH5FZTy6fTvpl433Z7SiHKToJ2bFPp2YvL1IzIJ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkMUnVK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkMUnVK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5EAC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770146633;
	bh=n00F0KI/I3hsBu60ZoYBgIXGphwCFw3j0lCNfC4oxEw=;
	h=To:Subject:From:Date:From;
	b=LkMUnVK5Y25uNzf8qaoM79sHuMq6V1T6y5HytJQdy5P9VEflyc2QZt/Px1jfwA9d8
	 btKjPHQOyD81rnFLlahAq1rEcwci9hDRICZnHHvPpFxFFtQnET+BC6k4H3ZOOdkf0c
	 vLJN7cOovQQrtZzYKZD6D+bqHDboqghX+HmIylli9KY6zeDY4vN++pWwoonFeyw6ot
	 T+S1p5g2wRD/I56Tq/rIQdLOF3XmU0kV4ZYqGqzlNuYvDtbV+C/Obc1Zd/OuQfWUWl
	 XmEyoNWeqJNIVIlToguAH7vpzliBuE22meIX4oXxarm9tND+mmU1who0kankypAGql
	 lXVPhOQ5A3LbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBDE87859
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014663375.24423.18423601143990780791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60da1a3084b17c061aca5b0c3c082a410f2a8d96e2100db82ec5e6913a91cf2a
Date: Tue, 03 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770146633
