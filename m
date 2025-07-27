Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E227237173
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753648794; cv=none; b=O/8eAa1b2V1XXTFno2/C0eorimbWMDmNxsxHxVBOEUULsqyTN54VHjkzwRk4kVwsbac4UOM6IzAcc69XqwK7WfaQMfgD4NRZ2OdDrbFSU+X1Xm08ng2flJ/N381MWvtCUAjHskm7clCyNrYVnB48rBhMkKWZe8ZixttX1aQuLcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753648794; c=relaxed/simple;
	bh=AdqV8D5ov271p9/DSb852SenvdQsUT3qo8wpnehs8mI=;
	h=To:Subject:From:Message-Id:Date; b=PiOYBA920L5SLAJfDtOcI7blo7TZlKWPqOyparLpeLcIurCg8hxC+DLZB2LxO7cInKhg3l5rDyRle+6ObynFX5SQVSsKvd8HpnLAYQ019bw79GWM9phPcSZQv7KGLVN4lM6/e5wcT8PmGqmXF8Rsdej4MWGEBw4ZbBcoJ041FGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9ybSu7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9ybSu7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753648793;
	bh=AdqV8D5ov271p9/DSb852SenvdQsUT3qo8wpnehs8mI=;
	h=To:Subject:From:Date:From;
	b=P9ybSu7vSqKDn5LAJEIW850V4Xk6rg5ku5FFFA2mPJhmcV7FswugBBLeDgmRlc0Ma
	 qe7HLjNM/l3/mwSOgCRrUbOolwUECntTbEhZos9pF6ywquSTFEnuyriz8HYSdNZCZq
	 /BSd5dm+eA1M2sBwqubeH5BRjjRHRvP9gO3LiA3C3SDxUC5VQQRXfHnlcyyCC4Sdr/
	 VaIEtqjyHwLHl+Zykk6izfrC+wZstYxQU3LuDLeE4Fd/jeWRofbnApHr0PLE9mTgxP
	 IT8QaLaOUP/LC1PAk0z/bIPrL2uEQP76mJCPXmO1afwX5G20PVDOV53D0LnHzYE5mR
	 8Mmcv+3qtp+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69EC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364879357.13862.10906681759537147925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134c4e483649c407708b0442343cf321144a15dd84d969a7a99564edd3aae1c7
Date: Sun, 27 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753648793
