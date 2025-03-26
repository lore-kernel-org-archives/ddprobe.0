Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FDB1F4282
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743003594; cv=none; b=dDHp+2n3g9aiY55SjCIsWR56+qO+Wy60W55QbdkzUU7lqWMnUpm2crw4YB6C5CWtJrSSwbIwMX1TVaaVZ5nTycV0tcZPr9YesRnEp3Vd3XNVOo2SukrO2o3BUmBdvajKwFRqZe8QaKUi17TsqBaYmQTvvsAniGNsK3XPOtzy01c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743003594; c=relaxed/simple;
	bh=XPsXUpTRMdq3D2ppNWVq1w62zKZ6+ziTnsc9QG8zue4=;
	h=To:Subject:From:Message-Id:Date; b=JszM7xq4Sagrpu3LH0OiMIhuJYEu7T8flXiW99l1HDHVn9t0Of7l4dicl9Xnt4tW4ms6ldfw3k/adTHZ2q5sPOPuE8PBnCjnzFoxb/gbPOLTuNB6d6Df3YSomurrrRu+xFU0n5T6b4phLct9GAM5rVkG6DoCI4DurDSSq2aG6fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzaPDa2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzaPDa2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397AC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743003593;
	bh=XPsXUpTRMdq3D2ppNWVq1w62zKZ6+ziTnsc9QG8zue4=;
	h=To:Subject:From:Date:From;
	b=FzaPDa2tPfPYus5nDW+QdUZpY8a09I5HlOhnJ0s05398HbQxNK5LuDAO098Arl9aR
	 eKb+EQoTpZvmS99rF3hQYrRDDaIHczV/75ekXwW7YRCXepJyvwDrz8woY/pG99CWTI
	 tFT28V2Oa9gx9eddekCKMrKRBea8V7UhSZ7bKOP57PSUkbCEjob2AmIogG1kbWZbHm
	 gUwd6nsQ/fLO9oTcKpjTxqOxVlGOFSQluxM+kRwjXwrMv4x0RKxNb/yGEGayUCNUMm
	 UsTAwvWtblI4SjeP1Hy+ap1ur+Sk6YwsQ5ZFD4tO4tC6cbBHnEaIR0ai2C0onX5hfr
	 cXR2zSwJzZNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93521C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300359359.9185.17806661779221667842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c275b81afec5abf4825dfa127d9ae7222671955105800e9fbc7ecd6a6a4dbe
Date: Wed, 26 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743003593
