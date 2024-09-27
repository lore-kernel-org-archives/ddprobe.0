Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286594C9D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727415354; cv=none; b=cajq50yFIhSKou2dGd4BwAbjSAn+BRGcytA53qiywbxInfc89D5YdDRM1RhQe3t/+uXVtitogsJyLfiehil766OgD2XWrXWTGLaFd91pzYQvnqn1rshAUuF/eVwW6OGKLjKJwNPDs2oVGjQFBBWuxHja8am1oe7YB1Rw64t/zuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727415354; c=relaxed/simple;
	bh=gxjlvGlXGXQBqb8oWDs0JxvsbH3H1jHGdjamC+PS0wk=;
	h=To:Subject:From:Message-Id:Date; b=fI1RmbhFWxH14qCdnu3ySbUKeWPQW9asOUQtEVkl8gwwiOjAXfzJp49pr5tO1ZExfAT05LkFQI6rWif/4FD0rZLzaFyhSNt/NHYVKD7FSFYoSr2mqMEcXioHm2oWDFa6E26RIpsRxm59A3DryuooogTrrfU0UcGi9k90DyTL1MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcpnCq/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcpnCq/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727415353;
	bh=gxjlvGlXGXQBqb8oWDs0JxvsbH3H1jHGdjamC+PS0wk=;
	h=To:Subject:From:Date:From;
	b=gcpnCq/ElERafiwGudRZ8nRCPlREHFtJTLTLcOHmKc9Bp108nTT64LW307unUXHJ2
	 Ttb6ApdBonVbpXiBXE2JKuibKd7BZoIWXYhGOd6PqGQ3SS0RdlhgEnkB84JwqkOTXg
	 a+FYT8/KJyV15Sotsgb1Sw5z9AxJUTxUbF5AfAe6sZy/n063m8L6oeYu5oXZSkGzHl
	 XeRhfHy7b5t3+N/9h7AxkVmyNyFQHNXBfxFahgDByL1O66qkDAYMYSkUk4+RbtPMiN
	 Rfg8crCkP0Z8LxZtjvE5QkGJMdvBQodGD1/Ip70gLp/TuN5yWrlyEBpGDInY9KKbDD
	 JMP9vFY6JK99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F66CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741535359.13288.3986249512241890636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26f630458e3b1f7f286412404ecf1cbe3329778bedb9e398479b6b9b066c105
Date: Fri, 27 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727415353
