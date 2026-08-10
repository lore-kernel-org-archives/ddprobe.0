Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D652FFFA4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786401034; cv=none; b=SdLH2rkCi2s4wNvtrqZ2QfhpK2+b0hD40ogvIWOLkWdjfdBi6bgR7N/PPX6zYcEfPh07BUEIqGM/76GoobSmZe8r2Q8L99HsnMFR7JTTimupIquHhw2nnSr+lg9MknJmXS9GiOxYyE/nmWhlobd4x1wqHKsyigC3bOlhpGMJO8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786401034; c=relaxed/simple;
	bh=jYRywgFsSOcqVpkV/F3dDCGEE6PM7Yr2Uaen1SAhcIk=;
	h=To:Subject:From:Message-Id:Date; b=twU0KzuqlvF6gzu17/pS8tFgroPn655b7UzHoUee5j5+pdCbH4zQoij2dgS8hgDhipPlGxUEE/4uLULAY5KZqYJtx0vc9UO0r+w4wU9UNM4LTHctsuwW52YUqUJbL7uoRUcVZK/RHwOTIiAfbUmchoxUvO1RuFvuWAOv+BmhNOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRSpfoCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRSpfoCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7DAC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786401033;
	bh=jYRywgFsSOcqVpkV/F3dDCGEE6PM7Yr2Uaen1SAhcIk=;
	h=To:Subject:From:Date:From;
	b=lRSpfoCeBhdY9Mjg6jrayVDnf1WNYyhSZCjzXtGSMZF9pUg7ZBQpcYemGXPKFSuxh
	 jqgh/sfO2J2GDoZ/YcQ8cqLLaDylBGmj799eQjQUs57cex4lt9keIfhuERfFyl0ziV
	 vwzDzEcQ83gzDoXkogUZP811gQvCf+IYx8RZ3RSuDPcBJQXJw+ar1hdNkS9bzlOEzQ
	 gm0SmXD3VXcNjd/2C0K7+riHwEKcub4zlZ834UgysOYZHCd0suOnJU5eRywkIX9GLm
	 GA30A3XcsKGjBOwnrQJNw1JGc23ouwBif7dGx2gCPhT4lPicTp2lB/qx65A8NypcOE
	 vBnCKC0oRmhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF7C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640103369.14717.440634733530759040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769b819c0b57f80aeb1c2cc65dcfdd01a43c6ac2abef05f63ed7308f6c45a66b
Date: Mon, 10 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786401033
