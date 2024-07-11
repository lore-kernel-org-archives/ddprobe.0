Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5223618E20
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720723643; cv=none; b=WmMgfd9Y5qafTrT+gTeO7eeH+rsjfA3MioxLB02WkDBvMtDn+tVC5reXIlDnJ2JeqZj+Vs8GPz7CIn3+X5mT487yqjKuF+YRC+LqG8kG1LC+B5pK5+cSsylh063psc6K/JwIAI9e8f83q+FmXNzcei8z8DoAVWwq+mRjJ9YwKi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720723643; c=relaxed/simple;
	bh=mPMPnDHUrvAIrzZxHs4J3bmC4Y8ik4M6eDEkFmqUtSg=;
	h=To:Subject:From:Message-Id:Date; b=chcvmqHbeDH1rY4hiccGiwhrhJ+aOvhKEoUaXUUWsYdTt9ZVGv4Az3i9QWXmJC2RSCghJOqUxZj3+Et1dVom53qAy20oIzeHNzEuxf0Jayn7KmOuQHc206k1GEMTGKab5AfqmKBYnNnGkqEjit2Qea3Qeh6CFULdFIf5DSOwxzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3xIYYZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3xIYYZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A40C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720723642;
	bh=mPMPnDHUrvAIrzZxHs4J3bmC4Y8ik4M6eDEkFmqUtSg=;
	h=To:Subject:From:Date:From;
	b=R3xIYYZWTuzNQ+hn11XWuJ1OmlhL35EkJp7gCNMVltD453ZQySwr5ckevDY1uLo78
	 fJZtZufcPKIawRYKFUu81mpJthmOxAvx5+gUfYeEpL3/ANx8GEWBCKzFlPB5ctFtGt
	 ekC6QUdW4pndvhpYwx6WdPg8dCagWl4BxPkk16ql0PHUTyuTOKi91I3Vv4WmolSN90
	 4abQb6HzkUpIDIEyjbBm3jkRie4mV3JGwLaasql+bGz91pNxUdlvcZm7wSnAb4hFby
	 5kpA7DHvnHI9L/Y4v83fAkSKvNKkegn5WrUlSrer4vKWuxsED4g8FTEQeVEgdKA7pr
	 71invFZzarclg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B68C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072364277.17912.17894581349007329315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab15a72dd49f825bd20ae29db6d3374486008b180ce37f8bdcadedb30b0d693
Date: Thu, 11 Jul 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720723642
