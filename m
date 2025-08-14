Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAEF25C706
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755175194; cv=none; b=RQXMSYdveg7As2W9yC+tFrEhzWeCy6dTeSpjoh+3lZ+5wG3wKOc0oYvpvcZD8NZofndJg9Ywdm5+DflKVyzKNs0iBaUejIyQboFohyLJdY0WqNrqmM41Cs1GVZOuK4DNUT1Hl+m1T9cQpqIgY0exWrfakA4pMemwGM+cSGM9v6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755175194; c=relaxed/simple;
	bh=F8Ex/XYTSpLL+EcPd1ebjbDhzWDQL7RgctFR7MZ7lpg=;
	h=To:Subject:From:Message-Id:Date; b=GDbNsJrBDOht73+Uiaf13AqjNj8JM0P+nbEe/mh2P8daRQymCY5+BZpf3zS0t2UjzvTgZ4LWDilIj0iDviM40B/G1Sit9/vJLvyzUXRjSKk7Ra26SfkWusbKAiPQvVW1Diic9cr6nsAsI/R77MJ4Dy+oP1GhVo7IZs5NyUJfxN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shKn25o8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shKn25o8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1447C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755175193;
	bh=F8Ex/XYTSpLL+EcPd1ebjbDhzWDQL7RgctFR7MZ7lpg=;
	h=To:Subject:From:Date:From;
	b=shKn25o8BuLq0yLPqgF3ksYzWDAy9gDJzNtAkoMD7DqBA8IorKhiLoRe6YBfQo4C2
	 hzYtaAi+Irdrye/33krPLmgq2OVUw0tFrbY4j4qEBpeBf0+Hq7jyVx0bDrMfeli2VY
	 0/yM61ApOREWl9mmDG1Igek9tHp3q4n2UPdlb0gs+Fv/t1gyiS966bpGUdzRFLEk2G
	 WAbLLhBWRNuNyjVzPzYvXtSNQN0JGbGSZuHqLZjwxQIFxqkX8R3quzvZiRjGlG8VL+
	 e/r+h+p5qdr7JiucOj5/o2kOMzAHndjEhiLkDDd2GRBeb6mSJNpAJXDx6Y4nhgQwxn
	 xqM/QF4j+UkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE13CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517519358.30243.18439257641552332148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da745e8275d3a09ab4bc116a97b742f3f33a1a25cb3e3cc5b6c30e320229307
Date: Thu, 14 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755175193
