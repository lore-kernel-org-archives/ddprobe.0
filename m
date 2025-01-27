Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F0525776
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738010754; cv=none; b=ilxMEeobPs+4PCNK2JgxGVVo+mzQ8lmXX2jNw1ILiEWbKWNPworWJojNj3O8CQEIuO+hbzpWasSFQOF2t4+XBR6YLeCR+DrPH4sGkf2q3xgmds2+AoU9LKHFk6CzlFs6jsH5kq7i14bnNlMBmjcP3bSv8/O9145J+BnzXNLl/do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738010754; c=relaxed/simple;
	bh=aN1X6jmu2QBdAlpENRNHB9B82rzJ/Iqm3CVLhpSnptg=;
	h=To:Subject:From:Message-Id:Date; b=i+DnQNzkkzy9yvmAbs9dIfeXyiFW4o/XZs3jpATEmrMrUYofdkHkA1/OaaAAxzPvVjRVr8ATvuF4f9XOXQgLOwThiGPu9ZO7EmBAxUwB1TcSgY6yeCbedtLwfG+9cfbGRIPpgmbfkgotLCzvbCabbuPjzILB9T9oMMrgsc4wy5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaIMPEKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaIMPEKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12DC4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738010753;
	bh=aN1X6jmu2QBdAlpENRNHB9B82rzJ/Iqm3CVLhpSnptg=;
	h=To:Subject:From:Date:From;
	b=ZaIMPEKCpPO6SkhyEXzMA7NGwXf1KPKN69K9jGiIpDlHxgoU42hvdCP4BCFaY/mTW
	 q1RoeF7OjqvRhQQXqumRXoLeIaHE+B9D5aynvbV6U/HN3hZi5C3Vg/6pM3Yxsy61R2
	 kAx8xuizASIrh/C2pPqEP0hEexo+cVBD2BCozVzMrjAMM6PaHp/iU+LWxxvc0GnFWU
	 MXdsKtJUHIn9JxT5h9k6hxkwbAoeYoTVYCwd+HlR3fh4fTtkyS9BOdPgRiMW4oZb9l
	 WIwyV4Td+bv+MrJzlWk5H5M9xZRF7PT+rkr7UPJA+nIya8LsjatZB5fXQsv2uAt1I0
	 nmrILtubzFEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB25C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801075363.30418.8631433705659098736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163be3f2f44a3f76c93fa7b2f9c70a8760c28051f1117466f0b48dd8df75561c
Date: Mon, 27 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738010753
