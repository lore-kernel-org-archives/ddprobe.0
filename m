Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F792FB6
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743034794; cv=none; b=ZcbZpWCgiA0QuOKxPSBj49jQ4nRDl/WRSgicoUtIl51lE8uyHPzFHlmyZvajVwzj71sDHjWFRIm4cPJijLxrg2GUfgO9IZ5d1rCOy9M7JA4QQni35wk/ADRmiEQmAqjgI6Dy5cQPEda30f7j4UgwQiNMTvPjIXqMdMPY9MGQO44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743034794; c=relaxed/simple;
	bh=A5FWlNG0j4Zq/GTCOUno40Md1tQ59mA1pe6KVpWIVpU=;
	h=To:Subject:From:Message-Id:Date; b=G6JD01Fhn6gncqgGaTo7eWri+EJJknY4/yrPtHHqBKOoWQBaO0r7fMypqQI0G0BAJWguIoQB1TJABwfDPOF58SFUHM+9Y3wt+zpMtXK3Prv5IzcfZv4UkjB0PpIpV8pt+ZaxzYt2os/Qpsc89NgQm5uw9gz2eBYOmtzkeGkgIS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz2hssiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz2hssiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFF9C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743034793;
	bh=A5FWlNG0j4Zq/GTCOUno40Md1tQ59mA1pe6KVpWIVpU=;
	h=To:Subject:From:Date:From;
	b=fz2hssiIqjpN3lA3yzaxyxFhqZUrOXvX16JocBcEjbc+a7seo/88a59YukYKnsnv7
	 UcAJ7IoLijD6C+sTZ2/63YgOAEmLhtBdTERWcfTik5isT+8uWpCeOuTIXA7ntUSlH0
	 aAADNsBtueyNhutaWxWu+orN/ay5v/oLWhT73HlKPEq5cF0LUcJZklHMXpelyyfIe1
	 z/QMx7F/P5HdBTre0507uYsidonPWCgyRhyjpwThlfhFPVkj+Cu6GsaOYBTs4HUOZK
	 wPuRXxdduPrV3/VvI/jr5bJdJhlNbTM13ZPau8BqRk5DXIUlXO9BdLLDjYAxmKM+B6
	 UxvJ2IQcc1SQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A380AC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303479361.12624.12463190661316734992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da783e6663252172fa9ece8de12c9406211fd6a828f727608db422847e521ab3
Date: Thu, 27 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743034793
