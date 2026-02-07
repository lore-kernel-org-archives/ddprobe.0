Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE0279DAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770450834; cv=none; b=VG1flQ8OolPNX9xpqdAEUMroMgSEzHT533iERTmTfPSNzO/vnwuL3N/0dGqkjQb6v+f33mhRmpYLjp0kgzqPY1MlQ0lgLCLmQ5bBscjcbfI6vup0Rl0QtgiGy6Zcc6S6CVLBYACS6WX+uAPu34lCpD8ZqBpBokQO146nnfTJBu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770450834; c=relaxed/simple;
	bh=Yn6kmkRNOatqs+4RrDrPR2HUAAlGNba5BHYBvdvLB0s=;
	h=To:Subject:From:Message-Id:Date; b=cWC1GJDy5Tu4UTX0x+DnubtPE3zxZ+0tn9cir3mpVdkGVnWt3lMLeEDgIxHrZDeSqbOxS0fYs4wAy7PTThSCQuq+0wK+6lrWLBBg5xjctjJL52gQ/fXL9RebgN+hGRJcs2aQbDQnvhovgX0x8XcxQkDao3/QOtsiJwIH/b53Y/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldFr2e67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldFr2e67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8C3C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770450833;
	bh=Yn6kmkRNOatqs+4RrDrPR2HUAAlGNba5BHYBvdvLB0s=;
	h=To:Subject:From:Date:From;
	b=ldFr2e67GLcpJ2Zg/t/YLn8L8GqCI+4IJ9acY44x/iS9bVLNRw9TKfTS/ZwzznDp8
	 OrtCU5eJbab7+lE0OTdZ9+S6MLSuRPdYralkaW6piEIcf7MvEHZ7ploFKwGc1BZ4s9
	 5K9Ah5nYPTwxzjR2vnRPt0bXcP5hvdssB11gwu/8mfik/F/rjhfhSK1LVk1RNmGFX7
	 q1Fn549oAjaRmVQWX8jlitJ9amljTPp1f1sQ7E45U21gMxfVSIyeTxwtQNotFCj6Zg
	 qF2RVHq4iu5KzQtAdhlKBSu/iunksMndUyeG++htPYHJoi/i+fVWpWkJ3ylN+uCi/X
	 DWS1SE+oSATdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EA9EE6B7C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045083359.2872.7933028890506406571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8154eca80d021667bcb73390ecd89ca75c0bdef9c66810f8a0abfcebe3c339
Date: Sat, 07 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770450833
