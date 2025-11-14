Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8E73A1D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763085594; cv=none; b=NooXCHqnqexDrgdw1/TfTa/wzc4598ynMjqodZ6WwbzLxbJHp1JHcA7BZSbqHUkKTk96DiaeVQ1iayzpRswnYdR6p1RbiNuqOZmmxL7MDLBeBuIChyO7ZnqCveIpQJRdegzb6YKc117t0Ce7IWX6ph+LLDGJUbRXgq/rGQf6Ffs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763085594; c=relaxed/simple;
	bh=PTmlnXN6q75xl+gwqFzObzpVB8M0ozPCS+HRkT9owUg=;
	h=To:Subject:From:Message-Id:Date; b=XwdUuJfliQS7heEc1VFvW1+yMBPLJT/Pngey4VDDGY84J5JfsrhDiZWh9TIGgBzo51bPKbZkOAiJzsPbRZrDfNu1pwMMCpFfoY7KVlAolfztQfYaq3IM5UtJfKBTDYzXRLSogKrEA77fRCF3SRJ2MHn4PU+ajnbc+0kqNiXfBlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofJJQ9bV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofJJQ9bV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C24C19424
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763085593;
	bh=PTmlnXN6q75xl+gwqFzObzpVB8M0ozPCS+HRkT9owUg=;
	h=To:Subject:From:Date:From;
	b=ofJJQ9bVL859FEsrgjb6vG26AvV/0Isrr+bHhUFYDA76rkLSVmTjfj1t+/t3eA9mS
	 kDRbAM+Be0ZYyHGzR/O/+cX+8fTFhYlLDgMqsVY4I+Fl60o2fuE1qPNNPBqq+Pr7yi
	 UKHxnSLOnx0mYndu76o+p7s76l67hVpmRWHaTo+Fvp5sm4D0e3Cy0//T9bIafoPZhQ
	 wzR9PumfJUqglfBvWmMDR939RY0phC+lS2S8fXfJOx3c6M7cIPoKrejBHRA51eYZc/
	 LlCgBl/tFM9u+0Xh2hge7l8ejyYTiCW13M6Im1MVDsqpWX55vzk0l9y7iMJocWDDl/
	 bpik0VVoZkkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33FCD8CBF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308559361.15969.7801130116723326889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12c96bbfe11cdc2bc48970e361dc9e00d7975a9a2d4007401d5d18ca8c0b3d1
Date: Fri, 14 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763085593
