Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2AE29D19
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744552195; cv=none; b=aQqFVe7T9ivUhH8zZGBOOn/gXfLtj6twWprkwi0SucWqTXfi9R0CoOXHr9RSwjj/56psko46jOYhnFKdbnPI0ROzvCckKGwV0Ne2/mDCQwpIeds4eHbIQQWNSRaBnCXGuueoVrJO77ajhCGqeIzC8al+FFcmDhDY7NTkYgKB6wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744552195; c=relaxed/simple;
	bh=qzTNxRKJ8xCbBXTwhkcmMpOmH2nCho6MHqJMj4UdwFE=;
	h=To:Subject:From:Message-Id:Date; b=KF+hLMaavZMTHeF5fjdc0tVvb6HO+yY4LscObYTmHjYrqiacSk/EnPII+v6XSIv0o1W3MVDm9Z37D4gnPicMccqUsKK3WeEwyVx5qTHCGrY3jYaWJGN2A0Vkm6pnhNLkw3Ax0V51+8R/gzxT29kG8y4R+nrQt7fdhFw+coenRik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFxREeXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFxREeXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7548C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744552193;
	bh=qzTNxRKJ8xCbBXTwhkcmMpOmH2nCho6MHqJMj4UdwFE=;
	h=To:Subject:From:Date:From;
	b=nFxREeXESGqjORy99h9IHI9wgh7LCixxt/Nq8976qJ+djVa1KOzaX86VnCkuYaF4s
	 EtVDPDCpDa0I+ZXA488AVl3SLryAHx6In+FKS2HV8/SbEf8jtgBxzDdoYIpoy/zzWZ
	 gFhNxI18EuSXoGWHfmkAfDwi5valzfr8Jzr0lriJBUkrYaP7U+w0phQT4mQ1ZxRCdU
	 WvVgDBAAIIBnvhO4aShdgnK+UJVcxbT3jnhxMfmB7FTMPsrFfPtIqbtaQRzwlPHNhH
	 QnWSgx+koiZRz1vvlHcca1fLxKHcQ5TfWB44KObBfjma+1Z+0Ksbh+QW4JJ2rZSo7U
	 vPHv8yWWFjlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455219358.24729.14982803930028611835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3f8155f9e715b35fe2f2a931c1632969cea0d1fbfb8adb1605e4beea0ebfe5
Date: Sun, 13 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744552193
