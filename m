Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7479412E75
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714625543; cv=none; b=Sh5lLgKnyNEnFcLKv8zcGnn8cMwkFq3L55BOMCqg6TNxk0naLxTvz1d/MciTRMmEaGH9ltTZfi4k2dJKJv52+MCdYBnryzsA6wwrBj3SFA7AF7xYAturLFAhiqL5TJyq6N9E5M81BOFR1CEoL/+DEFugYrmU0HTRuZzmNPd7YVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714625543; c=relaxed/simple;
	bh=3HjRBmoEQ2VouakwD/egizdlKDrk+0sYnXZMEzyuf0E=;
	h=To:Subject:From:Message-Id:Date; b=e5KK/CbI5319nkFBtF9HgMJqqluWUd79GT4LAZhljPNailVd1ethmHi54tcYFwpQrChAyXx4GPt2MxXUmNFkM9gRkJ3Y/tn6TzA9j/NOyWGVI2f4h4ToYhIONAord6WQWzUFD8qt8q7zhHSUoUXU+1OqkJznHIYSaLKwlUDvIqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0VDcyHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0VDcyHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB690C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714625543;
	bh=3HjRBmoEQ2VouakwD/egizdlKDrk+0sYnXZMEzyuf0E=;
	h=To:Subject:From:Date:From;
	b=f0VDcyHz3rLue89MU71b4XU/Jvf0eMKBZVoRr+ULzFOE4es+1YgP1LztEeP/JgW1b
	 xnKZYq09ok6YukdPJryWLnUgjnBNnMPDyuO7beVY4eg7K4UOu05Nbx+Q00MZ2KcpK9
	 7+OqQnstHFPHGF4qMFqHdGGNk+F2BiRLjPwIPfLTnB7xCFymIDyairAzZuy0DRpKYr
	 61lb3h7iGZjqiJ0nQxozsUiWTVj65C6eGknVIaI2VB8GLQe7/C83D1xjqnxxIrwM0y
	 mD0Ou/aWFbZCFWZ1RUlLKQyWIuvIWsenmrWKX6LAJEmUDoX+gDq2ZKLTkHFXoDfPtA
	 yhkZaB3/BqFqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0CE0C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462554281.2555.365039738378026973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82f1566b6f004984b867d723923da8e0087d2537d4022ff80797d8716207278
Date: Thu, 02 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714625542
