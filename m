Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707126A0EB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755086394; cv=none; b=DKiE4vM6HGo1bzZGXCBbSaKwhI1hWId6arkwYQkC7YnVU55tdpgPJG2ohjs5T3T30uZpk8uA2eT1CEhzqzhUFpM+yjdjyLOkqPOnqrvcjOolmzz041/YtRxG9nJ+cUsvdq09hPdI8GRkLBkTPkhI1VK+y3vahQ/1nGpmbKx+bpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755086394; c=relaxed/simple;
	bh=va9jmJCJYxBpgkHsct/wsR95Oswxa5M7YU8iUybXRYE=;
	h=To:Subject:From:Message-Id:Date; b=fEIO7RHr5yEdyQFsZj/52pUDJh5SGuYyMjbSB/5wWmNjI5JMN2B0Y4ImpWEk1n+WwVI+vvOa3Q68JTDSOLR/+fy1Olb1xh95mKQzoMi8XznrHdfGWj0dNNEa9SzvOThEl0A949+sLMFllsOz4hiWHP6GrzWIdhr0xSr2X1/SP08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n41UCBL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n41UCBL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CBCC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755086393;
	bh=va9jmJCJYxBpgkHsct/wsR95Oswxa5M7YU8iUybXRYE=;
	h=To:Subject:From:Date:From;
	b=n41UCBL0SrXNekc9rkQJpZdL31Id8HTTNdIh43dQCR7xn/n/d/k46HHfl2a7qG6Xw
	 i1aGHZ66wn1Fu63DWA2omaALFu8TrOdeORyZxJevgbCrgrZtR3x2zw6O/xq8h+tCL3
	 8lWSkUE10qYkLCxTRHwecexNEnF4f37UJQG0zmi50sxyOKalIbkN7vAPiQ5LLB8MKL
	 LNR17jvLXjTq9xBLFGAFOR7lKSG+6NPXW8+SmcPsAOwKAFl3uEuWSz28gsZ89XeAw/
	 CPYQjubYvh/pPR8Mozd38RZKNfSf19fnTvem8eFICGNjaQMmtcviEak0aGjHoODMJq
	 z41iiMBNBYuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0FC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508639358.21980.10805664570772283602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daeb60e555edce3cd25656e39497d2b311c414c511a719ad09ae8d8870deca2f
Date: Wed, 13 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755086393
