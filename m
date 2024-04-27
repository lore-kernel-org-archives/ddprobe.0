Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E6740841
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714204343; cv=none; b=K8JRV9ssNa6LGPq4+AFTXJ46U+GxsiYpL7iUULwS2qcXrXbHH4YMzvxBt/6xkBSeBslJqNXlsJICAm6FKRHuFrZNkjoComxcsvYOMsnfdcHMdRez8Kx5ySw3ywwEmF4IhRxoh6A4KU4WT2kcZt0EAlTaThMEsJGuLUjf9piNnJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714204343; c=relaxed/simple;
	bh=sAZw6PZ4abma0APwnt+9yirPqO8dtwZOABtnT/M2MMY=;
	h=To:Subject:From:Message-Id:Date; b=ezkp/fU8pr/UMLxzVOHvX4ja2n/EkjdKfSwVmDbDLU+9RYLr9cA/WB6kUnIW29sF/1y7GL+8SsehyXh7iMfuhwe8BXxM++/sSJBMPwq1X9V1wANZrNAq6+KKTbzmcn51ehuEu+x3grJcBGgU78Av6Qoh00csPGjrYFwBr6MiJ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRf+jhm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRf+jhm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D986FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714204342;
	bh=sAZw6PZ4abma0APwnt+9yirPqO8dtwZOABtnT/M2MMY=;
	h=To:Subject:From:Date:From;
	b=ZRf+jhm/wzF8hCTTjnoZgJCFk4queIlTZi5ypZh6DZqMqhWM8C6patseOLZi+WdWJ
	 wYkooMoYLXyoi6BqaCmTqYyoVbQVEH35dbmH3jAVZi/r0as4V092mdyPSNPX22w3KT
	 FpIt7HgNNMLkzTGiXOMdswxCPbEBKMdd76h/ZtJ/7FYqb+Z3aXvRZVp3ylL8rDdOAX
	 9RhuivagUeRAm4i55VRs6WSvgRtzq4H3zhT5MSKWT2xRy6EkeSdzG2MYD46ntSe1xK
	 87FoFrKFak9IbUM8RhNHU0DcK9rrFQ04dp8R31xvpJu70NH8TKppM+V9GT7uNSKh1k
	 C0Xpgdk4SMpQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D52C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420434278.14814.11659494326635306238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ad7515a0c819e7bc8fd4dea70d9dda1b8dfa1fbce4a7a96cde487f7976b2ab
Date: Sat, 27 Apr 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714204342
