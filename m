Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D68172BD0
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726932354; cv=none; b=rn0XD7g/reIQc4Gf6q+uwcXmm1i2AbQMQZ9d8ImLraNKXIItJ+9bMEb9p57j1yaIwK5Dd6iEVCoarIbaLhkXPv3izWxPJXOBlnDpPRrj0jzFAABJ+STk91B+1uiJ1+2cpLKKYH2JTSBwKJer4fGafeXFzpcjVi2Ni4zvcOWrCSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726932354; c=relaxed/simple;
	bh=BSbsrT3uNDXWZ+kaobL6OyluVEMsdt8X8GRvd4E/Fjc=;
	h=To:Subject:From:Message-Id:Date; b=QzCKsbCGSb7dsfp4ThcJ7Y33tnwTwMMF3D2TC1ChPQ5jktJlwiTmQjLpbw+NYjQZmu+EyEbIhV8OFVeudfDzClLSUwKYyWXj4kYHG5ptBQHC8vWEaK9WVh4IekDfzYWGc4Zp4SadlrAl3iUsyJ8vwW8f1Zd5ZdHkPwCrXSfRFt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZcxz3E5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZcxz3E5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726932353;
	bh=BSbsrT3uNDXWZ+kaobL6OyluVEMsdt8X8GRvd4E/Fjc=;
	h=To:Subject:From:Date:From;
	b=cZcxz3E5e065FnGm4mR4NdANke/fnAsjaLrpstAR9z5AK1UhB7WhriInsFQXj44EZ
	 dxBJN0fp06jWQevRVYU0NqyIyvLg3sl0QujAfWNpqHHh3+iqQ0MR6EQumS8sIAAusV
	 GYbkJdo4ef8xTb8dmHpHoZjDM1SvH2BcyQ80jUpoasJhMTAcUbjqaSRg5JSYu3kB+V
	 t5ManMmqCrJZWBy7ew8vwzTI0MCTxCKaiXk9FI2MM2r8Map+jo9hBp9TgX1n6Lblxw
	 8oBMZz/xspDkjnqq/74UQtmJgTthLFwMfqbo3qvY+hc5qkeayiLZau31NrWwdkozQw
	 3qrjAG6rpwCAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95236CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693235359.32679.1724635848788519925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992163645504a16d9e4d77c5b8796e54f4dba703fbb95ae39acdc0494ce284d8
Date: Sat, 21 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726932353
