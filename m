Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D25158535
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778800234; cv=none; b=JWvFb9euLpH2BJv3hBffv6Hg8XbyUkOLuC7bio6X3n4LTPPvX4kwcV/8vIgb+GxVlwqPKvZxRhmLt2S+yuQ7HV7hNeczOU9oR8nVjylaY8gZRX7XCEw5Oksm/cOfDxFO6IU6Kv6crhuK6KytPOdTrMxsBhwAVsXWb1wp405cKL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778800234; c=relaxed/simple;
	bh=0+rP6o/fE4bwJgMlHVrp8lvwDVX/4/O1yRxuG3kIgfQ=;
	h=To:Subject:From:Message-Id:Date; b=qjGBnq6YsePIekbfrhFeF/Bh39C/i2r4OyFmddF2XDBpFwLvizANjN3N5RqpvOVRputwiNsDu7mOLr6t959DL4TEjjrBkFEq8m5cKk9PYhwU3XkB4fIAObq7Wqe5jP3uPEdndu4RtSWaTbtaZDGNTl45XpUMjIxIvVrX4zopIaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj1v566J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj1v566J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12F6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778800233;
	bh=0+rP6o/fE4bwJgMlHVrp8lvwDVX/4/O1yRxuG3kIgfQ=;
	h=To:Subject:From:Date:From;
	b=Sj1v566JWznpFUEC3CfMtH8SafzSqUeQ2ekbh9ZMvobN5nH6vFrXPCDdxb15gBp6Z
	 xU18ZMXdsug8Pu8sfxqwGUXWFN2VZ2rxbTdppzswD9OsQk2x3aglp00/frj+7O4++i
	 y/+x87tek+2A1SuGC0ewkgMkTsAgzJ9mMMGvB5dqKC5VDX44c9zgOCqS7wzbH6gO31
	 XfpPi4WsaZyL6F0eMRELkhcrdOINq1JHbXiU8oJtQRA7AhYyJ102Tot+yd3MThP+hn
	 YvoLxENVIYfU6XpOUfsC83VgQeU87ZdijqKYqkn73l6TeKg71H3E6zeRvVnpA+kkHm
	 nYnAy4aX46S1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8ACD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880023369.13455.3443291590680156613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ceb226e75164260a1d3a187db57e72a8228d0d8dde13f6bdc09c124d1288c6a
Date: Thu, 14 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778800233
