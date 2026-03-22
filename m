Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA62874F5
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774208094; cv=none; b=dtbTnZ7CZQ4Clap7tbxx8w76Fa6FNzCzFqYSVTrGC6qBw9pzk5SEvd2+/EoacoHxoNrlFC7c+9Z/IQ05/MiNOkmnuNsFUDUbWQbWkl8VlU0SDHcx+w8cvFzzYIHgwTmXyPVceihjNH7pTA8Pwz5qbEy9EJlV1aONEMN//qnFnok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774208094; c=relaxed/simple;
	bh=dIVdYnBSuMURdg9WmDrnSjuEyIybOofsmokA/vkMQWw=;
	h=To:Subject:From:Message-Id:Date; b=Iux7f1wWom2b2QcFKXe+2Z2ywvWqYOUdbJRSDeLBhfTH0Ly88zKWh0TNt0eLNg/gGFxbQTS7DwWCbINO2CORBcPys1iCknQbxbYo0hcbbrwMfGjzIdRF/VoBWBjr21m1AaF4y4309mz2M8DAccWJUQ+PpaAhAiF/1Vsj4d6Gs7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdBoz4hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdBoz4hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC289C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774208093;
	bh=dIVdYnBSuMURdg9WmDrnSjuEyIybOofsmokA/vkMQWw=;
	h=To:Subject:From:Date:From;
	b=TdBoz4hqsjfoj6d85ePpQ5KPaI0qczuGJ3Wlesj957r2wW4h3vEsfjLQidMrQhfq2
	 K9dv4noLJBF0x3y4f/ox6YC5TCYKJFivFavM/TN2JKEsIi+BSHy1+RlGvQHN4OIk/z
	 xDbQv9aylSkK7+OZ+QP883M95O/ixBcgfg9viT7QfEiWTbGNbYUKT75+mtCOxaU1ES
	 41aYfR7qsHsHWxtF7SseJp4xscYjzM4apHfefz+9EIxfAafbednjtbmRPyzBkD0fXo
	 Fjlpt5qwgASraNx7k1BemhXKJsSG7kNGuOM6Df2FiQupNFpaVseiCnOcXxvc0dmaXD
	 r1R4M6BogICtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A60FC72DD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420809359.15590.1272101985152731484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef1038dadb8d18da2190ec01a658066de6677e8c6c430b5da20b4ba15fd4506
Date: Sun, 22 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774208093
