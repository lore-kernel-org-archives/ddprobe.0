Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959E82BEFF6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761790794; cv=none; b=ga3yG5fVIqUWYCC7mFNvrHF+eK+C74NSP8necfaaBsVHZZ/faxWlwAHzuuETLfWzRBZyLogi/hIUxfnMjVrOyVrdff3sEw9ojNSgCAdX16JD6sPRn/W+DgKYErsZvGgVg/LO3XQ+zz2CDtq46o/h8YQeAR9+kpQgLf+a2zOhUOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761790794; c=relaxed/simple;
	bh=YFSrQRwXDc7ePxjnGXsmX7UcuWmI7lS2PxJ7jtIzf8w=;
	h=To:Subject:From:Message-Id:Date; b=r+9MRfXwEYo4sqnlkpqIBGSFg/c7nrE8yHWPHX8CrsFcXtAAgJ7WO2D3Fi7m87qxV5E12AulbFrT8dEbG55IQCKBlPV5Cu14P8WUioarhLKOcbyPERATfAyHQyMwWrNKZifPCb0qKUKxSm7yWPA6SJsIk3lfhTD8361GzW1Xx+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKEM2oKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKEM2oKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2BAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761790793;
	bh=YFSrQRwXDc7ePxjnGXsmX7UcuWmI7lS2PxJ7jtIzf8w=;
	h=To:Subject:From:Date:From;
	b=OKEM2oKmAI1RDC8Itfa4X0n66UtxUwtivzcU+ZDp7A6y97flD4V0FY3IwvZZ128eW
	 qPvHmjMkyGp1Y5ZzHUnV3Gl1qY3GBxRRDXF5A93VBEWsEVqjOj9U2GnAzPQuvWpmo/
	 uOqheEvRXQRrpYojs1l57nUOpFhFSLc1TQJooz7dNm/u/bh999NtZIID8V7aahk94h
	 kBNYnJsfl09XpXnE+N8LauiW2cCnLJzElSE01Qnkl/BhT5hf3k+JMgKdDTmo1Z45ai
	 lVcEsu+dMhlwpZzfUdd+sn5oTgrJW5cJp18dQvzqMSFaUSK5zWaotzuccqf5SvKrFw
	 BtDnWL2vbLnEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B2CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179079359.32480.11361692461951851957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa5615e9d3147ec700b7316da8be5c090983227b317d7b1c0189d16d9406579
Date: Thu, 30 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761790793
