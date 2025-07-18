Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124B321FF2A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752877194; cv=none; b=Tz14u0F/QFyQSMu0yczsRkTsWV5aaDo/h7aNNLcmFY3EEQfy4zqu6TygorYfQsbOoKXmMLrcffD+mMNf478vGvX3KHWVnACRhrBSRF8zLcLjVG0DChzITWwhgLEHyBK2CXnGJnM3cHF2uOiSMiakgzxWZ+SzuclETbjFCV7/OZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752877194; c=relaxed/simple;
	bh=3ZUl+lCgwDXWdbIxuK6NzE+0Jf9PSID9ae8n9O656Ps=;
	h=To:Subject:From:Message-Id:Date; b=tClITLn1xXXQlaXUcgheM6MPnno8RAHu6pQHpqW9DOq2JoV1moi3YVCuSNFL84dI2xDcRbkUyvncVIF1pAI9TS1tVee4bNp5CEWM5Gb+QhXCNd66xzmyj8V7+qWrC0QEslpLcoxR5nN7RDnwZA71wkLsipLM6amX+x0I3Duek3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/M1yUwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/M1yUwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28BEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752877193;
	bh=3ZUl+lCgwDXWdbIxuK6NzE+0Jf9PSID9ae8n9O656Ps=;
	h=To:Subject:From:Date:From;
	b=D/M1yUwLBcsfJsh+S0UUM55puyhcMasAVh4CpoSwSOAYSCcMbCBOlIG6wJbEQ39oh
	 m9p8ECV1CLc6rVvCFnNZCtcHUw19jkuS3qB1IlyeWbv65E7cz877JSEUgDVcfBAeXb
	 ceNDj2EA9/N8zmaqGXHL8NLL+lHZie3SRWCBMakGi63zTi/pQxbfxtsmwgSYxFL7Yg
	 5e+0IiR49NJ4g07+r/NcMnZkfhAfVuNvxzxkCaQx28NCjnB4/Qae0hUNMzW7wxkudx
	 1GEMavqZeXf1LSd4fT/3BCEui/QEVdb70wBTL2pNjQKy80aZeve+KBOB8EtuE/hDBJ
	 ikS0sE+Nk/auw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085CC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287719358.10283.13660385042323703162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9121a747171e7a02fe8bb2aa4150a0bb534c736e97d2825caae6d63817f20710
Date: Fri, 18 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752877193
