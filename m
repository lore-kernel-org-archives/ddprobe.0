Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A68A2D739C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786478434; cv=none; b=ZQBWIvkIJkT367YyxX9GBWY8fF6IKRhYaw0uN9xGAsFtJx2Qmv9/eh9Tc+aVLhpNjYU+qRhrKuUUetkc2hsw+4MwoH61+9h9XMcYwfiQjGx0jbgjDQXUtHuZSMGmSEK4vgiStSNG1MarqohJeZVOjrRjGtcxQdXlJCPG3kNC+Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786478434; c=relaxed/simple;
	bh=pQOD639vAAsDnqQSK6YvwRdcCoXhqdMcrelEjqlPoRs=;
	h=To:Subject:From:Message-Id:Date; b=mLkk1dkXZQoeXmBafSgO6eqKr2p7EXjwsSiywh4EX9gqi0331xnO2OllVENTX7yVgXBqjJtSIlMwFgsbOhOUWQ19ULPvNHow9+ZDxtVOln1kKapEoQ2wwSH/7cn1XRXPiKyj04jRz2NFqZaX1gbN/vUhnxTR2LU9W2M6sV9y6K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsTlO+Rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsTlO+Rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786478433;
	bh=pQOD639vAAsDnqQSK6YvwRdcCoXhqdMcrelEjqlPoRs=;
	h=To:Subject:From:Date:From;
	b=gsTlO+RrpegS3pUadKo5gW9mO8m07hQkEeBPp5U4pL7qoov6eJKNOxxGpBCkyjw8Z
	 sJVlkmS9oAlfHWRo21EJqfl6Z1LZnpqrVfQWR+88BDVsVTH3fljoxkP1bfjFdTAcbb
	 MUNv388pVFoBvrjGhAg6IsAJgAMT4VYA3wensqJLnSLZtUzwO2BU0WS9Cd0ZeHk4/3
	 bddrHU0fT1vNYwaXOuqJCZyIUte0kz8RfkxjrANg9OPHVL4QTAIWqO7CXjBNm8RXQH
	 MaGFoALyTavZR6nBGwcltUT5ZlKz0p612Xs1pIK/iTZkNjPpiy8cdHTwvUj/XfpLU9
	 KQc/Ckflyh1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647843368.24567.5675775842518699423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827c28061c39241d88b5649e37cf17d2c8bc5aa98c7040fd6365a462f068f1ee
Date: Tue, 11 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786478433
