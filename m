Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEAC49B47F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789680034; cv=none; b=eAXx8xafD/k+ndG25E2dCfb0cbR2W1CyuqcUEEZlbBmDo8tul6DZyrYNBsUPko+4XzeanxVsBhMzH6qsHJdKbsFWpz1e/qOv7/8SP2LjcPdPmkqcMZZzGM/L3gH+FRJDNcDOzrJzyvJOoGQ0Bzqb1J9mBSLVMZZNzUEhTNIQwsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789680034; c=relaxed/simple;
	bh=2+Fd//3TW5vHaotqDuG0K62PZnvRU2K8SGdcK8vBdw4=;
	h=To:Subject:From:Message-Id:Date; b=gghFh0XgaS5/c7aHqz63El85q+WKUyeOyWpJl11EuOErnz82ifAmG8BdzAUMAdMwTLgchcZwAnWcl6THtFNqEmeYuvyceAOP8AGM0vJ1NdWRTK31Mq5+MVagmZVwKzNG9SK6wLLGSenYCLJaQkKjT14dJ6dF8TtaCeYyiPv8+W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxkzyzGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxkzyzGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6F2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789680033;
	bh=2+Fd//3TW5vHaotqDuG0K62PZnvRU2K8SGdcK8vBdw4=;
	h=To:Subject:From:Date:From;
	b=uxkzyzGwuwzvxqQZZ48pJHhb6ATRHM+DHwEGkCeLzs3jw7207HC3Y49NrYDoarcrd
	 bbsknI7/8YR1Q9MJ10bMbyqHiWqea11yqlSNdSdu0qzpp1RU6gN+arh4qXWFyUrJuO
	 CKwE3/YofM8oxt0CSrwoE9yWW2kGBcZjehgCQLBJPnAULPZwFPDZmx47uW5b+zWe5o
	 lwB9BSqRqyqWnzQmTPcc+qnc/8iJ5XNarkB4JIFaV3NvAIeWcG5gNJSzs/Sh05p6q6
	 1p0Ul5O7SSVIbC+vADO23j9JyZrs6OEqj5fyJTQqnNvaZ5C2DjYt42aWh6jHRYCwBD
	 qHKAHHQNRBnhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B4C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968003372.9803.10220761960054089805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821edaadbd802fde4f5596aef3c70800b44fc1f5d931f266db897b6ccc3e1c39
Date: Thu, 17 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789680033
