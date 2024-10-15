Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4C1CBE8A
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729026354; cv=none; b=lcd8aJuTzF/ZNVSrT05aknM5l8+kHRnBdqDcRO+Zf8Xuq/cRpx88yQWoYW26jdbaXNFHRrJx+NGZVG1fb0Zch2mwLTzOJcDOGDuNObmwDkMv2RnEA0hepPayThPDnfApgCt8wcXjYKf3PkORFdoPSjWZSMhnbvX3NWrGJCnH/JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729026354; c=relaxed/simple;
	bh=AOJ/s3Vpf93XXPL0E+I0Vz8SUMIGVwJ9LSMKOUgH7i8=;
	h=To:Subject:From:Message-Id:Date; b=LgZZWk+NzPTYBkY74EqVy/SpQIgOsJNrvheZopn8PPjZ0t1RZItGSuzssBQUjYPzE5PChI5JFROVrqtT1+7cAdt1zD9O953U7G18Yc15OwmX9dbKzml+IwKfj961v2+1l8GHnHdKJM0C5YHY3LALdEsLq2Cd8AZaxzdHnYMxt9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNs+HrWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNs+HrWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6EFC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729026353;
	bh=AOJ/s3Vpf93XXPL0E+I0Vz8SUMIGVwJ9LSMKOUgH7i8=;
	h=To:Subject:From:Date:From;
	b=ZNs+HrWYyn/kiNldlXih2qfpu21RXUPQiihFcWKh/rLpfV3t6rEoaYBp13ATryt/k
	 d4x8JGl92wSyYmpZromp0kbpMkfsqD9d16tVvYPP1ElfGTQ9Fe/Vnxvc1hk14uiw5W
	 CaN2QwtzRuaMjijZ1ciQdsI3USSj7bRksZOO12DeRu8D6WGBH1VhBkMsH+wX3zdfl9
	 PmUH4H9HAyWCbRRd6SkHhRgz//uRY40X72PcHhQyuoCQNg1CA4WyNUuss4tMk+6OPu
	 dJCoSa0YD1yVQYF0PPmm2ZRo0QQ+AMs6fNMivqRpHPbqOEDvRmgsh4iOsWnVCiFwEz
	 +EQ/ZdGHCK9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F58D1F9CE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902635361.21286.5211238122966214144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc9022e4b429165841d8344cb9b96cadb1b99fcaf40776447111d07f831efce
Date: Tue, 15 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729026353
