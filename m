Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3002C21FC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766056434; cv=none; b=VtpKbNNU2WVU5OfTmul3TmXt56HFotSjxQGEbA/bu3P0WcFhwXKUDOlFciaYRA0xfa2MU9dbyiK4O94d3P1VTtXOBmvJ55B7AhJaPLUVT9qwubUpOlSJhV1Roxd8NlmKmXT0mXfgedabO1SlQnqkq05u5BKMDVtF0H0vJBNKjqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766056434; c=relaxed/simple;
	bh=QSZBLBEtaqfY2h8NJKhgT50ziVBgVPoC7EDzsvVcu2Q=;
	h=To:Subject:From:Message-Id:Date; b=VSgHdreQV2ntcnljHEzSgp/lqABl2l7sZu050uQDwHrA09ptmS7IlKJIFF17/yz/UglespkKqlQ1SW1LIojwyQpC9gq68guUgEZDA+/GxnKna2CGHf6RC+WyVn/6IjowbVF3V3fajyFJkLAQOXfj36QnGsjblEKEnjjUuT7gdiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czJXTyHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czJXTyHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C55C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766056433;
	bh=QSZBLBEtaqfY2h8NJKhgT50ziVBgVPoC7EDzsvVcu2Q=;
	h=To:Subject:From:Date:From;
	b=czJXTyHuV2GvAEMAH7hayQAyopNFl1x0s6mw7yb+70kQq0q4LAPaawFqlINZPkU+k
	 ZVWDXO7m3KTdvblnTr/sp70f0bvI6LgD3ximtUn3g7Xn3hPqvx4nqwFoy9ox+B8P6E
	 KvYR+czsfFc+IUYxkv/pCQoAS8OIxE35V6kFdEHFChP/wKrnP+aL2Nnu5bcymRZ6vh
	 EQpPXAg0LdBBfJEsYxgmW8Tt2/0odeKRRPyOaiKZaRR2jAyBoKG8thry2JhUkWG347
	 lbzlBln2IKQovYGiV+jCtp/zCUThnqW1sfbvbUjBt53gJ2Ezn65i9VQJt7DHeCUqpu
	 +eB06eLrCYEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91056D6ACE6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605643358.25630.2829855644232696106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b1492cce2506702755314a3ca149cfb208ca74a81dce9320528e0fe0c57101
Date: Thu, 18 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766056433
