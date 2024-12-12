Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045CC215789
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734014154; cv=none; b=D4sEhaUwQJnwdLExGFLo/9/ZT//ewdOA512la0Tp28nMIeH5e3rlxXnyWm+tRHkI0UXtX7gjdHmdQO1bsQ242HPKHmNBI59Z5kHhiPmf45168kj/A1aNPjORbQOxAtflfYC74JrvDFfaIHDZqsPMHABbHwy1EfqLM34cGmAOwhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734014154; c=relaxed/simple;
	bh=Dg/dK0V4nl+TWC6UiwSBGJZeS3Z7kGz5Nvf/5IomG5w=;
	h=To:Subject:From:Message-Id:Date; b=FTuase4VzT8JPaSC1rX/sFF0C0DKryYpnHvY8XAnJ/0YRGDKzCK+FKwrEEf541YJJB/o8so2pHIBZRG7Uxfz8PkGJQjw2an0CTHKuYPH9gQfIESShGSjkP2wOm8jePiiMtpfZGGGEmYvh17meiq2XR1PxF/qHak11Zrd5ga0Pz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwgJqdWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwgJqdWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DD9C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734014153;
	bh=Dg/dK0V4nl+TWC6UiwSBGJZeS3Z7kGz5Nvf/5IomG5w=;
	h=To:Subject:From:Date:From;
	b=XwgJqdWlMJnwPdrkLaNyRjGYrkpEAHCFr5N9KTJmyMTWZUiY+rlNGQsQ9Pd2MoHR4
	 0HdEzqzT0AenAj2aS4MVSOOQnEKTfjoMTUZT+CYJj3Gnfdn2038Isp9v6iqkZti36X
	 6LuXE+mC/n9ezfFaVgHJS4f8ofHGXMYsSlcZF7QDHhH2EB3K5pfclhfU1Ul7wpk601
	 CeBSi1CAyfR1QhVeREMFR4ilc5oP0kuTLVfiktgFqvd634Rl1xfb5qS8A80uzY/DgF
	 x4OoLA0Z18lk44u6Uh7syl1IS64+c+0qCcD5GU9TrkWfz3X5URsG01suN/XmjBRYuN
	 fKzmfzTLSQDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4461E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401415366.1183.4184981072216715515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe01256dfc34334a610d932719db157fecad04c450a3507131c1f0659d2c27cd
Date: Thu, 12 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734014153
