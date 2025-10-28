Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE11A9F9F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761668994; cv=none; b=Dk4+VbNQ8O3MKUf/ZgTWuyBNkH0Z6W+1Z/jpqk7j73Tftu18U2w0CFLSDr9vItJ5WzMiR/B2/kL6UJa94mT6VLys+lEgo8TULhDZpt1Eucx5fTy7IicUoYNbr1lNxlpeTxwkZQgbDC0ooGMmQbEtAutwjraymTzagXZKJNVCdfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761668994; c=relaxed/simple;
	bh=nuKUFd1BTzPjR1WZTevRoJ1vMLm5NMJSMi56zBIXcLI=;
	h=To:Subject:From:Message-Id:Date; b=dpx+CUABFa/CZMDqtLkqNViBx/k0uqF8eaAEf+EEG8CpYeiVOAcTO3m0qMgYV6FR/vLIWH4Glh6NAPFOfwAreLGr1SVlaDGW0ckKWvF44G9Tp4BGCphl63YHWX5CsGKmD/Uwvvrv+mM/ZHk9iSnOOCmyCWEdXpuNKU/RFj396xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L39pwi8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L39pwi8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761668993;
	bh=nuKUFd1BTzPjR1WZTevRoJ1vMLm5NMJSMi56zBIXcLI=;
	h=To:Subject:From:Date:From;
	b=L39pwi8koo5+D2HUfjQJ5ozAp7o7G6llav/wzsHksgthH6rJdnvLibMdeth38zK+U
	 RkxfWLQEBXwRn+yhMMoinpv68OACa5CqQHEjp5BSM/BUcMqp1wEPZDRk0OGrl+mPIB
	 HZJYVDE/xHcT4PIaH5zMYsEqFxhdC4ermDzatB+n6Mippc/U7zK8IDZQlR+4cWNSMg
	 NMTIKiqCSS0MC8S5HSAJLulqNUh9VSaINcBkJgAoj3bSDb0xXubdSDz72KPUOLP1c4
	 elDwIDKilM3TymeVp+GOoWd/x0GHc78APXxZiuhcJ1kXcDpbwf7j1xnXGmfWmjb7KS
	 9kbmK1L/ELoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE21CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166899358.24279.1737589922426436761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b33f97384efd6ac5cf911f5f84ad93971c723b7bda35f9f0ca441619c6dfd6
Date: Tue, 28 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761668993
