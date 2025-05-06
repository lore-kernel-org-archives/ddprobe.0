Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB4B27BF73
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746490194; cv=none; b=WDqbevaoV7F/e6aLK1ii4dJk7P24r4d7UIZ77XxsTV9mHMCmMdsaiJC4tjkHmsmpQfX48GOLoCvRih8dyBvMA5WNBLzU9/3BIk/EJbwn5ca/35svuGPqYivfdgx8vn9fkHPL2PX9V6OOkeUYTe71+4MKSVfcKLsbb1RkNC1Qspk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746490194; c=relaxed/simple;
	bh=yXuXD6WwbEPYmnJlMLkEtAygxieauE2QmCxQ6Z+wCwI=;
	h=To:Subject:From:Message-Id:Date; b=sGwlKBdJJcY/jQm2zPJ2hTUMgQyrKSzdxvR2P5IYtAitDCFA1IbJx46cA9VjWvaw5PylXnZRhgfy8ShgyNtEtcPmJFhXoQ8i+lyuvUVLKziM6kNFgzvkjzn5lLd72XM5T6r+W6g+Ln+Ez4t/Hfx+LuUmsj3d5qfdX+QLhI0ugMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcX2TcAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcX2TcAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F69FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746490193;
	bh=yXuXD6WwbEPYmnJlMLkEtAygxieauE2QmCxQ6Z+wCwI=;
	h=To:Subject:From:Date:From;
	b=qcX2TcAvsUWMEBQS1QcID7BDDmDeDf+EPyWTLL6BMZY3i/N7hCzhcxqZT1pw9sQcP
	 FBvSHBGSNdrrNrdFG17t1ZJytkZCfv0Yw32L6v+nWz1zA6OsPVXF6YHiCQ9+nTNJ+s
	 OSlJAZkSo1sqQ3ij4FCZE7KcwAlEhRObZwT835arcAw6Q+vclzYVmYD03PhQd4maZp
	 tdC0sBFBSoXrzQVe3ELnbLXzH43NXyqh2LROIpFeZDYNydh4nAkTn3tD6JYSntR7DS
	 a8Dhd4zqzC+SrzSf+fVa4AeKSBS8xuiccADlCNjxkhrozR2dOlamSNAgjKbPROxUFp
	 JjwGiNoifyUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4CC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649019357.19522.9435313619538432859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced8154ee696085f82b618169f66ac48124e6a38cb1ba194a4af0b8f9894ae07
Date: Tue, 06 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746490193
