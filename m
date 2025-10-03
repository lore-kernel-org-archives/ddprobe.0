Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166FDA95E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759485594; cv=none; b=HjGEVQ8XwAqUYKDHTTaNWwEwnIQMpHP6Ng1TP/H6UmJpZBoYpvSA9ozaTgNFgR2xq5DD0FBgQ6T9r8mOVJWLxiEy5usR18qCqgiYx37wSJgNf1HDfRGBta7FE8duNQXNnLBp+A+gT+BMhpXnEktJLdKQXdQ+7QlyXwJ3vRS0k5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759485594; c=relaxed/simple;
	bh=x5NIgDdTqU7hG6glbIGawNHOvNRQ1nh5B3yfBIw55H8=;
	h=To:Subject:From:Message-Id:Date; b=SSRplQbmtHVY6OY56Zdukc9sN5WtMty8SCM1B9EZ5n6UoMnzXEv3PCi3qjWqJOQFi7JX7VL+fUumIZjKJGm37F9nNgHFCLx4jsPaTCKTBf+svxiKIRdQLOcwJuGt8jeIfx+2zDzglzJjzg3rmVEGSqoAFM0W2pgkkKWkhQ2KA+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPUmQJxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPUmQJxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6AAC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759485593;
	bh=x5NIgDdTqU7hG6glbIGawNHOvNRQ1nh5B3yfBIw55H8=;
	h=To:Subject:From:Date:From;
	b=EPUmQJxMVsH5obJ0F+vV1hKzoP7Y6wrikN1uT6W8TzR9xO7AZTSLXVD0K3q4qhdIh
	 sZ/u2LyoHKF5Eb2hyX4Msj4BaqNOWMOKKe78+qSJ0QBZJCmi1IDKAg8n5XsleSVA8J
	 nmRP7z+jSv4uijflqB9mIXEgEal8F8a/8eRJeCP89W5K92GnCfcO6rVYITpDkNv2OV
	 C2DPNXzAGK0MrAy3w3qCkMw5528k6BoE9OquZ23yZBBHUKnKlrHjpnaWrazj6F2bZ7
	 oOw6t+11B9qyIMy1XJMW4Z3IeekK6Xf7Wj1eiOV2yC6TXvH0mcpZXLwuvtCSrTHQcS
	 1eJpSPSfeY1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF95CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948559357.790.2976472582827675255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5deb3a5bc64f4d1cca11bff68ab8a11a8569bc46437e8b161b00026f07180ed6
Date: Fri, 03 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759485593
