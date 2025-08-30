Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261972745E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756517394; cv=none; b=a+U23jFYWuWOnHAWBDuaj0I/6PYVy6VzK2G8Vsqvz2YMnDWcn2sQpi4xXi1d3FS6VpvqJL+s/C1BkNy6R2+CC3vOrhRUb3f93m/MfPJMaPNzyN/q3YnWVfyCk0/EAY5aU2CMmGOrpZ3ZjuwKosrmo/mqaeSXG2JI8VW2WX+UXkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756517394; c=relaxed/simple;
	bh=ECZN5qYWQMCnaLaymRxTH1xTPLpi2coCGr4U6G3PPHE=;
	h=To:Subject:From:Message-Id:Date; b=g1auFm83aPQnsl21gqSc5hKgNQGGv59hDYgO9KxiJWNE81kf1P/nNSeL5xELLx+/Rb5h+Z2Uc9O6Bj5iNHMzL6qw5TVchs7yiIa6mR9Wf4t+rdGARjUA8eUCnIDYiizrJD5oFeigp6N+KogcacuNhvtBvJUGmLDUNseJMEnnh5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyxDRi5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyxDRi5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF19C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756517393;
	bh=ECZN5qYWQMCnaLaymRxTH1xTPLpi2coCGr4U6G3PPHE=;
	h=To:Subject:From:Date:From;
	b=CyxDRi5KNiRrVhK8OOIQpAXrttlNNYjmMjzMqaNzo3blZ3nWmM9e3/EW6B64ekkUv
	 SkW+MqpHsiGOEsD85BATLGo/s6+rsED+a7JrHkXccP5HgdTzSau1FMJCu8XhdqUop6
	 FUHNjChpqmLzXE/5VP/aHwv4e1XUyi0sERtb8112S0z0EvaR4fuvHJyEQ9RnydwJED
	 NRFUuix7Yw9QUoSY8Y2loOIPU6ooZ7PhSzAMqR8tHJ8FSS1idobFW03ucYHTwD51mJ
	 05C8yp/m6nl0B1clajBA00Pbh2h50kdltvETHVUjy7EnJ1DB0YYDR8KVNSvc4pP40h
	 TX8fmDBAdLH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DECA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651739357.9725.9252048896259688827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22e41a411ef70b6361077aeb83cb0e9cf224b0b2cdbc7e4ea6adf4bd050d564
Date: Sat, 30 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756517393
