Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C105625
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743821994; cv=none; b=i9qWYg9tt6D+o+RPjvnj2mjf58JSvx32KiWPcOC23QSKg1w/Di+y+JCAGxfvhwjgYWP+0tIUGpWpcP7IGNGef88PRXGSenID4zVFpfDbV8kcOlx6RA6eCVzjvn5dvTMH/N1fGHVdk1Lmo50eqQw59R0/GD6ojdXwekxWJsda5Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743821994; c=relaxed/simple;
	bh=9BuOrxNSVZDLLZowjjs1QkfZP2HYUUyyhS8u7nckrlU=;
	h=To:Subject:From:Message-Id:Date; b=Eb0NIV+PJsaqhr4gmGYetuTVTy/pm9GMtaOgABl1viQtGJzI28PCviPZhShhRW8vOXsywb1X+Zn4LBPjdOOrF9cJd/uLnxYcS8MD1uQZ43mM9SK2W6zSMVHdgnIAUxkIIof9cKOZ6wAhbeW4Dpk2b5MJWFZJLQ0P0YKU9rbT29Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOXajOgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOXajOgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2571C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743821993;
	bh=9BuOrxNSVZDLLZowjjs1QkfZP2HYUUyyhS8u7nckrlU=;
	h=To:Subject:From:Date:From;
	b=XOXajOgmsjrbYK8GqMsMQE/EznxVYEZlpY+jBudpLkFDGKTmI2nuT6nmXoNEvbghD
	 5sCsU0CEDetuACrYFhqBDY7L0ffv8i2XzoSC5V7gvkEDlv+3XEZleFN4OLsHtVqFj7
	 iTDjB+q0e6bP//QzicHm/UolMTKpSCAQW9we6G3YXB2+SgjOiDa+QOlDhHsWElYyxf
	 u6ZtlQMPjFHQQO6ckxtH1/ikT1Z5I9Bzz2poSxW3bTD4CowhkDmRrctLCmOT2ZXXvG
	 hjNoMLcVmudupAsSXMajBwHgD/vJJh0XL9ZtKdWn1HbcMIdhAo/mdFyXXhNVFiQ/uf
	 S9+T2C0HcNcZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC90C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382199361.25622.14053861893555577728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060f9d06a164cb831e8bef6fe39ca5ce9d04eb2f9a20b9150ce4555d80d67553
Date: Sat, 05 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743821993
