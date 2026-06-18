Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E31401A25
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781807794; cv=none; b=tgEPrDnqVybm3a70PUnYtjxDRw8phuYYXyFoSk65dSt4gX/fCok2RXi+Qt3tqEFJxvLrbAvQw4nlqifHLZ/UogGE5h3iklrQmxoMeOIiFzlrcjVqnwJG8FMvH1aICsJBQdF1HoML2hXUBfMGe6gSxQb2BeKYpI3L5amZoIb0KPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781807794; c=relaxed/simple;
	bh=zunS18Vy2xM5nk+mnSI6tTLi0EVH2ttj6bLodJjb0mI=;
	h=To:Subject:From:Message-Id:Date; b=sVhXOAq1DDbjR5nqsmxSdbTjS6Jo/3wBlT18R1b7piisWGij10DYpirexc9fiycmFjX0RJl4ZV9eQ55de+58tqPpN//fd+BH8Oy8aO4YbQndNenf5j/sNIFSuD5Ic/sRFNXCYEB5HzDXHSF7w2grrINaaTcmBEFkHgWysYhryXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk18JfcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk18JfcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6822C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781807793;
	bh=zunS18Vy2xM5nk+mnSI6tTLi0EVH2ttj6bLodJjb0mI=;
	h=To:Subject:From:Date:From;
	b=Kk18JfcIgd7/1dxJSXtkkmQFHx0BDDz0e5VMdZyE/u7UlXzqMcFno4OmoOVQ+5leS
	 mubGwBK6hWqH3qNweObxoVMsygZ8wCmg1BUau1SoBrFEehjLHhBH1oxAvq7nkGdqai
	 mOddgzCnKhNGPc58QCXHiNu6RDO0B1SGx4W19DkV62izvPyfg7r2Cm2QLjvlUnLphS
	 ETh+TgKWdAbOuvq5gZ3Y1tp8U5/s5vj2wdlQngwmOfru78T/yotNpKQUW5fcj03yaw
	 J29ia2+8wXkEycdmeICIeNXJcWlnr3zSceCkRoiNMtGbyS+vradbcW+eVf42k56ViF
	 sGomhDz0JJEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA370CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180779368.1345.15620233558384741792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1689e365ba91ac0824e5cc4707e977420b6b7d93e11547f51dc25b30892a01e
Date: Thu, 18 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781807793
