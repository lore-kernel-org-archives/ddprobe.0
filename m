Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718BD128377
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713266963; cv=none; b=Q++PZb+9LDYZN08/ZHdv9BHk8sa+q2+qK39uhP4oV5u6b5pSN+mGncMBt/4eZ6j2W01RHQcFgNDPhoas2Clf6i37L5oeLQBVZVqdTZFmD96lSE0/SDoP99BQ/PEWnrqYOZYmp/E7ibXOkHRPRH3w7VLuoelxF7KKinBk4eQ0goc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713266963; c=relaxed/simple;
	bh=lw/KDo1F5SC8ijrKdcmg7lReRbWgmP3LkuA6pRmNrPU=;
	h=To:Subject:From:Message-Id:Date; b=oVOZ2Qpz90R3PJ4dXc5VjB0y5KqfDbFhVTgOKSKS/50AWVHaim7lJ+w1bRldeLBXPx7nMqPsBvdd8cIR++WsUjlVaZ4KHpZz1iwx3c2L8NxuLzcFIioPWC4XjolfJ46alnWXdkxvIG+omqb+VwDnpHCX2rMOE3I81Ov9SYCOe1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enUNPk7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enUNPk7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F35B6C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713266963;
	bh=lw/KDo1F5SC8ijrKdcmg7lReRbWgmP3LkuA6pRmNrPU=;
	h=To:Subject:From:Date:From;
	b=enUNPk7rWcJi/5wYV7dWicykniZ7XnBM0CqZ+r+ggneFs9OWynLbLCalOnYXkHjZk
	 JWNR1W9Mxxkc6wTLFIBbkzWbuCn2QsDJxQbg0sF4xMtJ6joUUAsAuKkIWxfmqmmAnF
	 3O4So8M5AVc0wdwMNC6WXIzsbhBNNF9WDEo3OK/PVbw/BUYNjAnh83ZP553/IOhzLC
	 zEMNMpL7LCDgOsqIrbSRnZPZTqhLYdyuLpx2d25NMiJqA6GVQlEyW46Kha9fDWVRgk
	 h99FLmnj+F4jyuXbSuzolUm3ZI+Cq2bOPEwQxc0wSVUYMI//BjII5qUPxVOd5Vxw31
	 3ZzpoAk6HeOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1ECAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326696284.28005.13445064940451974230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668c8256608612f2fd644407224b90ced15a34656a0554402eda57de1d944423
Date: Tue, 16 Apr 2024 11:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713266962
