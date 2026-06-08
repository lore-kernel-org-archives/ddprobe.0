Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3B93CD8C9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938874; cv=none; b=LjD4S7lyny7QHPZOtj7mgeqRmOWcmrS/UhYkiylHg2BuKwy/KKIPP/eEg/4rjfMtuLCovgR1/RnPe5U6pzPO9ZmUH3BhPPv9CZDJcqn/dlJcFrWV4DXOvetro8fNuU68dtZFubKjNgM6K0yYamLRLc8DB9bSoNIeXXGF7D0B13o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938874; c=relaxed/simple;
	bh=+ed6MvaFaJYrvDkJE+vrk94ANZwEYF/u2I0qSIbyGeE=;
	h=To:Subject:From:Message-Id:Date; b=fFohfnCLD6OtJPhApkPY6X3ELZ1iuXdbwtX60b0+ilL9G9gMxjkUyU/izZdDSuvwQkElxlc6L0eI5Vsw5rOOS6yVu9KvyhGOeudFjOr39K6Uha3N63Q6quQU0AI84gIXUfGQ2JW2XrgFpvv33nfeqZ7jF5wTOVfJKWf7hj5qndg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPYhMN59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPYhMN59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBBBC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780938873;
	bh=+ed6MvaFaJYrvDkJE+vrk94ANZwEYF/u2I0qSIbyGeE=;
	h=To:Subject:From:Date:From;
	b=cPYhMN597SZ+2rNrwCDQb87gnCRTlbzIuLVlud2uFgm+43DPCKFRanZfiLbWZZ3/r
	 Akj2pFagASL0dzrKA6lS5obhq7+AhnLMEYFnFQkTV8Di/avJMf6su40HUktndKALsa
	 JDxw9liXiCH8blgA4t4yqwv4PX0jF3hicBvqefieR0jvzZym4CVrFkAorJYwj+D2vS
	 hotYsUzAzKqfoxq9kzXOrCtFuwI4FkBhvlMUq2WtDPhESjXjZrPlGJdcLF71msN15T
	 JQ4mCsyzUf8vucKcQpcW9L/MrJnIuEYW2EtGzR3WSk2bBv7y62t7XCcrIcamd0/myh
	 KR69vZGMzmWpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2865CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093887371.17736.8196344691704635425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acc3e28ddff76750b9cbcecd0ea99f808ebda6ee0aaea23552d6792ad1eec3c
Date: Mon, 08 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780938873
