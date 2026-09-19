Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4C01ACEDE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789861834; cv=none; b=NQf7pO4qFgS30JI+aIPhFPXcXHCUU8lkmSKgpIqyL0c89d6fqnkxCrQfuLfbZ6+qjb7OKMU3cJ5PxcZjD/gyA3Z24jwARdzp5ouynydWR0Lkv7qut5ZDAg7/1tOHDEABS0Lje7+FJ/bE/6X86q8xsKuyXatix1mSph+HBa9nz7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789861834; c=relaxed/simple;
	bh=DJTnZh61U8jCy8NQ4r4lFxhATYKn3hVbtuvs+94Gwsw=;
	h=To:Subject:From:Message-Id:Date; b=Z/bZh6Ao7/vfSmLEUflEinSpl9O3bgT9ezCZILbWPKdaJpXA/yOn68+RcpDaBEa4RGu72L6mNOFXjpZ5z6Y/PBPKxeoAaP8/peF0UuvuBEz+8PhiRdxD/3mujGAh4seJxib2frWrWy7JQXdvRNeScBTzkzxVeJqKiSqrx8nt94E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzVJ6eQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzVJ6eQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D74C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789861833;
	bh=DJTnZh61U8jCy8NQ4r4lFxhATYKn3hVbtuvs+94Gwsw=;
	h=To:Subject:From:Date:From;
	b=QzVJ6eQ4oqIChJWouVt79FTr7KIisH3H/abSQmjPeM44z/e2Y9++gHRVYCKMElwlD
	 0SVpBEPVoQ15sHWZkVOLJSE/1W2eY5dc+kmBwiomTe9cistch8iDGQos50y14C3PwP
	 LYbwJHQLcTgxANm7NJSPFj8VHhf+Wf9UCmIhHHjukknsoOyfPm2W8dj5RaEsvBdoqO
	 lWLjru2RSsD22IUaU8YOHVZbqaBcpkU7p8S+pjEcrB5/kHIyphzMIy+DJlS0ZVOlE9
	 ss6rWCmjXagN4PBDzPWkY5XOOod5Vq4iI6dQ3ihjlmYuTaEmoJoN0szyOjy4hMOA2O
	 v7B9g5avpzuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D4C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986183368.26681.8863844661992588778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1521163301eec359026310df1c6fac518d2e033b1946bd2965d3a41ecc117f
Date: Sat, 19 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789861833
