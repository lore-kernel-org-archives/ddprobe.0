Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD312D6E5A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767549833; cv=none; b=Xeon0ynqbjr97Wb5bvaoBUpcsMF7aj9xRoewR26NRywAoo2xyQ12z8VOqEjIdW//A/58TAklDTD07+BFEC6hXK5RVDEoepKWIroMDkU4vxDLU3kkG/3CR5pkZ0fU5ymwM9qOT62gmMforjCGdgosU6Fmj1QdSoX6opcJVpj2r/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767549833; c=relaxed/simple;
	bh=MMPutR7gD9QDf1k+EHHqbmpniXXGHr2Q8xMyVm3QvcA=;
	h=To:Subject:From:Message-Id:Date; b=XGCzQGL9endtiIuwZAfTtCCJcbV5FW9uaoL3J/dK2Go2Tn+OHfgCMdXVvsloZiE6/FGkjD5TXBNMps6LpJ55DW0LcxbRomChu+OAml/Ceu+C3nR1pMmRq+ADzqOgm/Mm/Q+ekju7YXVFVXfV8S8qB26BNZJSgxj7DeqAOFqyihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV8Dc9zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV8Dc9zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD7EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767549833;
	bh=MMPutR7gD9QDf1k+EHHqbmpniXXGHr2Q8xMyVm3QvcA=;
	h=To:Subject:From:Date:From;
	b=RV8Dc9zEzOspL+8VH17jXDwyUeOYoscovqE8ZXH2+wuFklZUc41Rk9M8lO2pLanPW
	 FjwLfCwTNnyXjprnwjwfdDX1UqAMspNOHQWGYyE4n3DrA3iWaeZeUldqWIxbfbzuCi
	 gxwKrvh8LzfOQdWwUflQcPqOZhiFhhj0GVnQ9Tn5sQcTUPr1qpRSJ+aMnBqAVpsQf0
	 9y6rRNEFQc7BUpjDirIPLW5OQBOJq+g2KaBhyeLZsyrKXsQnRN8DFzdewKzr9vWer8
	 bn40U/dXBrldMoRYcQkEzmsZFizE5QYf/kY1etbqechuCn6s+/JtojWERUcptZR1HP
	 56/CM+S+PXYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F1C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754983357.15671.6387283314295507839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d67cba01e8b81da8f5bdbe47be7f08651be88aaabe3d069847abf67ba5df8e
Date: Sun, 04 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767549833
