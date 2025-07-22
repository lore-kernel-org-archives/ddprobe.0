Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A22DA77E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753174794; cv=none; b=BkAv4Bn2PACo2K729I7i/pJ0B1F+GPOsBE7gsNKuB+QoJJmnCAyCYoiZnrwxCIk3Q6fopGB2S83SvoE1LbK7Mhh6qy7ruRkuMKUC1wkVFsgJSSjG3zd6sfYQ/XYUeXsMJeD58S/j/O0weY2nN4ihrlYubpkXe9W2Ar962qIxozY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753174794; c=relaxed/simple;
	bh=aBlzrWr/9TfcJVyRWx4FAFscQKmr0EkWoMJ0PL0MgUU=;
	h=To:Subject:From:Message-Id:Date; b=ZDJ7L24NiehsGRpxdtYWHu//V8nKbnYvFOuOZr2lxTYcT4mQ2NqJEEccXdir5ahy7sp8mv2wsN4BmcAHcOZkDbnegyjYbaXlX6AJHuIuGtsTbey6BK4t3WRvGyUtSSTTaBSi2iRtMxHxIUUhtvHqM0PfmTJ+MTetELzi974KUxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eo88D6ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eo88D6ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05BCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753174793;
	bh=aBlzrWr/9TfcJVyRWx4FAFscQKmr0EkWoMJ0PL0MgUU=;
	h=To:Subject:From:Date:From;
	b=eo88D6apuTY14DPSwsTDk1suTLZ8dgMHfk59JFLJdVJI2L0pdyUK06Tss4JeKcHoZ
	 oFuTdYOyVcEqC4rfrto4BXr+HfoalNhJpuNbOlrVO8E5etRFSmOKM4g+EIGm5NfW5i
	 TbSfGiIZkIz2n+vDPiWbcXJqHluSb+Ox90qaZmsYWoBEE7yTg7kQqy0ZHxi6P14aQP
	 gprE1Ip8DYEmUMnndTj/gm2DIKb5nEDbBW2uxyry/R+uyHWEesNulLm0xj0Mmmx1Nb
	 sfVquTdR5661swekq3qxQ9FjgCe3Sa633cWEWSjITTI5+G9AsDN84y//HIOmxWQmLq
	 JyzgzV9wdQTbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91928C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317479358.2363.16886538781929741328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2793916aac8c305d7df0e1b15b1263f1e1a0dc6abfca28f9eb0c02c6a33e9f59
Date: Tue, 22 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753174793
