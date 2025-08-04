Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210ED1E4A4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754321394; cv=none; b=Qlo5XHtcRNxcJRf5RJj6zyWAIbXsk/K8OyabNXUiaqJTEZ/Aspas1iL73RbYrVFWH3wTwEcbsl+652edmoPh/x5FbRe1IT7vPeP+5qSRu9zZg66by7QSHnvxlfXOl04Uk1koOKqM0KcWvbALhzPLKjwQ0+2w/ufc0A/6HyNO2RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754321394; c=relaxed/simple;
	bh=d4QnVE+AeC7ALXocOCGX3udW7WU1KIHOS8Xcg/o72Bs=;
	h=To:Subject:From:Message-Id:Date; b=gSOPCdM9ykT1lyMZXkPmVda4pd5rfmYV9D2mzW6u1XrsdyOGCRXQUIaIYXw8CYCg83W/2Qbjp6uscJIsvxSMrZA4Wj59PVb27TyMJAQiUNnT12OhsTSDpmCYF+tZ5Tth7ZfhPIi+nxDbM3IX2iS1Ujfe5aZhziCl3NsCbVLGX7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHYHFjB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHYHFjB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754321393;
	bh=d4QnVE+AeC7ALXocOCGX3udW7WU1KIHOS8Xcg/o72Bs=;
	h=To:Subject:From:Date:From;
	b=gHYHFjB98wJcDG8nXoxnhp5cP3k1FDMbKc54xHjTL0wn5o6+5MSfPZAcW4cJMG/oo
	 Nc+E5mmIGlZ25Tg1C/qarQ/mzRK//inf8eY5CfcJrqFAZhDOA4MgFIyn8Oj4qT1dZF
	 e5XalrqVgr45mA6wKtDENvyn2+7zLvHntDmKAkRrbnAxroIo3JxPecxiNfyIynEBqm
	 YX9NTNvIzOrXPp8g4z2WAMrJyYKfVN0N1wy/PNBD4vqtGK4/g5R2h2oHNvcBezUvAE
	 YQ2eDV8+RdNN2gBjqY3cMnBCntXQtbW6hsS5CqsyoXOWsbm/QQ/6Xsluk4On/dUapR
	 P+lgKZpI71i6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F638C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432139357.25530.5984653853500983029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb135f37811fbcb8d5b0f6dcd0de7f1eb54ed00db46095c7012c417e3b522a33
Date: Mon, 04 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754321393
