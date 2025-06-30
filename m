Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D7FEAF6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751243394; cv=none; b=fcMimnmRNSIHoIFHHpGgTgctkXV3QLxccqRadojA2uW+m13fh3/v8kcASX+CX1Dn5YomG0k+XHy9jVkZQq3bb87VCDmUiuoKn8xwLBHr9Z1GPtnwT0sfd6ciiZTy5ZelrSCWiwKJteI12mx5kjGy9ib05pRqykTj05EcMzb+vnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751243394; c=relaxed/simple;
	bh=YmOzqfVeojTCqATt5wg3Z8dYsGWHLcFNB217Djmjr7k=;
	h=To:Subject:From:Message-Id:Date; b=cqqfBoX000v4jE4dnFnnkwLfwoqxVwGmiVRO4F9lqIMgoQi9zhe95cUhRBaw07u7lOzA03lHNndN+3tLxMLWFnQOkvKU+Wew8+o5zHlV8acpvKQpj68Go4siRxYQQFL8UqYcv9yVHFpJ6wEx1bQ+KHS2QO/2pN20zhVWF3G0vQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUSU/QaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUSU/QaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7418C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751243393;
	bh=YmOzqfVeojTCqATt5wg3Z8dYsGWHLcFNB217Djmjr7k=;
	h=To:Subject:From:Date:From;
	b=XUSU/QaAGxbCRIznEBVpFnuFFB/OedwRteJyGuJwG2lj/x4CcQlcHhk5YFvs0b2jw
	 fKP5+ZEnusM2ju8+sYYDSUrGZUxiCdRwV+6scAXeulscPOBSBTvAGiWRy4q5MGIhUH
	 0wk2yLV5AprydBsDnMyMQ/7Sexb5CnE7XTxTQRqqkDsz4QJK+mo8cuRON5WrmUzaKL
	 +AI9WDfelmUpf0vFXVai/evgS8nBE1BpyJmHoh/6DSJ8vLdhRjly1+B5pVhoJue2XV
	 7PWZQONTrLF73/X5fRNEApT8Wd1yyJlO002qATQmjEhO2Ei5dp3omuQVODCnYdXvhC
	 UsEq+UH62R92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95278C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124339357.24680.13085955698650264735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbe67ff829666fd1a963e96b40862ed608a8cb2a32ab8caccd278aaeca2b5b6
Date: Mon, 30 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751243393
