Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3332D3B2BA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773556494; cv=none; b=H4l6eymNJaDtG9z8/SsNI1D54QjpQvKHwIzmecCYPQxJ7Pfr71dXfLfmXcQdKTbFS87QjqNbc6KVco9OQ5Lc2DaKsF2i4aK62d2SWJZVDmyrs12eUROYApf1rR5SnJPb/UBNY5PUROa4ptigUQRggVIpOkWaXwlFh/Kl0g3uL5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773556494; c=relaxed/simple;
	bh=sWc/gXoaG7DXm5NSL3bcu7FHQUG54Z/t/jVNH+JbWQc=;
	h=To:Subject:From:Message-Id:Date; b=uSuQ3tG719Jap7vmjZ3+5gl0Bxj1CQ/27H7ZkZmJNLuTJ0vOZB22zjFXatryxVHqw+p3SxcDlpWkW6HHS/DzUhJqMMPOk/8Px2Zhnw2Pkl4/XZo+yZFLuMEjzvHEzIQfhRAx6mNs2vXHPVWaQMUNY1CkXZ6bKitCcISaG9eMEUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLQh0eGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLQh0eGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAB6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773556493;
	bh=sWc/gXoaG7DXm5NSL3bcu7FHQUG54Z/t/jVNH+JbWQc=;
	h=To:Subject:From:Date:From;
	b=jLQh0eGXbY+b6B1AsmH7DGyrU8HRVUvNcrBN0CuV9KJoAz9m3+CTWCBZOCxM9TbYa
	 Z5Ebalxt9u1nxHakoOnKjdLA2iWSgLT7+KYIcrrWIz6jrlzJnAwxd+4kMpaqG/98gr
	 fImJhHGTT1OlnvqH1wPJQD0qNr4kOoo/kzYaA6uSCfrGIpaNotnf5/P2s4BTu216TD
	 8pWf+AB0styO/zG7k7rOs7c2VGhdAh+KLRHOP/ZgfXJaUNRl/ZBxemFBg43z7SYoj8
	 rLdJv5fmxe+Hai6iZjdVjClvNZ5XZz9ZESTAdYgmLkAvQczAaGTC4Ioq1+pzlrVtXZ
	 ZjrEAzuSj3u2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1AD58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355649358.11820.13637856755940236716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95502452f83b1bbb6be6f60ce413a364e3dcf9f5b5fe54200881ecfe469701e2
Date: Sun, 15 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773556493
