Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E41199920
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733414153; cv=none; b=gjdJumRC5eohp9r97q7XxqCCl8sKKeqGWQR0ctrv/wOAlE64soK+4QaGMaWiSMTXQIcJCtuPgLhg+t7hdcK6LlwvXnDe3YGNpah1gnSKd8IW11vosAA9jZygsCal8HlFybuiPSOhLaoonYKp1gj3kxpRPFCYawyEnHHRsy52awQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733414153; c=relaxed/simple;
	bh=MAEUu14RbKNxyXK9bU7/eOe2YdRiRVv8h0XJF10iDnM=;
	h=To:Subject:From:Message-Id:Date; b=JNFIIuMwywctCxwula8HIckOWpth+Uw/ZcKzcxdfBSVGO5OOjO0509kMeYKwvqunCEMUYirSFDny5Kzci5567LRAO7qA+gYhsYLu8Wj0/9TUC5bkl6tHtb4C6yhpddi2gjoEtZQOo/T4YnEkqa3WQ5oH/dEXWK5l5vrpZoqdHEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cuxwe7CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cuxwe7CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA00C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733414153;
	bh=MAEUu14RbKNxyXK9bU7/eOe2YdRiRVv8h0XJF10iDnM=;
	h=To:Subject:From:Date:From;
	b=Cuxwe7CZz6x6bKaJ50DTDNY4CRA02wx8p31w6MRgssezip2ZypVmpC6GRda/clviA
	 I497WK2OcOjVLp5QvDo+cm2gg0YZ1Bg6+v9vLVrjZcKb1VZLfqRCEgpyWm2m1aM6Yo
	 TZQxsLXSY6dBGgQ6lDjKMvf4dHmAOa88N0C2Mht/Nh1DHQKiDyAZErJuN03xsRrO8e
	 ETT0ZIqMu77Shl4/n4n75QH+cOPyc4lj8RllLA+EJ8e3i0edxfelDO4H3Dg14ThUNa
	 oSQwjx5F2w44J+hwwGvfb0u8gKzSAJxwog+a0J0jOb1BxCXGINT2YTofdz4WUY3YTz
	 vfHpktHE8OQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B58E7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341415364.12531.16866652555719207315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d3292dd1a93933301d36cfe8cc1c5f1d0a80293538a22ee93667084510f23a
Date: Thu, 05 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733414153
