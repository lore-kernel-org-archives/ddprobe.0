Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339903D8120
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779789754; cv=none; b=uw5AyqIONeshps2+uJUC09nHFWJPu3ZW4uR4dSIXb8C6uD+ytQDHcDfUOjjhv+c0dyV2GiPE0xCY+vvH2MESfknoir8AkJB/k7dZd38ODtH5JSrDlAfG13p+8vilCyQaXxE5oc/S1S+laRQwlN7ozE0vXxzGgkw9ccXoVgNxOYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779789754; c=relaxed/simple;
	bh=kphRPCJ3CmH9srmjp7u3YYryt9qKH/p/TVN7BwSFY04=;
	h=To:Subject:From:Message-Id:Date; b=G+Rt8SluCGuduD8USq8Sfflsxa4HFIcHNs/NQvptQjw5/PxueEUdSqkea14dHYoPgxOimQUpoxeDns9y/w3jBluxJYRfwiHOiIQSDSQ0+GD/ZlJ1aN0Kvn82qkHLNcgEyIwmuboXUZqo/4SHQ1pgOpDvq6/Lxq1HwPLcCzRPuHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbQ2RqEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbQ2RqEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27CCC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779789753;
	bh=kphRPCJ3CmH9srmjp7u3YYryt9qKH/p/TVN7BwSFY04=;
	h=To:Subject:From:Date:From;
	b=GbQ2RqELuuJ1IOkit8dYApIdPs2vOL7i4hMgQKrwlTFFj3JnxsAmHqC56EowkSLQA
	 gfsveq6T9SCRuyFgqHomjnfPDCyxoUFcYq+NVSH7Xr1Ujs4ZDiYI5wqzskuxhI5O2u
	 E1Kx0mFKti+3cLNZX8Pt5M4cORmd2Y3IewpfJIajtqanqKJ2x53MVhx0HaiDsgoByg
	 Uh+DcviK7HCe318TLD8XFGVVcQCOjAIp9N00tu3NtlkiH5PyMZygvXHfrBqjApB7iB
	 0IuPw259nm/sGme8Kp2SrRWA+JnImQHpGd3E1kS2+Hy7omc5z49XP5axUXKawfDUeu
	 zDKYt5Ub4tQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D82CD5BD2
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978975368.31269.16902778468153699573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec817116e459a85cdd6a2137472ed5b2ea112d8f40e7d07cf3df202c9fa42c3c
Date: Tue, 26 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779789753
