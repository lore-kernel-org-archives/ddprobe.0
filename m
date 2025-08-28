Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF9530CD8A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756352994; cv=none; b=TB5eeLw75cZ27DQOTdOseKmNQ5PpZcvZ87BUObXSf7Clbh0PJdny8L5ggUAi0Z1ESc6BihLiCuxd0LJp3hMc01auFBbSkU6cLmmmDLVa0LX9A4jx6PNSTPxVK4LrOO2Oy6uYND86XQsLqHAU+KQ7H9VHuJzngQvHhieE2dd8LcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756352994; c=relaxed/simple;
	bh=HQNfBwgrN2XGddqlnGwEioSXLaf1ONSyg2ZhzeN3fQs=;
	h=To:Subject:From:Message-Id:Date; b=N0ccTfF6PJ4vClNG8+R1JIhq5ECl693o5PXQ7HW88MuXZ4YZetHN7Of4vY0XBFq9TUcYgOkQ8DuBCx9C5pcR6uZQMjcnOcU1mCgxMP8Rfla3QM1TUcUDSMJE2lDHqlray9qKBFXe587+NqvQkQwUsDqDGJociXZP0kOd3PeTG58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBOOGpLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBOOGpLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756352993;
	bh=HQNfBwgrN2XGddqlnGwEioSXLaf1ONSyg2ZhzeN3fQs=;
	h=To:Subject:From:Date:From;
	b=tBOOGpLzxI38CpJbkrfXvrncDnBgTMacArkKS6fm8oj+8JwqIDSNTnh6nVVCWnKLv
	 3prGY5rnuZII6gpXkusqkKd680i//CSt1ThqIq5tfHiCpInYgTxxlsnQ3+qLCLurUA
	 GYXbU9K4nVq1luOa2tim7ZtCUAKppPj6+NqBFFoSpQ8zbGjzKNVMWokCJbOAavenXl
	 Xwv/bhik4wfUAivzuW3b/AtZXUAtDlMM9ATwkR3OzgkYNUzKbdshgggxGw5YUThhN2
	 VTQsDdY+oIzSlKmWcR6rZYQq0zll+Zh0buG4OShfnoiWU9Ukk7CAiwr68Zb7k8Dd5x
	 Fh8W6M1mQ3Leg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635299357.4347.16789075528219964959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512e3dea06fbf7c62617a11b21f0c025be8677cad3a85a1077562643a543c1d1
Date: Thu, 28 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756352993
