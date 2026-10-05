Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534DA485CCB
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791223834; cv=none; b=q6PaAw2ZrGcarvcsmgc/9kdUJ7deNgIvvLLB4A6FtzZj8CP3h3Z+Y2Aqn1vS0a0EB3y9EeAe90+SMT/E2toJfMtsjwzsp+YKDJZQ3SaH+2mpsc9hk4CcDb1ahGnQUyzfFPRce61kjibBsc8ZnabI27heL5oewKf5cgYMVw0BImQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791223834; c=relaxed/simple;
	bh=S9fnaD+WJaABHERI/0tkn+96/L0Q43QygelbsF9ywfY=;
	h=To:Subject:From:Message-Id:Date; b=Rm5LaODrqSvWb1VvxB/+EhMhmCWnuciw1Gk5nTgv6XHt6OmxxRl5tIGqnLUE8HXoBBkkLdgP8REANY1cIqO1WozMbjJGL3a+r9mBfpUo5Tc+2+jbYpS/zDhEWbOBOsdVhiG1XHJIRp4Dp6iNibFQN9mpaJ6rHkZzV0OnS+Pwa5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC+MBhG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC+MBhG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B8FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791223833;
	bh=S9fnaD+WJaABHERI/0tkn+96/L0Q43QygelbsF9ywfY=;
	h=To:Subject:From:Date:From;
	b=SC+MBhG1TsLHgs9ZSo1U/soo2EdQD7NrUdrTUsM2gi4I4SXXhmMh1bSQMQw0u0HqQ
	 a/eb0CNjTMZROIVdpOsfI4Iyv0umACia/GMLKPYhgli3gE8TWWfj5a66JG2cpMZGYc
	 YpIFcyxI/yY3Q4ljNAVKOQxhk7jQ+LPjsSPte1EQZmy7rgqa4haFRnJBGZZeetN//h
	 3fGUblsXZu9bJ9vYtPhvfxC7NGZLZhLdPmuDdF1ASKVnwrQm4iCmLnJ7RPOmk7lqFW
	 2Mhu3PMKK3hn2uByfEmIL2Ej0o+L+QWj0sM/Umq/faC0q0hKzVNgBTmqq32ayilpA5
	 Gf6glgGPJulnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB891CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122383369.31993.10574670923152018209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20b0717414fdd5925e6b5c4118f6e7bc96af356be39b23374f724baa0418799
Date: Mon, 05 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791223833
