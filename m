Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41310214A81
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741017534; cv=none; b=pHjFg2YUpeHLGGqyy0Nj9WgqYH2aGKBHWTvj9+Z8zQQMU5cARCgdN2XM1qgtrOzlwKsCNFIZ8+EHezYvMI8JQClnI5hh5bx+Tx7A2+ibepesJU1/2uma/sM+10qVyDSxAwDof3zrVkuvl5xp7N3UXOHnFAHPmmEzhR6rDSNWETc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741017534; c=relaxed/simple;
	bh=2wChYa7Q8CBMhLzbefRVeS4d40/TvMmu/NIJSl1/YAA=;
	h=To:Subject:From:Message-Id:Date; b=nUDClzdA2nGfKiWlWScbTZe5hT6JJG+BBGkF6KmG8QT7hH4pHccBb/HIHHD+cpp7GQOw1XYDksHC2Hf5njsfPz8p4EtJe1laM953BdGY25hwPfH3bWHi2d747aDxVnHf59KAsHuLlSssWU/UdRVe6T6pX+RBdfbfh3QCxY2U23Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9PTMk3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9PTMk3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B046CC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741017533;
	bh=2wChYa7Q8CBMhLzbefRVeS4d40/TvMmu/NIJSl1/YAA=;
	h=To:Subject:From:Date:From;
	b=A9PTMk3z5TleLLYRD3Dd/UuFHBC6N07WArVrEC5BCiHsdJ++Pn6ipDPgqYHKENm7B
	 2xT+scS9ZuctjpNRrkBeESR62wJwY2ejBcYWV4VhN/lHv1BBxnvpfjCp+1CCNPlp7l
	 XaY8rAzjjTUDcYpc8qTF2NLlnbvS3NVzETeWuNUrb2g5qA987DlrhyznD/2FeOlY3j
	 ucQu76ddlG+gHEl9E8cW8U8udwt+WQKwRvdV5OlmuhK1Oakx7LxtIayVfrTo7Ae5yf
	 FEY85VvrxvidNd8d8ok/31zTAf11czx4xaGrVdLbcXVdcXC9gATZY4iOOqdBz7z//5
	 jHe56PWc0nkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A4AC282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101753359.31699.2519883055655707394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21545a2896b8528c0880b43708aa27faeaf8998b1eb4decf37bb7da8c3bfae26
Date: Mon, 03 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741017533
