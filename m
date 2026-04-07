Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2840DFA9
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775564134; cv=none; b=GM7DHQN9XzzKW7/HeQ40vEtXS5UO2GaDDPqhERhOk4LcgCvAFoTnNlZRPBvVrzDLrI1GZg8FNH5uJhPAO3miZ63xTxb8aY3G2U9+1VXfgKUyDBzxGoqeYjCELxmQNeIwdCafFVtNaTQW0D+o08yMLRbJeBZ0zfMUEE8kwpy1Px0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775564134; c=relaxed/simple;
	bh=hz9ELIBd1vSe/W8hVWFNdm90aqkpIsJaobaE4e/J20Q=;
	h=To:Subject:From:Message-Id:Date; b=NRFlEvMkkvNMO0Up0wwIHW1pLHygjYMAxHdgWafVu0Av0fH805QaPY5bBcA175x3fzkm7j/RP5fEOl0RJqaqQ1joSPG3PsNfM44sdKkKhozAWr+BiS08+/0qUxkc5aAU+zRyn7bKySda0LjtxbdZdOTR2Y6bgsxKA6ebpe8t7us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ubj5B7LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ubj5B7LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B683BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775564133;
	bh=hz9ELIBd1vSe/W8hVWFNdm90aqkpIsJaobaE4e/J20Q=;
	h=To:Subject:From:Date:From;
	b=Ubj5B7LOEqfztASxoHwxCqr3Rbl/m8qGYijAXgDINXn0BSkhT1oQT5ndKoLToZQrE
	 JJTkjrkxb1fFV4sxAwhFdQPSbrph+oAJgpqfF8rfj8/FOfnbuzOvk7ZqDVyCNiQrLc
	 mDcMwVPAvX6p94VEvGbSaN5Mq8+a2EZxsnzgnsz4JBLYEJMqmo15kuPFOx+HBfnO7D
	 oIZ4CMrR+wH4y722FSK3jdn1qQm506/2+2GupLdwVaXjspxWF/uQOxg2oh7/5JrYDs
	 0Njxm5i43+TjSjl5+J5DIOrKdO1oMYxMuZXNFuAbVSQVWt8VadZDYoQe1F2dHkL3HN
	 z312VewbGdzcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F3FEEF29
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556413368.10849.7529500193649516648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263fd83808069228b336767c10c9cf6a8be24a60b0046e7df1bc87962bfd459e
Date: Tue, 07 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775564133
