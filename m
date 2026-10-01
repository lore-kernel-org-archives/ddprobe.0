Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359F742B30D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790827234; cv=none; b=hS9ZpttO9dYNqrFRYUEAi0XoeNWmAN2+Q1lWYL96RfMXOdYnZuGk1/5f8Tct94D6K1bUwrNvW50lqNvHC21TO6FMP68Xz8vP0mqvGVOU01d6XHe9DnfwdCQ2vVUa+7we6R/PSGGCuc/lR4FLbYnU9l16sn7sl54DRa3gIHhM3HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790827234; c=relaxed/simple;
	bh=IFrSlEICxGzFvTKBLlnkpjaNlZ88lISrknQxfbWNQ/Y=;
	h=To:Subject:From:Message-Id:Date; b=RCLEGOV1tSm90k6UGhKo1Y/RW4Pw4c11sv4eoMj5m7jshRS1Cnzziz5JB0T3glTyMQcwicZeooWNslOZ0R58gDoU6fMANzEnq6hwCvP8RDBNM9xlFV0ZvuHySRA/nLqszz+bVCkl5pTBxKoEX3SIhbTyoo2q/PF+Gzv1/JucSM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq7OWzUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq7OWzUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2513C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790827233;
	bh=IFrSlEICxGzFvTKBLlnkpjaNlZ88lISrknQxfbWNQ/Y=;
	h=To:Subject:From:Date:From;
	b=bq7OWzUsjLW6xDM6bJQHvwUIFb22PFxHEh3Ef9kPAkCDciwkvlZ4mImeb6So7zS2q
	 rjA2kwqWdEJdCDfpqVlt9cL1L8vQxM/0pl0wE6t6UYgMhkdLLwN/PhfXPahrtcOtJD
	 OOnNYRFf/BYS0Fw4Z3DeFSLBsMPhb2fUjL2q3ZdvMxvaiUkwOQVH+p+q5gcKecke7s
	 YLEnztjVgTjsCuZovjH2Uy38fc5oxlbAyYg26dvWOa0Ao4D1j5HzRSiCJoA/BCbCOv
	 K2b0Cqow5yKaBqt4dYtPuU0hvCZ7aC/vYbls+9jChWmbczpjEjTZjIkcOV1kRL8WMp
	 wosQmnUK+in0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D5CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082723369.13504.9526543936460329480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac3149f6537e3a702dbaa1b24bf2c5fece920858e07be6e19441f94b43d71bb
Date: Thu, 01 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790827233
