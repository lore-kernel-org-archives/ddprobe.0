Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D566C22066
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740794333; cv=none; b=W25RFB5vw+HStsqK+bcR3mGLdIs366nS0J38OJUuFtd4KrQivI2xWLs3TqbychUwMxMYgcX54eiJsdNEMv5QqL8xNOt3gPxD1iAJcZOBvWbe7XtPdTb/cWqm96lRXDYxNDmnxNV2Dnm2rYZJmw4Q91Ri82unMZFVo65VuB5IsrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740794333; c=relaxed/simple;
	bh=GpavHi4QgoVpiO//pKRNa170r0TvIXmButUijE+MGbA=;
	h=To:Subject:From:Message-Id:Date; b=EVDsdNlZ3nuUpXDti7sIYY91ukkLpcAaVEYw+2hjqOSXS9pRTDukQ/FQafuF9eHvDRk8l2bqTbSqhxE8FhX9i3scNjoQwM03prNCNK8WeLQ4e5fpVDQQ1qbPpm13huKotVdYvVjsYkwS2yjdOFc7ykBJt+wU7lcYXGm1ryIOPuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7D2xrvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7D2xrvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDACC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740794333;
	bh=GpavHi4QgoVpiO//pKRNa170r0TvIXmButUijE+MGbA=;
	h=To:Subject:From:Date:From;
	b=m7D2xrvjOcM3eCOxB5x+7aIKa/lDEHnbBfGQqaq9O+KMmZbHWYKHx2vgvDNl03rGq
	 5x3jQUy8ksE38s4nJo2M5781zLxiQsOAkTQj1PIVycUZtb1j80ytSzAfRyqde82Wn6
	 6sVC75RS7Q1g7NMCx4aTI/5PTiUXwGX/RiBZuwLmOWXDWwfHJ515oGNQMdRe4w46Rt
	 wFQzV0YyLlwmfgMCTg/yp6MjXxQPz2PNC17DuGgl/gfyYrFRvcOvFhlXEYS9OYpJYx
	 JtkaMXrhIhlUy9nMukXNlS78jW0mwbTYLlB6yHz9MRqxXXyUgWFpq+cKr4BH9phaAF
	 GdGeqnWQdW1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D074C282C5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174079433361.9996.85119859469525072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d5342363210902975afd44f6244e8d3d1a68eb0578421d6ea919bfd50024eb
Date: Sat, 01 Mar 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740794333
