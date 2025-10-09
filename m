Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2F1298991
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759993194; cv=none; b=mwGYtPZ+fzjJi5ypZeTwqWHZzqaDz4XtbzLgJy+QhsJBDCJpJ4WLaBHmU26nVLCrz+IYrRP64OeE2Gw4aJkAnULkhMWIML4k2u8BNUrb+WxPFWtrz6N39wdDx3tyc5hbpzCTLWS/T8R3NKsEpWRruCefS016zf/laoxzw0bAcHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759993194; c=relaxed/simple;
	bh=bjIfSNd1WeqF2IpRuBkFBpH8sPjPbkQ3h9XpeCkCExk=;
	h=To:Subject:From:Message-Id:Date; b=fsxWDs0c1llTuWBg8AmbuwNYUCyHTaV8mZrCWaEe36KWbrFCAA7bPOfwlcenTDPrC1C7uN7SIkp1LjsHQb6UBzebTqr07bGjkLFWPi1tTfMNHXLdWCGDkOJx/UCQ3OcCH/Ay/wbLu8qawuTgDXL8Te7lSFxvjwU3VGbzdeT71Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaRmDKv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaRmDKv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69EBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759993193;
	bh=bjIfSNd1WeqF2IpRuBkFBpH8sPjPbkQ3h9XpeCkCExk=;
	h=To:Subject:From:Date:From;
	b=eaRmDKv/TOdtK0ELTaMnvvutWfGYDuhY6LcgozV2KBC9dWxcTtrv8wVccm0cc7A/O
	 VxcZoDVthJlzQtCt60iVWefIXqGvaaIa1VxrkyeoA2Lh5MFvd+QfHarl8YxZmbi4MG
	 dSvYFR0O3hx4sUhtrXAY8bt3+KN+dr3OuOa/R0fYa7xmqpGRh5V9MlfjK8719Pk26s
	 IST+ZrMNiRoi6FnFZvGpvzVdw+oC+16XOR+wyomUDvKPNQ/z5h2gGORjo1UCNmO3wW
	 snmEIqFFScl/VU3FLHqlrZghhCrjMBXYs5DT6vASqp9ul/MUJqITyHjy+azMbjykpn
	 2tHeJDNQspSZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C0CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999319357.26885.12359505045291000717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a513c0680236d50f79f1b72358ed2116a48b807cf436fcedc3e8c1ae3dfef623
Date: Thu, 09 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759993193
