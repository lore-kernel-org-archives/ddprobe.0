Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4221B261B70
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762240194; cv=none; b=FPMMSp0TJX/4OI4nehZeq2JWbE2SLAT2j8IRQv8kPXQQOFWjIDDCO9TFYSGLWRFAk8552f9bFG2LonfusLmr1qqXkqe1+fxxhHOEqhUTOFmiQNUw/+gqhYPFafyO+1vRXg8xsL8xLjv/qlhHHX3TDMmkO4vUtQgAVi15pp39AaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762240194; c=relaxed/simple;
	bh=582Lrr28eTgPTKH53gLMrFSGvI9/HhdvWLfFDM7LLBs=;
	h=To:Subject:From:Message-Id:Date; b=Kd7xCAkHQm8XtZVsiW8gzpfzmWKdNj3UUEg3Q+fMegUZhv6yiQSPA4dUQXUQNfk9YY+RxYqsHzQ5mH90m36vlGd3MYAMxB8p7QQ6krl3O1HiprKv1Y+ZfbTj3Cp1t7+onrKrOpJC4PssK2a9lQJgEoKl7MkBsYVqk0Tql1aLvho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLzse0SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLzse0SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762240193;
	bh=582Lrr28eTgPTKH53gLMrFSGvI9/HhdvWLfFDM7LLBs=;
	h=To:Subject:From:Date:From;
	b=jLzse0SZA7GFLYhn0MJ2FxsTlAq+7n+QCwbwcCSD4Yhy8DwS2YaIYUcqArQql2HZ0
	 yyGrpZDgT8G1H6jLAlY9ZCseSzcrkRCYWTKcIXsquwoRJJMeJZuCuqvV9v1giedkrr
	 mxJ7ymmM/Nq1l2GLh3rwU2c3UYiv1zk5rkSOdgxNwRk3Y8ZhkI6/1xE3csb0xLvloH
	 rKwRV2j007P0/TxFUsjTlSdK/iAzvuP9bnPT9iDdU64zRmsa0fxgk0Vll2416gml93
	 w2xvD6RatSxNsoySq1B+8jUeASqkQCrrjMJDc7j13FcS37IwJTm3Ng10mRBB8LCYeb
	 x8xHTp7TZFzDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B0CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224019359.24162.14571923071628308843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07514870cb254f898ad98be39177e19d73a338e3a890606d02c682d46b854c2
Date: Tue, 04 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762240193
