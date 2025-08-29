Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF81B282F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756432193; cv=none; b=kbokdhKmZ2ys8tw7tzd+ahe5n9WVsoZvkXOx7rW9+k5n3EnLzQW41eoEsjPk9rBY36KmcanVWtNLNYj0Ywv4pD4vPr/RX3P7kngkM+5DMSIr/VSzVGbs1uWEXfZ3mmN7Xt/7JEH+GCl8u14h5w6ryD1nymlmVdvWhjHdImygXHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756432193; c=relaxed/simple;
	bh=9goKYHsUh/u3nMeKdC2aXbo1bichNajxCsB1fAsk+hA=;
	h=To:Subject:From:Message-Id:Date; b=nlkX6XaT6YgU9d7V4cNL0VIojTYncD0t39pjAYwy3LOFZNQg1qXYc6DjOcVyPziQ27+6jyej9TRF1PKmQcsNv/J9TTmOS14IMH2zVbllY3lyvl/Tol3bNzamNjwrhdepdHtqV4Dmddo8K5yb8QbtVWPiTKFL0iFS/LYdapYfao8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a42VQEpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a42VQEpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2568C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756432193;
	bh=9goKYHsUh/u3nMeKdC2aXbo1bichNajxCsB1fAsk+hA=;
	h=To:Subject:From:Date:From;
	b=a42VQEpNWY8xePZhB+XdGYsbkO8pcosfkr+YmP6NZh73BeugDufs36fydEDb+IWWL
	 0Bi9By2k6qgpV0Ve2THJuHDOYjsp3jqFl7YdVV5g89GuqOeMvrXQiM6D7qaREpHI2c
	 Mr5tqbs9cZe61h9RpylECDrozGJY15ZM5eDFaZHLJ4gZ0jrv4T2KmkZO1JRwTupFKO
	 ebBEf5+FMbFBhtpbPe/V17eOH6WkkawDLho69doAF8Cl1cfZIdFv3kyRL901UbH+pi
	 dJk/TgegnoSS1H5R/6GLhmbilY+tOhfyOcwvVvHujzvL4EqcS9PiHcz+1RS+DFNHXf
	 xjuM/qRLeBVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643219357.19251.8042229930487171693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce308959b3aaf8e4c33abb403bd9c7d7b01c2b7692343c06ee9cf6bf26f55df
Date: Fri, 29 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756432193
