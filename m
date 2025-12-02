Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EAF1F936
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764680574; cv=none; b=Y0cDuqW4lQ0oJGuyDXvXwoFLjd6K3d/cMv4w2AQnEE3WaAhMplxjE0jx0TobIq4HpsNO7lU73pcWFMdPbC7JdiQEnWcQ1cNoTEoVVOM+ORU2ohqPjXHOvHexUPEbLhuJrUNaFNJdazEHVzVeZ/5Ob6MckphbneC7oWZt0rfoJIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764680574; c=relaxed/simple;
	bh=uB6uLyEJHmSclYEyFmuvUO0UGErvZEtd9+HJn5fg/xA=;
	h=To:Subject:From:Message-Id:Date; b=keLYHzyCZkgy6BareJMs+MuM3lFrLHgZfoLpHEBbXqxMHitn/SE+kFn67JUKJdm5ZaHwAqrUq8f5YWHtdz6Qur1LDoFYRs8eN4xJCzpsMieCJLAQ7U33TmTZp9XMNnQuM/Zj/8NhI5T9jnDRDdmrujy9JiZTFtUYw4fA2ChZHVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHmY7HdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHmY7HdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764680573;
	bh=uB6uLyEJHmSclYEyFmuvUO0UGErvZEtd9+HJn5fg/xA=;
	h=To:Subject:From:Date:From;
	b=VHmY7HdYOEUIU5veeZF/PrMN2S0XbSiNJMN1SQS566Kr6mkCNKIiYMdDv4Fr4grNr
	 HRAyrqeMCUcUeVXP4PSy9SXFT9jYJDkykblT8F3QEvNsu3JXkoY9hh+30HG3q+YSpZ
	 8tZrCigK28z817KX+DMWPs9SnIYQ65eDkfHXj+c3tFtWQfkEvF4wewQxkym6jfGHzs
	 PS+LxUzmXJ7On8tw2T5pC8bi6l4AUBJd7lfl+HUzBVLHwugZsv/A8YCqt9Xg2j31U/
	 MLq/2lIBUHyqePfb0RbX6ZiJxI0BlgImZQByr27yJbKrihVJiI6YHVSItA2sXg4Djr
	 5gx+mGICA/AfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C5D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468057358.12162.11284725170397764527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687e85c0ada3675950b7a8723fd460865531e82d5afa534b9c12afbc94c1a93e
Date: Tue, 02 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764680573
