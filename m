Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FB533122B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764095575; cv=none; b=oXoL3qXJQBDDfXFYOw+onA3Vm1VA5XdT4KijqZmPdH74pEAsK1ehM6tutN78+cz4UMAQDnxHS5/+IZPdr1hAeWptS6wYSL9fSGPLyGELz5wzXnSU6ypX/piuagSLHctVDIppxS5OJdP5mkb6yUm7d9l0JQnfpOrSRcoipzCFcVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764095575; c=relaxed/simple;
	bh=PtcxZ68YmuyrjRBcx0WAxRegAzBxVy28ovDQ2ULmJww=;
	h=To:Subject:From:Message-Id:Date; b=sKI/7mLOSXaPzVtel9JtwMhkF9NeYC8JIwprtMIM+T98Dlhouy5jawHp5hbl7iHRFNlWjvI3TPQNOZ46GAWUUfJkjaCNeyM6/wv3c5/Qhraz3goXa2RA9V8nuCNOEUd7bXhU5ItfLrAxIdiqRjdwy5IMu2zyuc4cQ1YXgMfwZaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auPCYoaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auPCYoaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A756BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764095573;
	bh=PtcxZ68YmuyrjRBcx0WAxRegAzBxVy28ovDQ2ULmJww=;
	h=To:Subject:From:Date:From;
	b=auPCYoaW0hNgXsAjLbEh9cuufC0MMF0MZ9tm4VV0dGMpG2J5/PPADhabi0sGtsITP
	 UE3hq7VkC4EEC8xg/BZLUjvXU3k9Tq3jz78lOS2l0sNrFH1XUZ9gcoknokfoMNKaIi
	 pLuqCPSfFeTIr8dP9enWaRVN1cH5oudk3U31d5tiLNFkOph3wKjHLssEj/CWp8MIHn
	 5tEclfjwrrc1LvNgrZFq5+JG+Maox4YAIY5bTtRGCXfL1ctA9SGLmpbWMuvj8d/fvy
	 r+9Ju1IZPMvA9SifTs18tXGLqkUdfmSZiM74UaXqB9u0Bkwin9Cq0qwCzgw+SDyohV
	 KXb/RlGZzGqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E5D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409557359.24365.7427182975028539580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c263fdfe47b20cdf3a7439c7d3679f4754884a640e4c9a022a6e443266b45b
Date: Tue, 25 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764095573
