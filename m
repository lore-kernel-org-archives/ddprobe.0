Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183275478E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729112754; cv=none; b=e/JzIQ9eXf4UaNMaIn+Y4mVvIc7NKcvhNSMLq58Jui0mPq1z0ffYJ1EjlFdaUSu5ozrm+RxSQD8mN2MyPMX/qOKIp9tAOwpAl9YxVJsqp8zl9pgXfpzLOoQXWqWxGc6Z3MmtlpV+WtIVKTqHSQfNjhQUDHvgcRwTI8zoFVWGrFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729112754; c=relaxed/simple;
	bh=7rPJnmurVulyob6u2lyU53+dbEuNc0QDh8lkC66qvQ4=;
	h=To:Subject:From:Message-Id:Date; b=BEajC7y6P0P3UysgnvmpCxY90WThk2iBpTC5gfTb3MBM9eu1PfHoxiIfsoDbdY40cGnM0kqQNI/tn6Udypy/9vxQg/PBZC0fdJ8IlVG/dGIABp8pvPGrBZzyTqT37uC5SWSfWqtR+UBovZYumVv1DoqZlNMlR9PTMmCA/f0zjac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFOSsrL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFOSsrL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AEAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729112753;
	bh=7rPJnmurVulyob6u2lyU53+dbEuNc0QDh8lkC66qvQ4=;
	h=To:Subject:From:Date:From;
	b=mFOSsrL0Q5y9vppf2Lv+G0l4rPRgzAdNJNUJaBRBWB5NnaCtpa6aAv2PCqUqSy5aj
	 n5JfxCTJWEnBfrVHO2Qq8nFaatWbst7PanE+E3PwQYq3YQbH0eKi3LhDEsALdYOq/U
	 d+b+j3RVLPBoMbhSZi146U4x7c4KMfoaSGC6sYG4mWtsYvgkXHoC/QoiGyuyDk81bA
	 qv9ytgY3bwtUpzXyDNXmQygblON9thPecsgAfaxtv87xUnv82EekJWSXsRVbHeUKzR
	 qNyjc5t75mMm5qT1r7CCqfR9SLxy15+DtcY7vfjT5l5M/Bc6LrKEHcfgsyoC0D1PH0
	 N/JOdKJdMWwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209CD2F7C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911275358.12005.16201056558625914473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5edc0cf5806132c6ca33b19a1f713e496b3d789d33101b44df11583aa0ff94
Date: Wed, 16 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729112753
