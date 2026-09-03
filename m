Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AEC45DF60
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788438634; cv=none; b=Bge1AOpyoC3nYHPPHHO1E+PXFo4zFNYWBAVnS3+Gk/pTOXPkcN3bcwjxMz9q3ngbvv3f985K+Q95T5nUPvQ7KCM8YM8Z2txN3eZH47FWn1kIwly9VNTyv3K0U2zCJcdbvq4pQ+B3k+mvcisveHhIGdPUA1GWv6VMMcvvOKCGwlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788438634; c=relaxed/simple;
	bh=X2m13bfVyyc0KH7d9fEACRioj4XvG3hMIjlTBbR/en8=;
	h=To:Subject:From:Message-Id:Date; b=ktA31WizXx06SM+1kHcwbS/vDHYeyaa4M18cor44twfW42QtawJ8zmeUX43MbgZLLVd1bpiLwEpa3PXNiA0rvF9pEYFwjFUCU3QAKMFdbpsMD/IJ7rjUKAOZTNRx9a8tgncH80wIiECmeFjB5QhGTURllVzKFq0h5C99p/w3yzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+DQrM0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+DQrM0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63CBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788438633;
	bh=X2m13bfVyyc0KH7d9fEACRioj4XvG3hMIjlTBbR/en8=;
	h=To:Subject:From:Date:From;
	b=o+DQrM0UAP93n6q4XJVz4o0eKca70prGWIOlhkkC6unu4AZ6lm3nkCkqXzKPp9faM
	 WL3f9kiqrHy7Gc69cKTBEdsabVay0lsHsFFE+1Q0TlOh0SaNrnW3BX4FycNXkgQlLf
	 XwNcFSADWVWRxyMU3LtUipFbudSqUyWZojqmWmF7dY33Io1gqH9bbeCTyg+ztO5fAi
	 CF+ZxsNFGn1E89WnF24qTkEjQzNKG80KyiXTlnXjfQbsjvupM7R0FNDiBNLIHhBP0u
	 QXx7xjb02RXTvHx9yEtz3+AbUd904/6vp2c70U4+TaibNXF5KTErV2QcsfnD/GsOb2
	 f5BwrI9+gyv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51DC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843863370.24855.3869367181818421034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27325586cade8370c6e716e41f8dd5851edb1273d7bacd3489d6a1a739686be
Date: Thu, 03 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788438633
