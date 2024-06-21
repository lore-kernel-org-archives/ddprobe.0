Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B24116F84A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718968943; cv=none; b=Dm+EZSBWjhEhwtDFL2FOOA93Z2QI0LbTqxCMpsleLFt1dmrjja2ID03m6TTBpFly/4y1WDXhptbkHsBv5kEKu7NFnBrc+N91ayBznNwIwG3me7GSdvdS+bQ81N+gvmbwDhemSkA2nkoVipGiUmzGf9lHPON3xD3tor3/KV8F/ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718968943; c=relaxed/simple;
	bh=L3bXzjjh3crdCCk8vWzZW9JxISvvETweid0yU28EUSA=;
	h=To:Subject:From:Message-Id:Date; b=p5miZviXiRYMnKfkGV8NdOrsKaU/413NczH2mteChCGzKndj7Lej2Fb/mPlf3P3ehnoUZTqiQA68DsKdp/JVxmzsEE4IQ6oBh7usoTGlffFr6a9/Ji6Ghf/p4WsGJ1iNcCiOlBqm/+3XzquzqCLw4PHxbgpmXf3+XxFcqHTUUYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNpZAfOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNpZAfOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF781C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718968942;
	bh=L3bXzjjh3crdCCk8vWzZW9JxISvvETweid0yU28EUSA=;
	h=To:Subject:From:Date:From;
	b=gNpZAfOutQsDg+DM1PTyKZVTVeWmuQvANrU//KOwWeToPW3klHaRf3D0wAyP8/jDm
	 i3okePsiUpnYGzjrcC6Ga9LDhymfZrfI/IqDma+sVvreWdjh8OGFNUJVWMxThBtCOD
	 y4ZkjJ22tZWdpnepoAgwO7122C4tPXKV7IrfSsjvpwh8jGX6a/J7py6CJZw2uDJWx3
	 TBnk+u7JmGtVVniBOdnY1zzSeMqLqzp+bzQtdcU1X3ume6AJykeUFkvOt0UbincUnb
	 9IqRf1YuaU/P3l8lWKR0Qg0EwJ8VXW7+DfMlxMGWriZith33FV8h96DVgFV2hLSYxY
	 Yh9hJtVD0rfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0491C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896894278.13309.18255024537751963557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e909cd0495e41cacbaccddb63c4c1c50a5f5e522c256ecc34f019b6535b3327
Date: Fri, 21 Jun 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718968942
