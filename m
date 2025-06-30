Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE6137932
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751257794; cv=none; b=Iwnc0ojYwEX0jLcZJgXFYUDUQyAeMPYsOxEmSUWRfdA2gULwo3C6NIRffUyquwWkZSFpMPKh8nO8MFW2/ZqUsGcx7Lq814oIVtcNekRj7cK+DyASe+QtZNM18RaEuNSbHjrC7V8hhztIMyTAjMvy3NP36jaxOsR5ZhtAJnn8eJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751257794; c=relaxed/simple;
	bh=3lpzoQlxQRK2qKrqyxuN5fd7BcpO4FghAR55oNaCQVo=;
	h=To:Subject:From:Message-Id:Date; b=cCZ82JMD8Av/WnSmHXuv0JgJOmhS3MQ7FQh7ogFnFI+XVoAOB+VozX1UN8pnV9sd+VEmosrjSQb+MF4IST6bJrN8CObIIApqEGT6YXHMMmSAIuxxzvtIV+rS7ai/qe2UzMGZPjG628JIo56f1C2XhONChQNTUbMXKnnieaai07M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7olAQkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7olAQkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42AAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751257793;
	bh=3lpzoQlxQRK2qKrqyxuN5fd7BcpO4FghAR55oNaCQVo=;
	h=To:Subject:From:Date:From;
	b=D7olAQkVq60Ql7yg+AKy2YoRTvK2e6pfwhQiq3LG9AhtYlva0V+vIrBy54kWc8N6u
	 Mk5TcJLZ+5n68isTXGGmTdVUCjDcVp/yKemolXAOCxmXurhuegUni8CFqHbCb6eD8F
	 fAirxZucr07+949Na5dpvTU3y1tFMU0pryLNeogbPanXdkEzmREjA/9gygoxDxcg3u
	 9fkGPoDp/WC2aKxNPL4oqYB6McL5CvGm9HNqa1dM7DmBDMUSjNeqYdMlC3oYD9MZF1
	 CkxOufm9fG6qhAgKvF7WkityMSP0YPoRHmubV2lwkbx36HzrqCp3OGSoSQ03TqZIt1
	 WpONbs/uodEgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D9C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125779357.4018.17118773680124755638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8e057fc2498e4e73fa1da14767459b1e90dc78c9e0c40c02e3976928f91e3a
Date: Mon, 30 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751257793
