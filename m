Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A04A1E489
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714294343; cv=none; b=b6ui1jH2Z+h8D5neduDOsaKtFs8G90YaF1E8VRQc0NCOr04/pal71RqiyUUfk8rTeEr4cwz6sZxEp9fYYsEGgE7HzEY/9ot3GRdQg0pKIaAw7NI0dEqFPzdyHvdgpIiukJDsv1ZsXQfyc8BydL63NqAsiskJA4rH7/LEtm+wmHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714294343; c=relaxed/simple;
	bh=mP0wKJjMxlfl93JgsFF7N1qMtHLm/HfJL0yl6/crda0=;
	h=To:Subject:From:Message-Id:Date; b=eKXwhOJMijoBXi3COb7Pu6bORaiDkoyuUEOuS3XkuiOc5BhbBD/2q9ZusVYu9XJSfMdDQC/x07RJA0o/ct2ob5xjzPnATo5X+eO2JKuenkQYGhB+zlRQW76r6DE/XFtvoou46LKwbdQnHZoFGL0zwJ9MYQWODNZ+IHD9BQhzj44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDuQ2Jtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDuQ2Jtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC31C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714294342;
	bh=mP0wKJjMxlfl93JgsFF7N1qMtHLm/HfJL0yl6/crda0=;
	h=To:Subject:From:Date:From;
	b=eDuQ2JtgetUXO7IeK2rOKPKA/sVZ0Z8SHB26UdauTAc4G/XraH9V2R0HMnK63B+vL
	 Ir0X+XBfYMkJsTabBa/XlU7sQjyk+XkQ0msGAi94SiT5eDizTrfB/ogjp1neEWNcK4
	 79kcbSmp1LuaaJEQw7MO57ZU/3RX6Jqemy3tRn8cdee7a9tM8VBf2B8/GYqz2QcoCI
	 LHOR1AVGPQkKczsrSHm5/csv7NrJiYljLWrYvGd58wvAJPYTp/3jliBajvJg0K5ft9
	 7QimI0i/lPQsScXu4/zS+HfjKZOWeqQ7jJkuN+3jxZutVkDvyoA0UF09Ueo36JCRdN
	 3uQ8EfPMrOf4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8794C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429434278.744.10711215104329698806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39dc5b432b4fbbe88150597bc7d88ca2dee07e6c9711ba22de7deb41f69d33df
Date: Sun, 28 Apr 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714294342
