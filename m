Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E16A14F70
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720761443; cv=none; b=Cch+8eUCPREg9s8cH0NA7z5/ukkuB41PycFv2xQpLZsCmlK6BR39A79unHvn4nQ4eJj4HSAt6AWsZU0+JAD1lDFi+DZZX8BZxSYyPtu1WH5XI42OuuA0xigIcxIa8ggypY9ff8A8vO/894KC+RIYrZBBVS0k+X4h8tKzSDmqKHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720761443; c=relaxed/simple;
	bh=KGnylmKaSmYg8z9vlmIcjUTDBBAId6PClDjORjuddpo=;
	h=To:Subject:From:Message-Id:Date; b=q1TYy+Vy8Lm4sXLKTLcJ6nhDHYLZ+8pY7XJpqrvQq/7nAXdAd2bq8T1/AsFg/3ytIRHugblDTU6sr4n418EbPYoS8CjaAAkW/gRqWHbsNQSsbl7grCsYiMU8WOiUzneReZCMHk6G5fY/XGbIJ91yuRqYVk76kHw1bfm/k4/FbPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8XX/5I0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8XX/5I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D9EC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720761442;
	bh=KGnylmKaSmYg8z9vlmIcjUTDBBAId6PClDjORjuddpo=;
	h=To:Subject:From:Date:From;
	b=p8XX/5I0njeNzePGspFdOU1kx5vSUGcAGIjob1mLxmq2Z5o1ywHSsdRPMOG4Lv5Lk
	 jGh4up3i2hLQhxT/qpIcAkW2dRChEzpFOyOWtaaia2TT1DaRmOawFTWBt6KXRpdJLG
	 9vSGedK+3wEk6buSGz7lxjzMHBdpsasdFEFL1ILKmp2KkQEA71V7NScptR+knpde2Y
	 /jl0pnKG/Zb132TG/MTdTcemcVJ1m5lOlPnVQElLvLsG/8gUmBEgIme/plJv30L6DH
	 QbKyZgXmycdq4tdaHz5VMqWCAJS5z7Fv7SSLQx+bPAmh3fG6hppkP1X5yIpIo1Y/UM
	 yop0fnIoGGZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1853C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076144282.22841.9417048211559668150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63698479d9ed6da7ad4516589de683af39bf10f01d328100b85704684ab14635
Date: Fri, 12 Jul 2024 05:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720761442
