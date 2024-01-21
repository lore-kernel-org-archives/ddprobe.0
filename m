Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF1364A1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705810097; cv=none; b=M5fM1lzkYk/boI/dXT4BP7BOuRzC2IwmnYvcHYL4Zpow4fId+XzUGl5zMgZFBC3F8f0PkBOtF+fUj6/mHqN9IAe6gcSp3StsNAVCYLi+9WfGMd+beZofIFAHKKIh3SQeh/7alLUFjVkl4pyP7wwsVE/TFbYZiqlypI/K00mCqG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705810097; c=relaxed/simple;
	bh=KvluT8UJg0oZTR3jKnrlbLZW5I4co92f9I+2gAXz6E0=;
	h=To:Subject:From:Message-Id:Date; b=r3x8IETkVdqFYdQyU+G+AqFDm9pqfmNuKKcug3yjr2DOPKltG2lHsBKLYFHtQlQfvzD4+xXPpuee95vtfgzwea2murK6x7jNiZwxcwEmmb/txzrzxCwgkK4HIaNab79+AXu1z3cZ6OpjM0K+1f71EzDqA84lBAyPjNgYU6OXxno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH4f36vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VH4f36vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AB5C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705810096;
	bh=KvluT8UJg0oZTR3jKnrlbLZW5I4co92f9I+2gAXz6E0=;
	h=To:Subject:From:Date:From;
	b=VH4f36vz5lY4qB2LjSw3KXJDgccO0K/eUmah88iBCv0Wzi/KFHgCWPqyUq5tDLeYG
	 JZkALO5rupdUNC2wpk/tfbexKm6Efc0zKKhIkgIbsaa8jUEkTl+y45b/SaZYBkyH7u
	 H4TzuW/HLlbtJB4vbJOdFqLzUAOcWsxodZ5qtWUQayIXoRPqxhgZV4JojupNDwhKIT
	 XiafvyDsatsixyyDgj6oumDyl0Rqt0HeyyHr54v7tjHJDfkzzU40iHlLX8m5N8PnqB
	 ylfaCz9wHwZaX6SeqTZn+1iQtXOpBhESgXa7Sr7p+ZWyyBvvSboOte7W5+V5IYuDrs
	 r6IxqEPzCCEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60403C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170581009636.9621.11513454310313560090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fc0222315f4def1105e4098003b57b1474372338bfcca180ebb243522a9a81
Date: Sun, 21 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705810096
