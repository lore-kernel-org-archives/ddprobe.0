Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0A41946BC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718624903; cv=none; b=UfLadbpHm7iJjGlChOQHFFLTkOmXkZNJbxKklbTBMLk706JxepzX9e6AkN2tkSR41v7wHVP4M7BuUSLjL0+euVw3JT2n33GcEjpoOc4NSvGyulvWAjtufrr1Ir4NDxVa742im/h1wza/k2Z0yMrllyjZ2jKFhafFH9Tezb5zH5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718624903; c=relaxed/simple;
	bh=I16MiVBS6uygb+p3UrdwDMx2pAqCQhYPHtjsTvZIRmU=;
	h=To:Subject:From:Message-Id:Date; b=Or9SfepNKQYFVM4liKRsQpg0VCCYRy+ktjoJpNM9AcUnwh8hEE1oItb5gAPT1YNTU0r85pI0756DKrPPO3PvjeLpHs+20ZPpsErAPXeroyGGoziW5Oa8s3o5C0lM+8pkVX0+dQn1FdMjiaeq/bAZGNGS4PIzjWdUSKUSXeuCCSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQM8b4Ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQM8b4Ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0DF3C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718624903;
	bh=I16MiVBS6uygb+p3UrdwDMx2pAqCQhYPHtjsTvZIRmU=;
	h=To:Subject:From:Date:From;
	b=aQM8b4Jiz2+nYPMUrPlXlcuxE8yC+V7zod8EjfY1mmCDWnX16WwPJX6+S+s01YqpO
	 ANPbemUZ0gi2DmOkz/CTPG01Gy4uixjA3+b4F3ZTrO9XXIYw8jyeNHMH2HYNpa+wao
	 S4Diu+RQTjFuScDaw/p9CyBAblq2TFyna16liVc9xdVAfatDDM10ya+/b7Pea9N+eT
	 n8B8LacHYVPQkXEK91Wa4wr0iGnlIvcAS1hIXOeeiu7G6KEKxfMCFtRCsEH62u4TzU
	 wqEp2QqAZ2RGqdK/ca5BaUeYUTAq6Gw7wf6DgdWSt78U58wv0Ulnpb1nIP6ZoXJMU2
	 irAHBa1as2QVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D81E9C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862490287.4933.11611460923780575752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63668f933a5cc9dc026f0ecf0a52aa8cb96d3b21c178f7437b211d301ed9d3eb
Date: Mon, 17 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718624902
