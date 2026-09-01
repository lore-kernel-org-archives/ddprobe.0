Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF80441166E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788231034; cv=none; b=XuDwi0KmuG/z8Vz73BxKFcPS3wYgE88f/IpN4ymJoJiMRtVEy3q3Lj+dNIlpst7GshyEzNyyeF29v0n15lHGLjxj8r3g2KGawf/dqzVY/sigJqAMQw2IdGd8Ff8h+EwWtGjW5mAaLDVTJTYv9yPQBXVWtgmPfshV46XuQTZmlII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788231034; c=relaxed/simple;
	bh=BJ2+MYW1LjxLNMD/x2yxEft0Hpj3MmaAOU7NGCEka1k=;
	h=To:Subject:From:Message-Id:Date; b=dgpbD5GCta3CR7a23g9PT8w3kMYsF3K02Ke+bgF08IHCtomuxuCnn+3U45zCndYXujc/WgQjD7Hi3TVEb3TcIDvVJXmDWb0EhzhR3HaN7Agcoz+0l8f8BcoJJ0Toaacsz6PlucJTMQGqzph3FJWJ46fcy5uVoEMHR0YnG3bOpjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUUjVuND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUUjVuND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD468C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788231033;
	bh=BJ2+MYW1LjxLNMD/x2yxEft0Hpj3MmaAOU7NGCEka1k=;
	h=To:Subject:From:Date:From;
	b=EUUjVuND7kt9nrl46bO51RVu0nPtsJFtIdm5yvHpYh9rTOE0wvGOv+XIMygJngynl
	 uWAexOM8fUtMSCjAvPvP2EfV4DY6/YWGrt2NwR5rpY05d+hDBS0ZLQ4glWdvA5WToc
	 CvNNUvAQNAobllD01g7nuWFzsQYybiMTczgC+5AKuuevY42FWNFhC951P8fu99I1m8
	 pX6Cva5weF/IvWUXjh89ZiSjD1HipPqd2cKw96vYTFLpR3bx1um8IvZ9LHFpzLGoqG
	 TV6X3drYMMbL4aECgXxke4Id1SCGhbT9FsS6P7l8g2PGLA7Zk97ox3qTSkLz6bN6mW
	 DpYQ1D1apKa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBEC624A4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823103368.15486.9164623181274334940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e2c8898f57de53cb165cf2cada03d133921d3ec2eb1d410e77e6a58f9310bd
Date: Tue, 01 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788231033
