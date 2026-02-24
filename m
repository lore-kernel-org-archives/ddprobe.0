Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1085B23EAA0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955694; cv=none; b=GODw0JCsQbaE3g1QqBRzTKma/28yQ2KXRT4yUgnZpCMKRrNxocNU0L5bSSIdQK8cjb1DUWWdb2go8ASAKboIPWfmC8fSTPH377xTVGRaxvm3MaIU608qwHcV30i/ksKnGT/SyZAlI7jfbTcp5ELJi3dYkWjvx83O74QUeyBw2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955694; c=relaxed/simple;
	bh=JVMr5HgStI5LBJkHlHYF7JQB9kChMEnq80Q+2fmMmvY=;
	h=To:Subject:From:Message-Id:Date; b=G5LHV16LWMwOZHJL70EnCy6Y1NXRhRV1dSsuCZ23Yyry4uRlB0IheX8ZOp5Gu0zvQjJYFmkWLzm/VckIOHFb7I2LGjiuWfEfV2I4lL1xOB5dFuith92ml4rbC45pY24tXiZmT1C2YOY0cPnAZbb08tMhxZ+rHCw8EAWe5o8HFwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKUw7fF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKUw7fF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F72DC19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955693;
	bh=JVMr5HgStI5LBJkHlHYF7JQB9kChMEnq80Q+2fmMmvY=;
	h=To:Subject:From:Date:From;
	b=oKUw7fF8GF/EP5Hnb7ABnsWsM/PKuPLKdRNqJmYddVGAYrIFcU/5Ypo9lU4YJZp2H
	 q3Kq4XSWCLQ4BUgt/zLv0J6pZoFdAbf1rfHhtUAWrmViT4d9cCrhpbzjQdqrnLpmM5
	 SCS3u9aHla0pG1bFJfB4nrTM82zkzQ9lCxuq1BqOolk8EEXwgdm4k4rekXklJVKSes
	 FIEGvCCGa7JG289P7ZNi3+Ml0ksgXAAX/ApOAYaFhBsCk8cGMgztYry6+KnzcVAXNL
	 rRZKXj5ZyyY/R4s0+uuqMFva2NEgSYUViwnNFhjhS0VRi++LkFz3+7TF43Uh2mraZ1
	 YG8I6g4bRuP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91072F4BB6A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195569358.15553.1132174536513359245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a16d399058e42e2ca811bb9c21c082d8514c681f7de2ffc316dbd88e6cbc159
Date: Tue, 24 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771955693
