Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150922FE05B
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777148254; cv=none; b=flHrCDeB9Su8CD48f5Xc9HoB0MXaLIR+kyxKSNuW2LyjTVozMNqsEpEyTvO/8+128UEG+6nz0Q+zemBGvmEkxv5WfUgJmKVNN6B/9Z94ilGXJaC+sze8kqZ5hQeIVX52GFBBRZCQ3N3dKB8PYKmia5/41DlKlnPewWtfH443lck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777148254; c=relaxed/simple;
	bh=NbHDDURl+ImVb/6jwiLQUKBllzWUXVVKcYEWdKd2FkY=;
	h=To:Subject:From:Message-Id:Date; b=rB4x6xYzMuOsAhEG89WCfdv+izZDLSzyq09KcTXVQh8Gzipa68HIR0F0cN3me/yKhbkKbTDDhtZFejRysp20O+g4ui7PoDzPtPvi4R5gy02lNN6aXTRVruD7+v2Fedi4rZm6/kqtTgAF/XMaa1qBvNw3zva57qzMBCkue4/5AqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVaBLw5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVaBLw5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCCBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777148253;
	bh=NbHDDURl+ImVb/6jwiLQUKBllzWUXVVKcYEWdKd2FkY=;
	h=To:Subject:From:Date:From;
	b=fVaBLw5svupBJ3icxNCxuJiol9VgcK3O1EHVxTnVcKzbamM1hIVAnHyAn2ZGXf1lE
	 hfwH+nUptl4I18kTty/LZPOSH3+D6tgavIFb9sI2HCSMR0hhfpUR+5S3GR6x9lMOve
	 a+IarcGj5gzzzFqj2o7Y9WFK6ETYV1kBwdDD/6aMQ0YW4IYEABGeC8xO4QkhRuch4X
	 PzhWSbD/3BqmyAqYCLNxXzRJVW/shFRo5EfUuHkt+LhWBNBjarkqpRxb9yyWjBmOWf
	 QAxQQEUg2IA+AraNrjYciBVG5buozy4W4b13soNGhptu204iip/TWEs4wkbGwKUeWO
	 LB/mq8TZVbyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE630FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714825368.10639.6404933362271077188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7befe3bda42508ee36d6a71627b6ea6e3bdfc76562f60cd076c170d8dba51988
Date: Sat, 25 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777148253
