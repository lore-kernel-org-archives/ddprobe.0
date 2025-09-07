Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863D18A6DB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757261994; cv=none; b=l0rOlxJ1zVFXfZT1nao+6S4jt0D6KwFNIg7TgOb2DzNb7osEL8jscqDutphjP0gLK8zWeLvIj8BtUUpbFHvNjbig5VmWLqp1mi6wosUDW8H0450Y/Yv4nIdcP9VrZgZGNWOVJm3iozdZpErJyXeX3Pi0PbPWT9LTjIhwnOWbwRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757261994; c=relaxed/simple;
	bh=L45FIJ0I0lenlZ4oXsl2xVrNPRomW2ZOXnHZfZZz588=;
	h=To:Subject:From:Message-Id:Date; b=LV+9o4jxM+Zbw3zZsA2OZUdJ/OHgFbB3/KEcGcNnqbhDJNHJQPzPTGGU0w+mARJ9jSzQC0FneeQM+JxpIi+yDGifS5ttqlv60n54aO5gqq/do6syiQH3gpuZhhpkyAphkwWiO9XxdBHFAb74DNPiUJAoPqbbTtuElMBs//OftlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJcu+5le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJcu+5le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3352C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757261993;
	bh=L45FIJ0I0lenlZ4oXsl2xVrNPRomW2ZOXnHZfZZz588=;
	h=To:Subject:From:Date:From;
	b=SJcu+5le0004VpolYPMzP5XVRSR1sgm5wVi5NlN2CqWuaQECPCKkAGt1l9w1t5n2e
	 vFiq3LPDU4IaFguugSu2DVQve34fBprYSsjUoNjJUcbETSqD4xlUcqBKjwNC6ejijo
	 1/wwQ67lMe9EJzINl91jBWmCee7fxlIfpTZ+TNyq3KTmiMC2zQVWcQfdhCO77Upt9w
	 0nseKOV7w8s+Y/9BMilM5tPGIFg4SW9jVpmzsWolHonH3F1iU0wIkwlFQbA0WrPgG3
	 +A7anTggSjLARjXV4feG+K3U+K21QQ6NFE87iO8z2UGnog6O/8GT9QK1V0votufMWt
	 lccl178eHlVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A39CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726199358.2049.10099055678354660524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcad1480c9ebdb0565858b415a313a5db904b3bbf0d2fab4bfcbc4bcd49de2c
Date: Sun, 07 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757261993
