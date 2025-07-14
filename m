Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244EB23C4F9
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752484194; cv=none; b=Ux+dsuGmpL5/Ne4SW7R7r/0KaLFCLo3GdigzTwezB34eJSrFM6aL+c+m2yORJF/Yc0FTjLuYPu0ndkcYjY6gwD4byvsO8t2AE33ceycoliQ8S1H6BZu5K20MMweM9aJfXrVHnfPx/RK3xkzMZ6E6SD7UWU0cYp1vFywOGEUE8rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752484194; c=relaxed/simple;
	bh=f7+1JC0YgoevXgaiXunlroxFsYByXoQBkyKHlx5CurQ=;
	h=To:Subject:From:Message-Id:Date; b=a4o5YP84nKQcx1ZHFpe5V9ysEgJjpbISQH1ha5FJg1ns7iAo3BqrboJnOlNcgGYxPT3FDtZmkQAadNw2LK0hbFV7gZo7W5OvdYgOp5BURFmdK4eNW13P7QzAnzqgsXjuUz8uHB21DoMlrYQkg3CyRA5vz3lLr3kSuR7Nc5W6Aw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqzlkhW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqzlkhW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5072C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752484193;
	bh=f7+1JC0YgoevXgaiXunlroxFsYByXoQBkyKHlx5CurQ=;
	h=To:Subject:From:Date:From;
	b=EqzlkhW3cDO1IvSY+aNIFBpg1GWPmYVyUWhVc0WZJcO97UVF8MQe3yH4985zI4FpV
	 reXAolHsgRjQA2PnRHXJ6Il1t1KMk3kPZ3i+kIqJqAiZuURnYoEWBrC/g0HlLlZYx9
	 n+zCRjDi80jS+n6O88dubaHk7/hkTfr9PuKcJIzG+FTSqs5wGU33K2t/bgKbmOqrt0
	 /oort4XIM3qdPKnTyJvcdpVrZ1maaXQ6JuoLW4ULS/cnEEZPmtsoBEfvNSUvvmAIi6
	 4BhCTgDcpsKHRjI64VXYiigoEZZWDY0YJ1qMEfPyCpDsyHQgZ7XuMw3vLo6m+f2L84
	 QFfAEPA+iqIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1FC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248419360.29324.3564741234145038318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e000d946aa3b6372c86059f5bf28b5b3fb1437741f06c88a6c6cde810e4bad81
Date: Mon, 14 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752484193
