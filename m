Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0422DA0F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364994; cv=none; b=d7UNNvLSay+a+x21eq0XkUlim0WAsSrI2U7c93By2cVRYNPbV48bpTxbMS3IVYkkO0dqdhj98NhBmoF7Dql6qb0bn8I/F8xD6GkR2hOlRne1SpnaKIycsJ3PLlpl8XQ9mUZ4awAsl+TRxPnrDByO96QaTO7B27gHrUrKGK5q4N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364994; c=relaxed/simple;
	bh=YUpSGIy2l+f7M5b6wGX2XMRWA7cdf0upuDT7UAcS70A=;
	h=To:Subject:From:Message-Id:Date; b=lrHAgMGEUuBJRhhUKndyJAzcLA0wO8mB73kPqVGW8AyY/p9HL/iNgpNePws20HjN6EEk+OoFesAF76ZLyPXKk0olsm7v0ARl3zH2EtA7NSEjlf0Cjrp+yZoscK8BS2k+W2qObfacmjPF5AEitoRrvIpMCAKFxlZBsrszx4g8bKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzyYv1zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzyYv1zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6111C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747364993;
	bh=YUpSGIy2l+f7M5b6wGX2XMRWA7cdf0upuDT7UAcS70A=;
	h=To:Subject:From:Date:From;
	b=qzyYv1zTXEy8P7f06SougCoGvWucJ7H2VZVvhlHapt0dRnSo6fIXnt4c8BrWakHZy
	 2PnV+OY8MmcUVHifm4pgWEFOogibX/Nu7t4VkrlbxZFDPb0vZXOi3zV/6dodCQKPnN
	 q8HdXw8DCtIeynlUcbXbUC02wwH/DdsjL59Z+9eODZoVUGe1k2dU+PSG+f373CTd4F
	 /X9kE9Zy/IKhSoNObT7Dl4BMCxg8wQYSPVlMzDyhbUdgazR7SgDqVbZDiOTb1c7E2r
	 G8/ejgskxyG4vaGpT9iSoATanmz4EdALp6PenTqvK+7SFN8FZYAFZq7/I7zJ7QrAyr
	 p6s02jI/PXu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C3C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736499358.21324.1457470612132943350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3803ee4c6c1f1e89475f21dacafc46928f74f9b6d604a3bcdbb4b8270f6c0fcf
Date: Fri, 16 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747364993
