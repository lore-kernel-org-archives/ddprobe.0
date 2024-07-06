Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590011CA9E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720277183; cv=none; b=J+uN41klKi9LNUpi1LrBmBzr+XMIdjsM9Ys2v1/qZUs1OpH9QpF2fTK42EooWFiXPNINsW4dy9PX5tEtJ6r8L353CcNKwerLaO9a6VACFF255T/toxTRgP4I//rGE0yPqkgWzEM03jtNyYsGIBn5PGci3hVex1+Raj2ao5MIhWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720277183; c=relaxed/simple;
	bh=/M4XX8Xaoa39bsHpCDWRzCeDJvDzc23+G5EOmcA4N9g=;
	h=To:Subject:From:Message-Id:Date; b=CpvLf65EwKt0jpwycaf0+P73VObiVxPNhNlTQWxpOMvmzw9aD+6pGYueWGz11WIUgNPVPJiYV1TjtHagG4rE4S4UKdn48t5cLezKkmSjJ6LjixcOzFVFIaBFsEyK9udK5GPPNZFNA7bcnZTK6pNTcVRtaI4Mn+x6nqzM4wvVlZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vROGibD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vROGibD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDFDC3277B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720277182;
	bh=/M4XX8Xaoa39bsHpCDWRzCeDJvDzc23+G5EOmcA4N9g=;
	h=To:Subject:From:Date:From;
	b=vROGibD/ulGCVf+55QZ1gK2OOiTc8Rkg2+UigmO13hVrGFNXa1ZUas731BZ3wjA5y
	 u2VmVXdp4AnkSdtFDIhh25lOWzzxkz7Dsm8KkDG1O/jxwuFTKxmmSg/reCgpIYkTfF
	 fixHNvDdYmQB35cFppCXCRYaqexvgurvS6BUB0RJWBeEunDOzAJjDRJi2jZ8Ox8QAX
	 CcRAbmANM/agNpW4jkJCf6Lp13femCPrBMgf81OHr5Zp+caVhi3aM0r5dSiNsv8If0
	 QNv1E8yeePl/e1184xODxMRipOS0paerJqUxNqXeypqhwOoXYYdQlgT0beDZ1Z2rVf
	 kj8jEP9HKDCWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E24C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027718280.29654.3272252457698011699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8450bfc2d124914e7f6380a3a6b483b29b8b07b29a41313b1422b9e953b7953
Date: Sat, 06 Jul 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720277182
