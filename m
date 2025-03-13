Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02E261389
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741875535; cv=none; b=KVvK+8OohWiMvY9mPwCP3UVlwvuNR1qeaiIkrQJiYnXEB088em92gJJUxsliFerZSDLraLPz6jkEhYagKrgJ7bUwWyGKNFVSUDx4i8RCNfVYGpQf3y9DyHKfyWjN7wlyokY93kjNzbkrOaKL9iwCKjPjfkmDdT77PC1vTkkGJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741875535; c=relaxed/simple;
	bh=sISPxYzE02+YrA3xKawvsx+KUcrIX9yqsQCAGViRe8k=;
	h=To:Subject:From:Message-Id:Date; b=KhEyzDbY2l58bpFaD6fTdps6J1K8I1Bf6Ed2L325mfBzoSdU57MG74HT2h4ZZoe9Ht45i5LIu2jkp/iLXekPlRWUVGCqW3SAOkMCfk1amTYhPD0jDddA4SCpNzy/cqFmlzikw+aMkz0nuNGkihdzrhEaas/ePclYrzcza3iAcxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui7BB7V1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui7BB7V1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49CC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741875533;
	bh=sISPxYzE02+YrA3xKawvsx+KUcrIX9yqsQCAGViRe8k=;
	h=To:Subject:From:Date:From;
	b=Ui7BB7V1+GwvMZtQqUY8LoSHyNY+08uzkwwY8gs5rD+FTXMEN0a/nb4XbnoPOoLFF
	 Yjc33bQKuL8FWQCoKksX+i4DAidd6HW2ZdXLBBNXcqUwfes8fu1hHPn97yaCeoAzVC
	 0rEfosytBgInmwh8nKWw62Igv68aET+MLQh7j6zsrtq9xpe70/c3GsLLlQrIPlJ9m9
	 gcVcXUTCxV1aTekU4FjiabbgTeWZZmKvGUFbgiP1or9+/E2C0/g9+mpyO4+rTqtcCS
	 i0CS78ip5h+CFdex4TD9vwljRB1CvbzpP3KHaibZmMhzBgDhxiWPh0PWr3/B+9WLWF
	 uF3Nhcfbd6HdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D17C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187553362.18983.1796259487657056164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91be2ad67757c3eec14e96a8cc97bf1c086ce64f8c4c55e884b31e7aff21e41
Date: Thu, 13 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741875533
