Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420EB3C10A0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783075714; cv=none; b=RW7m3zLVrSvxewxeqGsaCktW2Ramv3SUlOpJfkrRViN0A0wEDwzbk4qR4KmOEv9rXoqqpOsrzZJsEzUz2u64iWwmfCk1OpMAdPxzpdlorTYKVkajkx0o0PzL5rjg9Us4dkOPgihyuohKHfaFx+NCeKzC9oQphiH+eIS/cwDyWqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783075714; c=relaxed/simple;
	bh=QWm1Kn/boAANNvT7S2j9PluxUKVgNxTIlaIzkOVpKco=;
	h=To:Subject:From:Message-Id:Date; b=EJBx3TlEDV6UcImT+oLCqAgfdcgFZQe4MtgXLk/ne6d0AN/9TP9OHXdw6e2cM7sUamGYhEudNhlZnFxNrHWjW1rr9d6jSYtCcskABf6spFptGZEaat4gsrr61gkaRrwymW1X63lLYaVTQwGmzOpOrrRb37Fa1AEp+uxTHj+2eyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4eYSE6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4eYSE6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3B4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783075713;
	bh=QWm1Kn/boAANNvT7S2j9PluxUKVgNxTIlaIzkOVpKco=;
	h=To:Subject:From:Date:From;
	b=C4eYSE6EIJ3nnICO+e0Bh0eCIDWr4HAAYW5VlLXfJ/kIhXDEMUH/i0uRj7lw2Goqm
	 KxCurzAAx7N9EVMobNn7yp2I9Wa1O+3faQzuy581OIJRIFO2ZhzuB7kdKw5FnnE62u
	 IcZokDXXppb6s67waki/9Ea9GL5piEOPXsG4qxGFt6TaPaoqrPJvFbsTlNARVUBDmy
	 2A7T6Y9QCqQvwolzqbFdfw3m+0tm9E1ZCPSbNRzlWPNA/e60lpcT93kyQvhguun9W5
	 qDrZtAZzMKmECxo1txW60/nUduBqwCDW1O83ye9dx/wkvqO9onAhaWezPQ2K11a/QC
	 MVtfU3vh47asw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11FC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307571368.22361.8995048259391957166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5233ebc0e8fc3c24f4c525914a07fdfbfdfd8bec012571740965b3042ccbd5a
Date: Fri, 03 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783075713
