Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DEE1A9FAA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772896494; cv=none; b=jSGfwRBvi3xokG1ayNmyddRHZxo90Ea/STnjcG1uUlDVno/j5TzphHegRjYEPwweMqlfpVlxnjk02uq5Lz9KimGQOKYlZ1f+BG4JJzXJI4ngGLATM/VWLSvSsrp5i8CErablD56P4EKQDTVgaLuWDNMuLbKknxvGO9Z7JaTNsy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772896494; c=relaxed/simple;
	bh=mMymPWYjjU997NhdstjuDqhb9w8FlhbsCa8u/YHpYJQ=;
	h=To:Subject:From:Message-Id:Date; b=rRQkOp6iCfAytyb5AOxNbk4SR4V+fqiqlk4BU7xHHROy2EquU3J+NH1h6nQrBSDjBNzQGhbYWnptTX89GXnFd/M84HQArdd8wdc4m23Igji61UbBngg7UGt4vfZONZ4HbumDiJLXOL9cQx3A+VTIfYmQvA4+8J/AzoArcWsZHbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6z75UDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6z75UDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B821CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772896493;
	bh=mMymPWYjjU997NhdstjuDqhb9w8FlhbsCa8u/YHpYJQ=;
	h=To:Subject:From:Date:From;
	b=o6z75UDbdhaTVPJINBIEPIyq+rgZ66Je1VPf3CHTvR13/aHw6nDLJ1DpBIGbjYEpS
	 +e5yVpxUXl8JTfVWbyLzETe3iLhwTjMSfqsxSSIwYLmkOKYNRQts6nyVupP1HqcoaO
	 nqkZqGquwNXqf3vqqKn0rmx+niS/kVCiTReXqHufTHGD0CrC0/rI3mtUpi3cpBZgyZ
	 OaOQScGu48UoGNMKDmdx2NUAl0TH8KfmZc+qJTzAUWEqVU0f1E4MKiUlXo4Ll2xqSX
	 z6FIYNacLEIPo2aXaFIzyKczXnEuEKuF6c2am7VRdMJUyPlVXx67eGM2Ft1sdn6pf8
	 2UIV3whbG7N0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E67AF513F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289649362.2385.13564391403769102754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c364c6caced363d6ca4ac302d8230039483dd58899b40724c8be9ab013b12e
Date: Sat, 07 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772896493
