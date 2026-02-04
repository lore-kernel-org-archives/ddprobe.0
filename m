Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B5A286A4
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770221034; cv=none; b=OeDvDKYTX+zJjzF1tqcraWbFfnG/ZLDpYYdSCf71CelN0W/iGb55k1xV3hwtDHvf3boENCRL3RYuSW9VW8CjYgkpgxqdtez+4tZE2XlRDq2Vvm8uA+50zbo+fxITroeTmJO5hGV/1cGpHi3gHUTOCOjIqdUuob4xTuJmEAHdYX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770221034; c=relaxed/simple;
	bh=o6Z5VqGkUTjZTknTR2IYxw1bS/OPmQxoLzyzYL4B1Eo=;
	h=To:Subject:From:Message-Id:Date; b=H3bW6bxBhLt5zyU7dygTZvsqfuRcPH12TXxjHAhfP33yzar/SWaL+KvufsDGU4CDr+W5BlprpTpcGkq0WzILkHXbrhpSPzi3lhcZcli++rV+Er6QPzXvIZt5lhNPhmA7Z4HGKJfRggS/cIy/+2EQHMZl2MMLaMjYr3lBBpGo0WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf6KXfHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf6KXfHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D82C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770221033;
	bh=o6Z5VqGkUTjZTknTR2IYxw1bS/OPmQxoLzyzYL4B1Eo=;
	h=To:Subject:From:Date:From;
	b=jf6KXfHB7mI0NUAPi9F1so+5Hiyk8ROpjAMQd5n2aqcOVFJm9nTpr1bKhZKZYpcDR
	 NaFhj0ZXIBtVLXlpzcFd3RljdlY0cIQEj3hdLzUYtW5QTzJYcVAdsreoAPeeDMnXJz
	 pB5l6Lw3LzEP+6vkvcCcUV1UPCXc47RjxoFcSv7nw2sUs7pK9+uOz3Cxr7bsKwjIwp
	 HIVlCU4l0mSPL3GUeBoeI/rh3dfDNBFn13wONqMBMQ2NtsCn0oogS7KRhwuMuwGRok
	 ZsWURVa5yNmCMwjLMVRe3kuUe/JEiXCcpzGa7nbE8OyInm6pooUpHFm3Wq2POjIT70
	 Dppm+wMrM2qEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA802E9D407
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022103375.8778.3055341208266386729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfce296358f2523ddd552555ca3330d7f18614de385f0c0386195473a4b5e71
Date: Wed, 04 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770221033
