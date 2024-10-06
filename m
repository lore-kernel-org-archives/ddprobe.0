Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CEAA29
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728213954; cv=none; b=iYAZTHaTl0AUGJM9rTgtnAD6bgx9BJeDVQnhyJGSPMM0pc2bH8G3rExrDY4zhvEbm5RoxNQpanotAtNiaQEEheXT/+tBv5Z93wfUv77dKGXQcGgEoP4IzA9njHMP5R6jLC2Nyy5B6u7d3nIghDrjY8HOyhB3vN4fVipSRS5OJt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728213954; c=relaxed/simple;
	bh=QAkAFq7fiej2zc3NaYL0yPxrSljMFJQiETX6ACfDGTU=;
	h=To:Subject:From:Message-Id:Date; b=Mf5+wCB1w0BnNBkGusjku8yzt/disH28rouu2Pq3QZ3k29Fg/4DAcLwT5zehH2bv07Ey4T3tIgRRDlrg6w/FS6ug/s4MME4JcGnuU3sMsUJ8Tpi/GFQvMq+X929D9kun00OSX89R4gDp/ry/9crZP3AgEaMUNRZNgCmcfewhkyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcMVk1SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcMVk1SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBABC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728213953;
	bh=QAkAFq7fiej2zc3NaYL0yPxrSljMFJQiETX6ACfDGTU=;
	h=To:Subject:From:Date:From;
	b=dcMVk1SLmXgKw6Hc+hhLIfgRYTCSBA4G6pwEpL/dYtjvENA+kxx3oh9KDHPAxgwZ6
	 aOmvLiX4fM/EFZByxyHBPr9bH1AtcbFgoIV2Tavq4d8tvdFO4c9ElvZq1mArchCeQP
	 Hc5FyBN6BjbT1UBeYiua7ydey79Z1xYwB1g5ZHtB4m3bNMpPJzJCW0aKA5P0X6q2/E
	 XAYMUNWq2do3v+xuNhMdat6/iz7G+mowgJsQO+RHtdXmXU+CIXfAxklIbMvyDxDC8m
	 gG4dgOjOO0Kbf4SD2GoznYYWwwHKTAHxyCyBd543J30WSIyEbL+ScE/E9PsXKci5fQ
	 HK08DHTeBzWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1BFCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821395359.585.5357486361104754520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c292a9b743211d0601fff8fdbfe9238776dad0c71cceb5e792fa9dca4905d2f
Date: Sun, 06 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728213953
