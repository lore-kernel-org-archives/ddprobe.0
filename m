Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F12DCF61
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784822434; cv=none; b=QtJJnNiy8gsTRoMbUjDgVk4TaS/Oa2WGO0l7piWtK1vTv1J+O1cqSQp1S1J6o57qL9/v9mgj1LtVzRAn9junv4QWUYPUbagKI3CE9sctx0pz/IGz3RKNrtCH0fPJ7e8MRJrmBQFjA5JWP+oE9SvPakGQKx/Q7rD4sZKtCZVGcCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784822434; c=relaxed/simple;
	bh=XKWQHsE4ibrrgiOweqng8YyUFsda6j7MNDimXvpk4uE=;
	h=To:Subject:From:Message-Id:Date; b=iJ8rIDoQWh3Ij6KTGgUlSf+u3rtCoSYILKkLzEtPX/NuM/PGawgXfZuv3S1y91iTGEdnDeu8miEFbf4wcmkeMOzd/gOhJGr/nkh/rYZyYqQcNFg7SXJu9LDvJGuPdtY06pIsf7mQq7F0EAHLASOHXiKuE/lCn3EJsJI1PY91bqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoZoOdy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoZoOdy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE21BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784822433;
	bh=XKWQHsE4ibrrgiOweqng8YyUFsda6j7MNDimXvpk4uE=;
	h=To:Subject:From:Date:From;
	b=CoZoOdy+8vr3J4OLKKzYBS7P9RbBFJ1TZQJqGUS4AiAuGNvvVyngGQOb78WCRaaX6
	 jE8e7m+mrX0+jjIH1MOrjjCcXdmTllOdyWQiVfLmdyji+o1v0lkaCglIK8ZzR2vrER
	 FiJma8TfOyWafrdN2X10OZhQ9bp7uTJsjlR3IS770jMaxEP+VtI1r4FtgtMeU4DTTl
	 wzC6w1ta0cvuI/R+F5fH2Luv4dsm4V7DW09OwOlP1rCm954gNHw5PbdMemee837E9v
	 7SR+UsIgS23D82F3fjy6EEvo+1DAx/zoC8teyeeT+OSKF9hu+0G/ld2umzMs/sU+Fd
	 HNzGPHTh244Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDDC531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482243369.21939.9709439105321076277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f8a1fb7d59e4183d3716aac20a2745cb6896fa3cd3eda70056b73f2f797ecc
Date: Thu, 23 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784822433
