Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD98834DCE9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603393; cv=none; b=ju1bLdaYvhSrIVCF2eEbf+VlgGWUrZhX3Nkakd2+KtF4I9u52/Bz4yAL7hEGHHKuROliTsdev7YWQggEWbEiWQcGqaSbMxHq2o4kMbeTD+Hpo330M/WChJBg0um2FNhnN9pAj3tPIS20N09zjolH50r0CmoMGiFTKRplyCCKlW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603393; c=relaxed/simple;
	bh=Jx15mSp0PXXLccEi3aQp6iTGXJ/1BgU0IcRD6fHoO4Q=;
	h=To:Subject:From:Message-Id:Date; b=NhvM1qrgKazSMcmjfZVKBwVGMiYsIV9Ujnio/XvDgocx7hjy3Bmmb9EWB+Cn5Ox6x3ert57S03aLZrW4yWDhtA2SxH7fWa3/sec+08+PRXR47iS6r/cHtmIysOdI8nJf/HAEgcj/pZ0J0/LQ/uHqeuqxc76xLGa6OaMlzUN9FOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSBt0Jwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSBt0Jwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2451C4CEFC
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757603393;
	bh=Jx15mSp0PXXLccEi3aQp6iTGXJ/1BgU0IcRD6fHoO4Q=;
	h=To:Subject:From:Date:From;
	b=SSBt0JwrNNDVfZb8Uqkfnjspffo6i860jkuoON7l8JPAuUZqp8NGpYqs8qkAdZSNv
	 Agf2/QanlYYov+X4zseDAJdoGvKDEbwETDLqN+Km1JgUmFByJqJlpNmv18Itmw9TWX
	 1jCct1Atcyza31st7rm+R4terGiihcF/i+Z3758X2eEw6evsCbpgBfWh34M7RZJh9n
	 9BQ0b2gdjO+yf9JIwXML8L3n3H/Wbx/J5N4uTi4gprYqR6LNi16Lb1wLMz8zpBt/KP
	 Bu7VHgW6qHnIwQUVCKlyoRy/SiAHULOfoCvWUGXhB3vr12UsuDDkRNvMZRwopZ8OD5
	 KHTk0htcCVibA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EDCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760339357.23656.14585568886014609165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727f1ae50a361efa8da7ed517f0a312d32e6344e8f243e8b1e8ff6205089bdd2
Date: Thu, 11 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757603393
