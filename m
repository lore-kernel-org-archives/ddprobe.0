Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B574268FF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744633194; cv=none; b=XxmClcvzHwDsZIKgFXHtMCP9vCCaO6YvWfxPMF+NzPGZXc7PUAsUE9IbK4UkL482E+TkrG6rg3llG8tJlakaj2mMGO4qzsR8p50YM1JKAnmvgpLmiq4rYGudKmF+B2bGdSMEHz73BKkbn4RFJ+a+SCoQsBPnMuw6elayPFw7nxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744633194; c=relaxed/simple;
	bh=RL83mptfUlFiMGZwZxurPS6CeV5Dx1fI7Vzua5LglBo=;
	h=To:Subject:From:Message-Id:Date; b=NCZrV6olLy7dd7/Dh1GkCNpkg4oJc0yZPxV7lswOW8xwT0M21MlFLJdNBSksCiGjuFF4Dh3g+YL4pfDFbNXxc/b5gqKzIDfVS6uHquku71Qb3zVfuNdU5NzHYYTAOpluhmvYkk43Esr4TfDYVPIbQD2YquRrVIRU9mJ1mzxmcco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIFcWhRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIFcWhRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86FC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744633193;
	bh=RL83mptfUlFiMGZwZxurPS6CeV5Dx1fI7Vzua5LglBo=;
	h=To:Subject:From:Date:From;
	b=JIFcWhRYyrm5sWFcj9bO4qHB9BZ6y98qQtK6VHDFPrKez4MIhzASparfGZ49e+CNW
	 k5sx+lvoDjLsth1dnUkZydztn+dIL4ZkfWSxhVH9vz1nKnto8vss517FLgl1NXLDt7
	 DNZvVLhwoIiGMD72HDhRPg1aG6SgfCRQ6dr7DDV2p+VaatTP0Vk+5ZN/MmAB7Gf9A6
	 elmydK8XXjz8R06ztI8m1dvY7k04aslz5E1tm835HZiYMvgY9iwsuMK+3FTd8yodST
	 /3LULo2oFG76TwgsA2hdAbKSY6ezBiECg/supxeodYwKucGTgtNSqNuEwqoZvBfhrk
	 ENBkQ/wNGMpEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D0C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463319358.21959.12298070012842247270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049936cfa76f16d3e5a380abdc303fd1653f9d07f94d223341593c623f7bf856
Date: Mon, 14 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744633193
