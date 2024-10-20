Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2416BBA33
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729443354; cv=none; b=r6XR76nTRXSe07Otcl8dY9/EKdR6O3qtLieb2pLOwkmUP6qdEgnldgcFmfz2POyExgVBktwmF3JFe0FYj3/ginHXgStcMHhZPAnwjtRS1eEqair4SuAaldjPPJv9rDIdqmPvZben03RgMz7tI6O6qEJ3VwUTxXmO27PWmXM8VAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729443354; c=relaxed/simple;
	bh=yBikkymS7enwlmAdgSp5dswLGUL8JrXaBQzs01hzXoI=;
	h=To:Subject:From:Message-Id:Date; b=Gt3AxwZcY7HZA4irjJpQg5NkDNDg8FADrDHW3BfuBHtuZuvr23az+gLpF47IrhVu3K7/cD52QVPg/gmKGpHlK8CrKeu9XUrmDZRsL1GqS+mtQXP9P6Pf3tCNlA/C9mb+S0wJED6m+SxC3PscloJZcLtrbnUIfIRkVTpeMENSUOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD4ggml3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD4ggml3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50C4C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729443353;
	bh=yBikkymS7enwlmAdgSp5dswLGUL8JrXaBQzs01hzXoI=;
	h=To:Subject:From:Date:From;
	b=cD4ggml3hA4OY2oeH4VXzJ773g6HmHU8Wow44Lhb7VFzXUsWaR37V93inEiCsIVZo
	 FpQHRFe6NeoZX8xcUqyaVSA/vt8wbgxQXk+KCzNq7JoiBReIfTMSZpz6nBbDy6erD+
	 o8khoiwfIR+K1DmQmJh3uqys+4oO7bSZQwzC6oWZHVEBQF+JbCr7vNFueryEm7ZQMR
	 oRjIm9PH07p8tWk6GxHn9Qod7pa9r/BWPAjUmOkydxpS4L3Qe9xJYW4nFMFJQVI8Ru
	 pLFxQ266zoNXVLYAGGCHdIdaymMpMvBpV6W2miTCyK+I4cByX1Jkm29I3h2+I+aC3Z
	 CL+cwHiW3IC3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F252D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944335363.7068.5451088373521120602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204b10b4f7b1156104d21619d729ab66e3f01c697c079a7e526f37043696c46c
Date: Sun, 20 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729443353
