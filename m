Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009B23AE19B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787022635; cv=none; b=bF53mN28yzBVl+/KIwILGqmvpWaRA9j27f289PO5eIpmyEf/Zu39U3So4JBU7DEzdSp0kJZM0jdQanfihMoE2pUfMh/OykHslxaTK8tDhSqtdqZeWPGzJKB3Jr+qN68U3T8DFPv2G+RH9GubOSxhfD7xHpQDNPScOW1CPGj/s90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787022635; c=relaxed/simple;
	bh=h1DeBOnhrTFtgqzm3QziglbrhFp7to/kS/Xq3X1XCfY=;
	h=To:Subject:From:Message-Id:Date; b=PfSvk3DZp2SIZgjbeq7IsO1vkmQNOhvANgoz4FaJsZ87pxn75SukAe/2NdaKEByvy6gCn99vEaNk49qV6Z9zpTKRDoQ5boRTAhmvev1SIyIoWnjw+vqqUsdaTwpqk+b+vdggFucMJd4G5D/EiTsuu8jUoE5bojF9DlxF6SeFVgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pddCur+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pddCur+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB875C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787022633;
	bh=h1DeBOnhrTFtgqzm3QziglbrhFp7to/kS/Xq3X1XCfY=;
	h=To:Subject:From:Date:From;
	b=pddCur+vzFAVRGezKWEcBsQZqf2+IsfK5vR+iK1cbxAjFFLR1X31cggQ2dCO9N+tQ
	 jxKCjXJuT9gAZ/sLZfH31mVlwY2c/0lKcKIbIQ5NiSK4z2nQ2+gevqbgQyffTrGClv
	 DNXQNVadGZ5nWyPtmhdJVvK58Cug49HUcpqgR1R+6IHmjy+NF1Ck5eoNB8ohKdGMQh
	 Rlc+IfHsi5HTqNqKGl8x/NvAEb9Rbo2fXzOSF7xIJP338+8eNsmmuj2Y1V43gAp9X3
	 IoGzFMxIT5mK0OFBr756mqGtjgEQ8YhvV9p/XhGwFbWKb57gnzOifFtQMmm67jJKI4
	 qdHQHPlnxcj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BDBC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702263369.28221.16434616676034377664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f2a05091c7dcbaf9b2af1a028530498ad79bc9ec9e246c4afcd53d5ba18ff3
Date: Tue, 18 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787022633
