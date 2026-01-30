Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F263731329B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769760234; cv=none; b=LgUAkMRkNDvJqbx4gqvTHoy3gRQUk6lvWDS0hj2NKicQQOCBSZRcsrvpJf+bpsSA+x84s4uDwQEiLpAQlIVNyA5EaazOenOlCCAHb1CyL6MCbf5sFbOrxzj85/scNsXTI2LdVqR588Dw36+63ZtWx8TV8wNQUBmQ3nq/FVw6S7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769760234; c=relaxed/simple;
	bh=TqqgbIG4XI7AHCV15PFYfhODsKJSImtKyCuMZWW7R7c=;
	h=To:Subject:From:Message-Id:Date; b=dsuciBQ5BAm0YNgUz9qc3lZLAwiGROEOyC2eB7fRJQLBSBt+HMLw3p1SFfV1ytBFmoy50cf5zzqCrFtk4QkXfnX1YyxGYgkpf9f9FKGmtRlOXkDKGN4Cxr4a+ExUgfjgl2ktrIRrs7osUWk1mr3/gkMrt5iMfgOy6uJL6BStTwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFEg1YZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFEg1YZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BC4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769760233;
	bh=TqqgbIG4XI7AHCV15PFYfhODsKJSImtKyCuMZWW7R7c=;
	h=To:Subject:From:Date:From;
	b=eFEg1YZtbxLQ0q7k91PVHepg+XnmEXg/M4ZyMdQe2UKMT+XzeRPMw8lcgnL8gbbNS
	 oGHVZecdeQkILOpfxA6mCeC7ZSF0ywtXNOcIuFLz09sRg4isvvAzMiOs+1EBRDT8Rd
	 OH1Jo1anMF19lsSSelIbF8ies7lVNGeGE/ZJXV1amvKRc2eKtU0+zFOo6sMq9fwKNa
	 2GyfSUtecv3Z/3bmk1mW7Y/iZFE0NJWGXhSsd7Uq2z70n31p8qYooLlH+jV4hs43Tx
	 Xa16Vn6IoW8cO1qIe38Lrdb61kL1OiRvTpsQBM8SSyS6JYI9gg48e/55dNcmjytvU0
	 MRbjW6XpkyMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC9ED49C6B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976023359.28321.404090154921408862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4458d7d4af53de3acd0a9ee56ccc7cf57ef6899b2b64e33996e3e41011f34e4a
Date: Fri, 30 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769760233
