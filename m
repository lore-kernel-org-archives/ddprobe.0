Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF112D7DC7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761589193; cv=none; b=qz+xAHCZlmjnho6Ouhgv8AJBsUNKNudyKX27Eco4QRCen8Rg+NPuMejcfCAi89FV0bi+3DR4C6CQ0fK70fU9+89Q/1WCn2RZ62OSne9UayjOLym3J616sC/Bco/HOruMHbWf6jUmURQqtXC0tJxXMCGmLCYd6Dk5pwqJnYtUHN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761589193; c=relaxed/simple;
	bh=nUqtlD5/U65/AuxZiNUFhmVspLgbCmIHaGzaHrJAN9o=;
	h=To:Subject:From:Message-Id:Date; b=BLWlyKl4I1KIyvBbRMTKk2uyF/d1l0rfCPvlCEP/KwW5Nfm5Io9R/utQ8DrNEsgvIlxAmG7ndFNjXR4eiBrWz90e6QpYldYrdxCLD7+f3l84bFoMrBZ3831prZG9fkUgWgoyUs+cCYIkqfytmM28ZgLy3fHCsVsGKRJzJsBBIEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APO9QmQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APO9QmQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761589193;
	bh=nUqtlD5/U65/AuxZiNUFhmVspLgbCmIHaGzaHrJAN9o=;
	h=To:Subject:From:Date:From;
	b=APO9QmQewtTQkPyRE9wxALADq2lYmYeX4buJoScDGtuNMk4xe5lfNAOj3EbtkkHSJ
	 SHSm8rLDbp7JKlwRfcyWgVo3bGiSCCXr4GAxWeAMPXg9iHQKEOYySU2ZgG54kVww0i
	 /qqBHC8IybjtuLI9PY+Q+yv6Ep/TgBfXgMUEKuRgAFjtVWqlGhNzT6FaIVq6jB7FyU
	 qPJy0sV788fNHR6ZSxZKAwQped0jqsMrjWKg3ElwuB8fQYSldLLdzgj0bWudjHviPH
	 Dfj9ieP1Ua3CTYDp1YwNgTLYcNQKUZINp2RpafakD9cM8G771LlxrNX99eUvvJR/yq
	 6AAAmkKNg97fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91217CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158919358.1525.8045236493967754509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e46f65268415f3fc336fa26085c7817f1e6d95b67f0b04dab5140ccf46318b
Date: Mon, 27 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761589193
