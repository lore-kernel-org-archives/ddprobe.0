Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EFF3CDBAA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780496674; cv=none; b=fX4bdmnurx3GvcXZa+l8L+qgAOXx4fRWnF/u0pCyb6SMytcZM/tuR+WFO8YyN7bANEhEj6iMSp8GP17lMAKrYtL0X2dfQa/BHVvZBahKHaM82uTLB+CZAqZUqb/d6g258t92/7unaffWprjy2aKN/tRuexPnJETYZ7TH1kOqGho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780496674; c=relaxed/simple;
	bh=wVHa11xuqWjUbML2ZzlVnMj200uBuI5gGfWR/eQ+jDQ=;
	h=To:Subject:From:Message-Id:Date; b=p89nzf+P/34qVpK3FnUIIq0mpktXBCMWFSpipcFFC4gUmDXqE9deiw9A5nTYZfzG1GG93chKVtt2CkIQ0cRODO4XlRfUKMkC0cG7FAQnIH2q87D5zle+0Sa3GqzFYmni7f3wt9qugnRla2tkyAVjBvUBnn7n7AMt1xhU+8Ip3z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPzWYqRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPzWYqRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92CAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780496673;
	bh=wVHa11xuqWjUbML2ZzlVnMj200uBuI5gGfWR/eQ+jDQ=;
	h=To:Subject:From:Date:From;
	b=EPzWYqRJDqnJbergBlVjb4HoSf6lzRfjC5lT8dXaN3qpVWAHtxEaifnXRCkUlv9YB
	 24dfqaZOjr2+1+D1wb2O0rGWbPeoZoIET8BQcjRbzAJwixeFAkQr2xon/IgzFoGixj
	 ZSC112Fg5f5P8B+wTWNW6z/lyoKyAP79s6LcCHNAz1XAlpovhIe8UslzMSuyIpW8MB
	 Dar8lKSbu5FnOT9RXC8Kp8ZRk8VlAql35dUnyMXYDmPQuR+njyQlaMLi7tnWx9TsTx
	 hx2RRJqaEkZ133jnh2bWVAbcwKoykPmNf9IbD8kUnZKxK2ZbinimxGcUxiVJyf9w14
	 GIhx8FWn5VqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B41CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049667368.27938.16933231047286565180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a1d963b2c60a9bfcb670b6cde6ecd8ebde1bae708ccc4612fa6bf89cf6587c
Date: Wed, 03 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780496673
