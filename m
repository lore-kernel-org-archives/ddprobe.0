Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508518BEE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714360943; cv=none; b=LFuiqwn+zUcjjR1dVQ6TVNVi2xQXzmzla7Q5kTu5y4tSjiJtvRyADu2M8POF1duaF3qmqbkO9v510fMWbPVHWR179ocIc1mSs+kRYlwyIUDknyjmgVdWS/JJaUf6g37N4wF1rZjp0mvMj8xMQgTe+g524laVh/pqpDcAMqFEioE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714360943; c=relaxed/simple;
	bh=I5e+To30lshbO7TrrwDbayprLy4SwtY9pFqT1gHNhZE=;
	h=To:Subject:From:Message-Id:Date; b=c7//0lchA4NEboxZtBaj6VLp83O3ytok8TWa0OlNP+90BKYBSaI29ayXe56+Gygvnvcg7KIL2bnx3Un4tkCwlFjNkL1j1A9peRhHJDbX5+yCbqw2eM/ZqfikgCxzY6Cu+2wCG5oB6BBhCPcPLaY3yxuk93147errnrH1ixi8fvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU3spDiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU3spDiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99FCC113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714360942;
	bh=I5e+To30lshbO7TrrwDbayprLy4SwtY9pFqT1gHNhZE=;
	h=To:Subject:From:Date:From;
	b=pU3spDiuIPLkfSBRo/Myx8HCfIa9SspMdXNCwGq0NCQniwR3diEgSTqJTkLzKK+6Q
	 hQWZ0ujy8tBoAONW+66+Urd1y1dmr6rn9pjNcvaT0sqrua5AG6hWXobnUO/+uLbht5
	 rHNcvf1kiWW2UdzF/7LI9XPwhoAUPHF+0l5N6XDuDkaF7LxY27aKWJO7q3VGCwWbqB
	 KikQyB1oMCP2vqKvd0N2bGqGUY5ZZ/Oouee99OCbo3xpGBPh4r60S1in28R0KWazfa
	 xO3ihX61/iAeFO4K5ySdoqp3/pbYdPwHEyPcmY6mHBC9AxOwJnX7cgFaudrEop7GJE
	 urxaRCS4ukkQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A2AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436094278.18574.11842944784346805748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c852591eaf20ce9faa763c7d9e33aa9796a3daaf0551f3b40714bce6c04a6dee
Date: Mon, 29 Apr 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714360942
