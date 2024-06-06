Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6233D13B28A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717676243; cv=none; b=NuPau1WkOJ2MD0MNZrhAEgi6Yg9NqI0+kqGzSovSDm/0HNHOCfO0eNkLenVPMprIF7VnsAwk+Ijk2/gRs2q8gNXOS7wCcQ/DtG/wD/Tjq4b8/0SC/H9rCL6culcUvEQaendvFHDzPVX2n5bBuyVQa+s9aScJojdxrmy6jZEuOCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717676243; c=relaxed/simple;
	bh=KqKea4IjHXZRWaJPYt9dAQ/1HTNEPQj0KByU07EETkc=;
	h=To:Subject:From:Message-Id:Date; b=tNOO4XWkhpJxan33qdYc2tQnOxrb1/C7wOXb9j4FQIU5xiuBNUunYSLv4umRtFMNkL0TlkI7DIBahsQYsLQJ3pw0q1M+B1cd6vUrBjRF2EDH4tsmG3Q8rNQNa1HcfMCs5DQ6lrKtZoCXM151RMoAD3TzplDlIjaiXSwPiqXrfZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN2yDxqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN2yDxqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB8D7C32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717676243;
	bh=KqKea4IjHXZRWaJPYt9dAQ/1HTNEPQj0KByU07EETkc=;
	h=To:Subject:From:Date:From;
	b=qN2yDxqekE44otc1t37MckJV7nK15a/wCeTc9tF8OEUmFq5E0mI9rU8WTPQcRcGLO
	 XUD/Mu33oKoK5h8RrVm7aFHhV/SjEtCKaL7xU4XFIKVLZ+KqknHhVQ5wTbQk0FY5VK
	 sqg2bhVRwkUssdJz+rAkgku9K5jOfp3ptw6w87acCtmmGQnHkLVlA+LhaEIlp/GWAO
	 IM8Z31hP6PjVi2xMzMbDQybVwAXPoErWxc7gs7GSQrwi1sSfim2XnyW6dZ2jff+bOm
	 UuPG2UExY6my2vLImntOYZrAcgCbkRiP1j304eXmD2biM7Cf4iZDtkYDmI1dOSTPQl
	 NrFSeOq8/FPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1699C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767624284.9413.17404139012598268551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfe5b48b22e0bcbaaf695b98626ebb7e4500dfa5fae03091bbceb85c37b5924
Date: Thu, 06 Jun 2024 12:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717676242
