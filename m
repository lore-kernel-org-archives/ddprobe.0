Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94B1F4CAE
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761517794; cv=none; b=nErxuF0YOWgk7jxNiFRJC/GmQSsjbtMHoUYV+TGTmaHAi4d2BqiEsxLfZKXkKDA6OD1zbW0+X4A42mh4pD/7JCm6dwd9viXSDh40vpKWN2zDbKQNcrMiLSY+01FMZH8UYM3gHBHErz0csa0aaDRrHgjyRCmGZpeVYdbbQMFX20I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761517794; c=relaxed/simple;
	bh=H72FICPgN67dYWxWN57Ab7iAjX7rkanmOFctGV7nvNg=;
	h=To:Subject:From:Message-Id:Date; b=ZAqgczKUyxHmyG6QHEhlJGyulFoyNFZ7Ow6vVMVL0hGb/4jdI5+gQ281TsqzvmJr8SXM/w602YQKkG1Cog52N1uBnFfBaRHcadnpLvy6xG+02RL/o2KaKOygEGShB517S2svNIO8Gd+3MP5SGg459KYqYICNsGxrMFvBWBaLr8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suy0Wy00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suy0Wy00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7088C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761517793;
	bh=H72FICPgN67dYWxWN57Ab7iAjX7rkanmOFctGV7nvNg=;
	h=To:Subject:From:Date:From;
	b=suy0Wy00Ey3NgMNPe+vKnPyerjxMzzCOSQPFidrr5xSodwO2F78G0FinGzrEdkOyO
	 224YE3Xj+gLBhhne/fMd9pm9VJ4MsPE4q/4xfpVCdq3Q3rjwIrBRJYTwStxElTLi+B
	 fj4D9yFrZdhsYDsCmM1QtQDv0oba/+2ibflnVfgQV4iY1s60qEOCoopCWj4F62SwBg
	 nHkC/6XtPtCqRJhgRcRC9z/1juHVF6SQHKqoxRzZnXwTGNBhRNagDi0oXGWera14d3
	 I6w6oAoAL2Ah2w1QMVFeRM0ED9aXCHk/WQrX8pICWHT9qWi5uVza8m99IZHE49N645
	 DUqH2v2Ufx5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317BCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151779359.19640.12919684505525156254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a5416ec9c2d5219f8414c9fae897ef122edf08ddbc074953f8b3e71414a9fe
Date: Sun, 26 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761517793
