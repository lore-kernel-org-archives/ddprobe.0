Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54443451B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772217294; cv=none; b=eT/DNb9el4EAHhKyTQiVLLWaTi1hcqORvCl2X0c4CdfLV3mlaVhwqxS4VaOpZiddWtKlDfnaLOwwfVW4N978daBaHR1h7CVOgb0bFmZE0L1o3L7xTelphwqAcMglnOrFPR30O1YmrxQlJM6ForCDxQySh/6k/mK6KPbfRJXebwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772217294; c=relaxed/simple;
	bh=1QbuuR7srymqLDPq8FvjBvjdYgFl+3/U3tYT5y69Ljw=;
	h=To:Subject:From:Message-Id:Date; b=Ra7VKd8Y2ujIj12vBozBn/kEwA9QyjH8MpHxrDFC1l2MpVle5dCX487/5wApz7Te+eviZSpkOhNknhENtUc7V6n2nivIHqybM51/hm9Up93YDVb5WnqvRY9MDk5eoxsP53ptrVIYjaAKrjk5TKSwkOstlXs2r+90DXVBJbk3p3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf3X3FTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf3X3FTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BBC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772217293;
	bh=1QbuuR7srymqLDPq8FvjBvjdYgFl+3/U3tYT5y69Ljw=;
	h=To:Subject:From:Date:From;
	b=Bf3X3FTXVmXZgf3Hgucky6Y+eo9tyE6vtMnh9CRWwhztHfJHVxW/5eVJZLHLHDbD7
	 VeIPDiGZO8CUzGMkbgxk4C5WgFz+uM3fTijiIVM6Gh/JPlijx0VnSB8pWyD6GKmvzL
	 yEUldOPFdw7gb8ISoNcGh2HoJq6X9tED+517akGcNEKsgMGD7tT6xzaToUoY2b5GAr
	 GQNbQME8TiB6y+KFYaugv4ugAByAinqRC/XwcGayQlk9Vz5GBF/b3+43ImO1kCdrkm
	 KbvAQeSO01Bs8Y8FyM/FHskEpp0T/5ZApflWBw9imODfvwLG8TBGAHPBMQPMNnBF3J
	 5dz8Ym+EIM9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95127FEFB78
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221729360.32105.10650640890838783230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cf0ab5e3acd8396e18b61309bc281e588d19cadf280d18e730c7d874af2b2e
Date: Fri, 27 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772217293
