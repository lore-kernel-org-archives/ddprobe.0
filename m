Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201311531C2
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728896154; cv=none; b=bYpFPenkQ9o1gox4qosYeGfvEwStOiDKUg7EGbHx5Dejc+UoBO2EMMshqYslO1JdUVdTHGaMAxDSr77ohsGPl1NxTTi8TJGVtwRZYaEB/fKu3hUa4XWr1Ci33/1QCewK/wni2sUiJz78hyVs/B0kOmcHaUnyknyIE+1IPzNohWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728896154; c=relaxed/simple;
	bh=brAOKbvNYES+/mbh5gWqOaVjLQx904hG2ZU+AJUYhEI=;
	h=To:Subject:From:Message-Id:Date; b=GEp67pjEzoGvzo8Zc6dFwhqVdi74wRNXXGUD1Bhdg9P6QY6Dqc5kc8S+QkPC2fYQVS3oZCYRDvZvhmXD9Qz1X/ojQmZpDR5UamW3ga8jB72fboedpC5hcUouw6s9ydI0AVAZngO+SZq963dfEVYAycSO6V9UccCuFLaml55QSQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2dziWgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2dziWgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153DC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728896153;
	bh=brAOKbvNYES+/mbh5gWqOaVjLQx904hG2ZU+AJUYhEI=;
	h=To:Subject:From:Date:From;
	b=c2dziWgmZ58bUWyYh6krlhPT2HRlunePUYBxPLXagr23Dzyc2IfYnBgygIdD0WI5C
	 j6n4/8DHFektifvKJ9gh+dIVSYztAO/0ut6BZuwT5rWsXOCkk2hxaatjOSpCah75BA
	 yCbfRFgUApw4JnVL4sRETZimmMcYcEyLz4z+qAzzpdyGE6BFEXMdYH+P815wNHiYQn
	 3do9Wa0u9ZYryAWn4Ax/t1HHjkAWOpzvblHB3DsAf//y0i4cc/gV7ssnaOxufc0TdE
	 7de+G5gIGHjN/UiuavO6YV/OHqmjFzjv960y7yqrMM53r/t5xQ/20qNF+gQOxnN6i9
	 Rm4E6hzmdVhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDECFC500
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889615359.9965.13965524673250745459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e2be99864f5cb798dab3163d235101c8ecdc17a9b4ab0b4447e4fb933168ef
Date: Mon, 14 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728896153
