Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A207FBA2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762413594; cv=none; b=I09QdvwN3CNjMa+BvzGhUstQnwjW/pb8Pnqn1Cz79GHHYBR1ccbenHK36n0afQmOfOnigAn2B6JvbYKKFwcTIcXLqOPhqyfKyL9k+jlspaDseEUD+ubCST9Kj92aEyWLuYha89nKUtxjtESBJ65n7nKvVCfsztmQ2G4kRn8BxvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762413594; c=relaxed/simple;
	bh=ZfssBMPADtu2jONqYGqmrA5TUxddgO+R0y3WCbelAmI=;
	h=To:Subject:From:Message-Id:Date; b=KrtoXVcOR1/FQPt3E9hmrL2B5bD7Tw3+fL3ePu4AiiFqdHrp9MHqxgtZ2S0MGr2Y1FJtNWFkAiQHwGDvIx8r2292R9ffzq8oECaTwXlRpCBCG3gDAnk+AqLpQ5+9/mKjTldwXXaxhhWjDR/ixNffGaarfJzHLO0ZnJrcbOcs2oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eElaZzDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eElaZzDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B010EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762413593;
	bh=ZfssBMPADtu2jONqYGqmrA5TUxddgO+R0y3WCbelAmI=;
	h=To:Subject:From:Date:From;
	b=eElaZzDNP/jIB+Qh2316+dxiQ5bJTkIaXaUciH9dUbFS26cwQUmqoLZUmbrrlPeQ4
	 f5wqU03Kl1Dk/nm0zzahScsX4a2pq79oLI/CjLDxUkYeCI6aOqvjKexFcy8JLhILQ/
	 z0znhiRi4X1A/EofVfTcccablp3PTTYTOJ4T6K1+gmW74OnTr9SlrbyzHYK/amWWN7
	 gfVqeUjtFgEUj+lsiOI1qWDWHU93XAsGLGchT38l43L8A1QcOjpF7djU0IozXSE9P2
	 a2870kUn3ikmvdSpGp2NFjzsELlHDUNJfvb8ExhwfecvTetNujnM3ZAHNXz3PaR4cq
	 7jWVUxsSYSETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AA5CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241359358.7084.2648433373431779406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b1075e9c0479ace737c6829c6f09f40f57e189bbf3d2e8f4244b7a1ca8840c
Date: Thu, 06 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762413593
