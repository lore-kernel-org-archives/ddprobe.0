Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5131F239B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753756194; cv=none; b=s56Qki5fMeLvUgU+IuQ6W/7Mm4ilDtcEgllyd/CVP6wJftON6Csep6hFSRrCw6YQ9/qq8pwTRNfc+M5HVT22bGPyseOH/lIDNTVr60oxys28OQVtEAYJAoIrM7E37DVLOGbowVzWhi5UCc/WLAG/PQe8hYyaJMhLC3oWR4caKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753756194; c=relaxed/simple;
	bh=KC4Dgz2qMDkc0h6S+nlZIdKFCah3TmnzL4PcbE8uVAo=;
	h=To:Subject:From:Message-Id:Date; b=dkjSV7luORNu8LgxvDSLaVsQfZjXhyRrXRqdh2uM0EJhoMw5tHaiQL4Aqnx1h9KV9eaaxEHBsDimxntRC6XawgTpb0EUCYA0bluUHZ+EWxbbsvUMoZ40mlx2wc4S8BboDB1ZBF1Fb9KcTRQjjPq+/kKihxljICjeyhHZAItwW9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2FpcFYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2FpcFYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F309C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753756193;
	bh=KC4Dgz2qMDkc0h6S+nlZIdKFCah3TmnzL4PcbE8uVAo=;
	h=To:Subject:From:Date:From;
	b=V2FpcFYcsNfj0V378bEpZwE+DT1RdmgaClSAj02K/bzcgBrrhQvyf0D8YLKPeR/bo
	 U+0PCet34pnFXuIuyxsHmBLps/n4PjbfM9IK0MsUgF1vLDN8j+LhVisejoVqBeXGiO
	 dk3mlP4fT6CNC0Av390o2VlbsZdS5ZjsWwPmKd1DFhW9VZD/lDpKgfM50jIfcMudEH
	 ZYZBr/X9TPXGwlWSwTJcSHeJ2+1q5C823DXaZdkLfwJZ0fjNnefM82ewhukf8VeHDr
	 FfE6eF/uO5LikQI29X6YRLY9Nf0OXxc6o6iZzwfnXdx5lpKGCBuxCBIMpOx8S6gtWo
	 exvojJb7afXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375619357.1322.16040621625547483227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6038a9cdff897ef553022d27f78726a05996252a193755eec97f4be244a8b7
Date: Tue, 29 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753756193
