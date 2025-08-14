Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410463D6D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755143394; cv=none; b=spGvz+r0LaT/M7/6CWMHKctuvhCjeOr1RE/XuItD33/VNQupSMsybs8oOcnRQEo0S5cKTe5Y05m8ywIWuooF+EHV+jc43n+p6xZMk94yMkOUQHqmtdf8lHXfYeunBqGIEz4OOnuDIb9Y0WfMeGlCm0nCVOpU8cXCXT6ZWL6ZHBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755143394; c=relaxed/simple;
	bh=MsrjQARgmgJHaPbH8KxG6U7csydSFjJiBPy/ksEDd2I=;
	h=To:Subject:From:Message-Id:Date; b=RManS2MqXMVmgb6WUXzwo/CPAUPd7FbIqOv4xrRqam3I49DXKXasqqbeEdqOk3pp96ildOlDpVqP/xRepFERz4uDop3bFQz2M030UpelfYLLhQKa+EM23jgxuNUlTxPUErkLNiTBAIh1oozrjFVWVAeAAjUnLpSflEEUcyULwXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+h22NZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+h22NZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071EC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755143393;
	bh=MsrjQARgmgJHaPbH8KxG6U7csydSFjJiBPy/ksEDd2I=;
	h=To:Subject:From:Date:From;
	b=M+h22NZHVTEjzC9iv51umRRyjRVNU3+S0X1ttSM5wNVHh5jVgvHNXe5E6y2dqL4aE
	 EEsg5O4x1fvN1E5a8pGQgQ8lvMNJC+yqZcDbZJPzJdyESpKj3scH2cUQ206e5CQdDH
	 mgqj8aHpTp2iBvZWFWbRVyiRmeXzH+h9dKM9X0PFRJKB8cacvu2fSwWq7vJUboAW+g
	 DQORY0+PAT5DX+gBFHdPLP7uYB3+5RKHX+nJRM/7plJtTg26eGnxpnGyxgnM/nJGaw
	 mEaSQgzVt/LzxojKLxan+aeeaWIfPcPjXkKREz7MIdrlNig9zOeuVfM87xUn1VyBaa
	 WUt65oZ4GNQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB46CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514339357.10690.8105392980853968301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f32bc9b0a1f99673a4a9b24190232917e17d576cd8ab24ec4b07f682cb28087
Date: Thu, 14 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755143393
