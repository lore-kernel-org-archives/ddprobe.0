Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3686A1A5BAE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780105414; cv=none; b=T/fNESyzUcdHIuiAx7iaz/yTvsEuiSVZTr/PZHKEkYfqbZuFh3b9FDHha4BS3c4jyhLgZQnLFaqkgeLgqR6bLW6B7Y0UOSwqpgvYrHBesQ/dI0pQimG84V5swRvna1ZbBOiVvkXeQAhkNvxgaZmJP0IS7TYuMvy8g4H5aSc1omA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780105414; c=relaxed/simple;
	bh=jpk9nMbNAJhTi7eXlZ5wFyUcgu54ZwslReXdRff9TA4=;
	h=To:Subject:From:Message-Id:Date; b=WMFP9Y1TpPUgPVEyWq5ge9bNGtxyaB0mlbczqOHj9cXrN07Wb0sQY3VeS1zT/aICGxlr7GMq8l7dPE7IAO225wqjY6BH9G9Yop1JOOTT2sSy/cuWErhFSPlf7qrM+SoP8v8Ws6x9solMIO/zHO5Lizz8Dmw8LwCUcfDZEhgFJoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2Iy8+oS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2Iy8+oS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16DAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780105413;
	bh=jpk9nMbNAJhTi7eXlZ5wFyUcgu54ZwslReXdRff9TA4=;
	h=To:Subject:From:Date:From;
	b=U2Iy8+oS19MYLiteORw9MdAUzj2WdywVdvXN7NysYSco2vJWF2pAvKb0DDWEhDbat
	 fnNSCUUVZ9aaF6BhZ+o+PqXNzUaWbBMc/DO2OZQww633Xce7SgW+KcItNEDjI6sJuZ
	 scl1Q9V3DaJ4tgB43Z/dcY+V3tRGJAbuw8GSqPpSATtmjtQMJhBdCJKyBpyvrb6TlL
	 OIGQ1+luD7V4oRGNMT2SAG+u9Xp4b5t5pphtcE5cjRt1Eb3EUdVI8pXgFj5MgeGwkU
	 mCEtu0pSbMcgBP3G3amylTOLBi2jAHcVBdEodDuIosFqySw50Z4ktXQddcQPbitYE9
	 9ZWGqjXEcz61A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F54CD6E51
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010541368.11400.3730149903091291280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ef07b665a78383c6b7df777b47848ba9c7678e96d0fa1f8056558cc150e829
Date: Sat, 30 May 2026 01:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780105413
