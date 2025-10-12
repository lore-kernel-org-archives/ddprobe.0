Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6A2F56
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760227794; cv=none; b=LtDb0Rug+Zbf/zITnn6kW/xPvyVvA82Hy0zCSyKkJ/DmvY2HhSY7UouGvkcvQ5q4qzH1AcUqWKg+Xq+8358dR6nDScMo/ZExgZMAi4SHfRm7Use89NKGSfIJp9fTm5INVdqvg/etbU0R8toRRgb5+YkJmz3PEmoISGxXnHI8X4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760227794; c=relaxed/simple;
	bh=5KZPFsQzz5JqHBmuBnscV0w6MrtLLTLmPv3MH+ALUNM=;
	h=To:Subject:From:Message-Id:Date; b=C0dybI2c4swpoRU5pC0VyF2JzC3rHsYVJq3GiHLFJFOHJKoqS1xiGb7+iQ0KaWBehn48z4PFnRhkDu4yDO7vJPsqZ3zbokPSIROjyhJ2O6ECmmAwy9EcmLN0fro0CfhEjbiPV4hwzuecfL6/WgbOKavM+fughtyCdiaM5fUjpGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQkUCpf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQkUCpf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442FC4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760227793;
	bh=5KZPFsQzz5JqHBmuBnscV0w6MrtLLTLmPv3MH+ALUNM=;
	h=To:Subject:From:Date:From;
	b=eQkUCpf99tZCyXSarGAdPigT+oFKDaPQjkQzC5W1bIBXffatw/65EyodfTQKGmvrq
	 ugf31ATugNiyAEY7UPWabetqEv4cJzssobbNM02VVDbyPDtn7OdUjrGHrlbDuKCpNz
	 JgkF9xKK3jwQtCB39yZnAvGjHhVqzGWtR1lns8qsVvYZoF96EQM4qfzB3QXpv1gBJA
	 JNe8IaanZA+Kt7A9sREUZc/vvKx+tddPDWl0Lrp0QhO1HO+O7ZgXw7zk7ok/pFcoyJ
	 jKo7m4IRMMkCDJ+lFnCSlYVMPzXy0FFH80TQMz+g/KJ1byyt76e0VPbXWlgnhkh6CQ
	 nM0DU62JVpFcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92502CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022779357.668.14937114569141561563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0370876c41d3748a8bf73fc153c5f38b36ac825ced29d6a70daac9c3ca82f060
Date: Sun, 12 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760227793
