Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A26217F33
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753338594; cv=none; b=n+ihdJhLnSNuDyafRchc/tavAAfqE36NwKFQr7Lb8OMiW+DqwrnVM0Tr5qDsC14bvRaXW0cxWJHAN7H69Wxt/ULNp8+eXL0p6DZgN2dn0VA2WE54Cs/nobkh6xDWhlMf7PYM/QRK4YkFPytfEHDYJUeJrzDwkMnXOfqn+JWe1k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753338594; c=relaxed/simple;
	bh=XPB+dGyyh1gXwSCx1U6RWNGPi5fDwRI3EsBDFmb6ZVw=;
	h=To:Subject:From:Message-Id:Date; b=a2wCDo1fYaJRyIOHUMbaON76kzPqXUUZoY1vz4Mdt8fhZ2a2vVXGazHj8pxoeIXXXpopB6DUQhG0xUe1IjjHieEpgdgUrANBzPANDOxS7oVMRVW2PT+9Dx7EaTf8Ms3H14NwEvegr76t4eHjUqVE4xF3papV+GdBxjC8yc/lQFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJrJBra0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJrJBra0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F8C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753338593;
	bh=XPB+dGyyh1gXwSCx1U6RWNGPi5fDwRI3EsBDFmb6ZVw=;
	h=To:Subject:From:Date:From;
	b=GJrJBra0fcYOhQYph0LfMkcopJet+gJ9XFvVfg69he9klgxXtWyTw5difEAKbhD3v
	 V9fDyJgTQyOuymSHNRk2OfRyDFTrbrD5akhLc8rTPJxRuHfERXWJ78SqPFLrI4Rah5
	 xUUi76JcvO0SdRPPe/GcRRnqFsQZdqDot0oELcHgfG0FBPktnegALDZESNJRRrKxs5
	 R2GQG1eVJOWcv4S0gO4YCRlbs4vPlR+M+KixPGJcHZrqHA94ihrtr92T5po+3ckjta
	 IL4rohkCjIprE8hVnBj5FwqIl9wDAqiRxBgWVTx4fBJotZK0GUriKNZIe/uPusUyWX
	 YA6KF5fFiAOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FAC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333859358.29797.9841556251500005893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36a17b10c688d71f5ff6f13bc3a22e5a08cd379418787a9609d4100e52f57f9
Date: Thu, 24 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753338593
