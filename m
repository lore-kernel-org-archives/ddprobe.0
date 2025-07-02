Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C6A2777F9
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751466594; cv=none; b=Zi69b9ixJEgy9KvPgc++jqPtqsuaRkpCXwIrfvhjdyce9QUAsT9Jy/khstv9DMgezGJSHGb3X+vwrn1vnKPmyNz53AODYwEnLN+QfQ7jEVVKG89fZIzLFz2AykrT+UQjT2WeqLbeLKdvr6yrztjwLYuCPntiT+zPPr/CGUoTRH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751466594; c=relaxed/simple;
	bh=SaeEzfZN0+iAyxxb0ftOmt3CLvc7VB5IB2oAhmLdpqg=;
	h=To:Subject:From:Message-Id:Date; b=dc72f9BV5b3o+wcIc5DyJBNE+myp0on0rKXtYIqarP9hXEcmofuLD0l3iHT0o9lE6xR1qOwzhMjweqQ45fkWZsHra7HB/4k7jaHoIUcMriIleoIDidnxFb0iWhIsxm5y36Ae2WUJrEIEGePQnu5JEcqPPHVlA3+rHVYb4WWledo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a72I63la; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a72I63la"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3522C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751466593;
	bh=SaeEzfZN0+iAyxxb0ftOmt3CLvc7VB5IB2oAhmLdpqg=;
	h=To:Subject:From:Date:From;
	b=a72I63lajr3tZtxO+PMM4zc7T4EbczKU/IAAzsIg4PTpCAiUpa2LQr02SZ4PzFIt6
	 l10tbKdxGm5Mq5/T6pbO0djk0lbybldi2FcaV9NigNPoCB9OVojx6Zeppqo+z974cx
	 fsxlR+mIpumIIJH9pfnVl+xzSwP1IxtUTuatVPo1xQ2LSR5HUkeAE+ojviFqNbtLaX
	 J1dXkcK7Q31b2tn9ANIvSpA73p4eGLgIhisO2cvCzwQO+4DPCoeCAKId0jjWoElX/a
	 5WNCPQLX9AI1Uco2VYwBCiD0Z+TbKcFA0KW535lW0hLaRILLKxDqmEnXQBImDuwdN8
	 sm9tX3i8hVz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D00C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146659358.29688.8704345776374484012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32cda63caf690af99424722f41241077e29ca4b3e4067f14594624ffd7b34db
Date: Wed, 02 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751466593
