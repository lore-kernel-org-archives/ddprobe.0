Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC75824BF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720444583; cv=none; b=XaJW/wpL3Eo9mfs8/fbQMVlXb5mVrfqzQv4YrbNcapNDgPwDR4oc4t3QfL0NiM/OPv6KaWrKy2CF0v7nriKkfdMahL7D7KYeBHI8poAR7qDkZSBXdxGRT+7P9HBnv4gISbI9mEa3nwDmfAGCvjFCWhopNd1wkV75d0pGnFKqP0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720444583; c=relaxed/simple;
	bh=66cX/4c99G1j4nOT4d5vGJYGS1t2SpuKQgO1Eznmjyc=;
	h=To:Subject:From:Message-Id:Date; b=QaFw53lKQUGFoLeKirP3mHBahWGPNRl2S3kAnxJs1fXIHgGVgyfRDrVDqeyLxjHCDwhwVt8m2hBnggncwyuv8DFktRW2Br7tf3UFEyY/0YbLPeKncWkN5yDxPDtDxj4+OjVjsnGVfkV6bsZHHXng82dX5MfdaNXZGr2APLX0rbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4shp1kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4shp1kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF556C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720444582;
	bh=66cX/4c99G1j4nOT4d5vGJYGS1t2SpuKQgO1Eznmjyc=;
	h=To:Subject:From:Date:From;
	b=I4shp1khO3U/mmshx9mo7TYjGgxLtLN4QFI5y91B3g1TyOctrUl6vdK+/79vdpsFJ
	 CDC2PrVwZMcBwDrOR8vmaU4o5D3Nr4VC39FwPY+0SqedrOQa7q95xKq3pyZ09m7nNl
	 LEefcUb3T9SPPt1DBhe5SFJpGioi+ThqY0d1QGznJmBl1JFdW383xCgIDFwYJj5EVm
	 Dxn8OpBY91g+HNfQgKIiqTsuGXlfZrdjgmVfkBYeYjqLmZFTtBsmCnJMGm5Wy+DLj2
	 RAa7lqtddwis/DaCVtutKF0gOA4Q0ZI1f+nCPjUsmJK4f/+IdTFEuQFi16/P+JSGeN
	 1waV56EjhVHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C724FC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044458279.24483.4791477741295061952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe75f2cbde35c526aed0cecf831a9065de94c1b9d01a9d1e156a50c8ec781c6
Date: Mon, 08 Jul 2024 13:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720444582
