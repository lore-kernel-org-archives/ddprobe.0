Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D13142909
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713906623; cv=none; b=eOZsCmQjUhBnlCPCrUaRfYtZIEqYNMSjFkwgfhG2GMAGnBHhpeMlFdJJxt7vDElgmYCg8KdmW/MeO0rhQLyyvhFu0nxHBd/z9ysCu7kZJMKu0JsPIIOryYJdRWsiRvgQj9GO1+R94b7ckZmi6K2jHQMx6qTYeKabkpoeXtu6B/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713906623; c=relaxed/simple;
	bh=Tsw3y9Y4dcAv9KqfBb2kB1yQ9t6CLaUaYpCbm9sg6xk=;
	h=To:Subject:From:Message-Id:Date; b=vB6Dg+ShM5qW/YIIaQnpoji3xMkuCj3q/9FiQkaB5cfde34oIoHGxeia30KwfCec7VFR0WPSfhP08Gzn7hXxvQlhZF2lfVw1Ddv0zoRh1+OqYhSPple5njgHgXcXCMgJQFpPkoS/Wm6tRys5tgx3MiUeneq1wIpsqiyX0qegbog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WE//1cxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WE//1cxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A7CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713906622;
	bh=Tsw3y9Y4dcAv9KqfBb2kB1yQ9t6CLaUaYpCbm9sg6xk=;
	h=To:Subject:From:Date:From;
	b=WE//1cxpdd69SJAwKl4X6uqTWiDNouuAXswL3vAwxS/VdPLdXSJBCD5vdn3uMHHFM
	 j3HsOoYXbJb1YA2Nr6mKsLw63UG3doi6KU8WPp4X+Td1c5qBpbwMcB/HBGOAHp0UGF
	 00mKQByDPFEqUMhgRnFp3mU7nmpQAAU38TJFNlHN19ZDnQaq4sM7lEkkbADTGU6L5E
	 i0IzW62b2CWnUfc3dLF8sK1Wz2qTbLzIBda9BaHF/vRNLtpj+Sr3eA6ol1l+JoTXC2
	 ZbnE274ZoYGqSM2Ja7SAfpmfwwxxyVpelHfV2LPubPdjeZqRWj3RlfDMAnehwWgJup
	 5sZdK/93FTtLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C1AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390662278.24242.10868943277313360784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7812f10786a61047a99f5840965d24a42feb5af60b1b74c49ac7962b4c7d0965
Date: Tue, 23 Apr 2024 21:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713906622
