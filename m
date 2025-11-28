Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E581D5CC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764313374; cv=none; b=QABLd0JH3nBLduemULSwzBRHjskwKy9Y/kM5mFhP5++vdtOzj/mYx2i4XvZf0K9YlM7sRaiflPAWZRIawrMl+mZPnBTKuaIWNLi6UUqTJMOv1F6qaMDLkdvTiVMmUvDEj3kHwM2RoHXti1ZmDaHAvfG0bx8sh73XeIc7gtMD0dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764313374; c=relaxed/simple;
	bh=sT+tlFPHafdwLjhdc+JoeqdCM/ppfIkHENSXrdd7yLM=;
	h=To:Subject:From:Message-Id:Date; b=HxZhnDdTUjacEANCIZ541rv7ZT7Rh7OkZ4p/gSQO+YXORkzQ02xTGuIrezaAA47M9QMUP7xfJH1m8kMD8X8pVpXKk5bmrBunJN4r4hE3g+pReQansOqShSc+6uLERi2eH8ppHjj257gbQ+gnc2d0sMcRmgVnieiOYzlYYepdZi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBdXqOmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBdXqOmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F712C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764313373;
	bh=sT+tlFPHafdwLjhdc+JoeqdCM/ppfIkHENSXrdd7yLM=;
	h=To:Subject:From:Date:From;
	b=GBdXqOmPOuaXFcU1wQ6ba2aJ8UqzdM4brHighTx30R5UneWVQyzKTFzB3KcLTWRDM
	 VbrK4TQM3SAJHPBy+YQnugWCc9BJOHVtc0bhx3w4XotjZRN1tHn2bVoRzW1YcP+EVQ
	 7TDN25fjBEZQLDsC1SqxBU7FOIlWDoVV7hCGio3ge6HMBskt5AfNDOhPKHNPqJfB7Q
	 fKVq615ReCWlcdyc2F0pz85Q+knkWmhhoqQA5RzuVCtBxJGevzef9GmQ/r8r095cxe
	 v7EEKXxVzl7GzhGoUYHf1A6GySZwcuWOjk4iCM6kfVCaVPrlspnacApaJ1dZoVMF0O
	 coHxKwjaz5hSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B9CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431337358.9640.2056567686123339692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a645a827237111118f002cf84566f405f9bf4c792a6bd712cfe30f6bb29a94
Date: Fri, 28 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764313373
