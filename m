Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA3F3C1F36
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790751034; cv=none; b=h1yT5WC4jxYFQaqQ+GEfShVZxvIZ+KYpDvVX525btmw7hP2bqGRne4l1oJOY/81qe/VRqOvPOM76jefgKq8sw6DVvbYXosAAna8uYim8+0EGTb4Fhq0ksf8sYX0Nh8sTDUDYctRSwBpk8gKBuBDxfT5r6gNfk341+SoEBB7Za1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790751034; c=relaxed/simple;
	bh=of1bUSsYiHO2YxBjn/bKLe1FoyEe3wL8va5jG/z9y/g=;
	h=To:Subject:From:Message-Id:Date; b=Yegv7vxFKfWXwalLYZQGLsqfqAbaxxi1UHXbbOoV5x/FhxzNk5XJt2MSqdKmzyZbt+oMxERVJS8mb/dhj7T/HZEMbikf1Ax1WiPmp1OriQEHZtPeRsmUALmtbyRw4HVoIbVJwkT3oNuiwZJB29RDW451TdfyzfTkh/mp45qynf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1MJJqro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1MJJqro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6E8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790751033;
	bh=of1bUSsYiHO2YxBjn/bKLe1FoyEe3wL8va5jG/z9y/g=;
	h=To:Subject:From:Date:From;
	b=d1MJJqromjvH/S0xYMNK4YDhE0Mz3rr1aR9QXGPMhbjwLdNRjIuhWOzU6FlAcsx62
	 GvAlSzmdxN7dZJtf151lQbQ/lMeO5q2qPKRB7vehQL1wQgYv4K70F0xBGXoz1Xg/Bg
	 otXLSNz8sAaquizP5igyFPVzrNuNTbGDAZ0OOIiCjr17R7ztHYIPHDRV37ZZBvRQCL
	 LRhlTwj3qhqExqcQvu7eU/nBryryCcKy42bRALyOIEamDU5AC74kMmkW6q8ood1HCo
	 Qbiymi0vQpNYiVZ6951/URZua3zsS5+nIKSitcjnmlWhgin2Lythui4Ida3X2UAlp0
	 3H5sE1pziv78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B0CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075103369.5860.14706308212891654139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e449062d8ea329250f4e9d6de6be5b66613742981f530f4c5833db644be1ab6e
Date: Wed, 30 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790751033
