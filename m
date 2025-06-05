Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38420FC0B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749082794; cv=none; b=J6wRszevKog9LKKx6ua2s30BK9gx4ASLZgDRVhk9TRrOeOEILpKWty35d/+5uX3ymdX/IqK1AdYg6ZyhnFssEVquRy9MC/8VxtfWyPR/55RDSJEbo01hqegEzSP5Ozy3coIFLhYvLMguYmACcJ9TuPgHirN4WTbclGYQuQKInxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749082794; c=relaxed/simple;
	bh=HeyJFm/q9cCTdMSbQMj6P89hXal9SkLEK3DCl9bdzM8=;
	h=To:Subject:From:Message-Id:Date; b=XqSso/Zc94S3NjhpG8HGaaPsmnWPpk23qDSIFi8+ZpD/VTrp7ZjQ4XAm3vGJpfguEMvg1I9xC3u1k2MTdUVXjEMTn28luX59bQpCALJ+WLJvoEA9CwQgqZwk4QJIMSnI0NhGTP9HqZMBIRUcmxSCPSRySF0+QMd+mKQRIPOQSvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz23xbwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz23xbwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB8C4CEEF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749082793;
	bh=HeyJFm/q9cCTdMSbQMj6P89hXal9SkLEK3DCl9bdzM8=;
	h=To:Subject:From:Date:From;
	b=kz23xbwHkNGsF6HmhdcIrMaoIt2C6s38BQ3hQH7//xx2nlDg1t3uqLj/GNWG8kYpF
	 24UATpFGZFMEJswGi+29aaBfmOcXwFNCI/6QJqocy+TIOo9nr1mPJnnNVBuKklnP0d
	 V0TOMJvKggj3ROrkzNnvOCciMI+oDKKPA53//IolycqDiJYgRlYS/5+GSw8nEjkFeR
	 GwePU29/CfhZlwsy0IuyxvmgZhAQw/26SUSBTb/5MYZwDO8RlLadpatcydSNKo7aSe
	 hcCOQ6H7lAcCqUoIk0R548lUP0b7XthLxUX5uG+v3nO6XlTK1AYGxrt1rCSiJ1arae
	 9bBX0hS1ecUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966AEC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908279358.19535.5816437242824785849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced3cf796cc1c129393d8f05dee62969e7072382cf5051b0428c7bf667ad6400
Date: Thu, 05 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749082793
