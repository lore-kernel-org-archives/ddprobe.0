Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA353FE641
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781004334; cv=none; b=G1vGPOt+MkFDj56yOMvBHAHRzdrnNGkN++uZkT9qP1Dxr8GWLtz62gjC17vvPQ++uOoTG4JjhWVtxf728ESucrKuba600zk+V812IUzDZ09x6hcnMBiO8NFPQr7FH2xGw9VUyUl8d+orAVwDAZvclmfqpQ7bky2m91UtqW2FxN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781004334; c=relaxed/simple;
	bh=d2Togh1cXgIMeRHKBN5aEKHd/ECRf5HYJfRK46izPAc=;
	h=To:Subject:From:Message-Id:Date; b=ck0PaOMh6ZANwYY3EPX76n7AElCMOjP30x91nt/gwkzUUH3dTu3fUpiD7tm6EuX0WsJeHoIfBz9kEp+TnvrahUmI49i0+SvHIcFZR+IbhxOYakeVNC7aIi0z7zekInyr8e1phhUHmc1/d59cCr/rDKlNxdamzYpwK1+cWRGp1tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZSTSNep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZSTSNep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0599C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781004333;
	bh=d2Togh1cXgIMeRHKBN5aEKHd/ECRf5HYJfRK46izPAc=;
	h=To:Subject:From:Date:From;
	b=SZSTSNepi2J1WNsR2h02sHUip+wQW8ODR/W3fYppS17X7+5dSPHvFEE6ZrL7GrZ8q
	 pSuXG9h1PaOUL5eplmeQZyMDiJt1UyecE3u0CsGeP3I0AWYUJgSXLqfit4qqiqhZXn
	 sGKkgYMbBy9KAo+kEgm1/hFTeYLMyKXgS/rBkbmxwkLajiA6WLPTGS8+bW7vYlVXTb
	 PNyf1ch3Ngd28ra4XbGJb6K3jv0jwIln7EVzy2zOV/RIkUdeJOPxasAJjabmVLXJpW
	 yk6ZD4knSNqcaVGejG4SXcrofDg7E2jFo9oRGb8jGwoTBJexo1egu9HKeuIZTeTO4k
	 580rOjoGjoP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B323BCD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100433372.11781.10664418546172499541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6960bbcc78c61fc258853d4a8c85c9656a5e7c954726c03e07693787a19a9c58
Date: Tue, 09 Jun 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781004333
