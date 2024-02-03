Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1885C8F9
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706949497; cv=none; b=kGZum55yaheG1idQiZN7rjNUY2o/bd576tkVtM33pxuHkLIYmLvevSJNY5o7XVU0wJ2su93fW7iNBIsIebzx7u3IR5Slsd+a6OdUjlLSQ+qFuJ5ejgPK8x8xCr6l/pHKBTU+Cj2nMMh7FKOBR1nMcZO3m83U4myxbJkxP7SJqLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706949497; c=relaxed/simple;
	bh=C+FRFbD198ZZyqRfhe63tumtNVYim8iYBGKvTzE+Mwc=;
	h=To:Subject:From:Message-Id:Date; b=M0HrPFVnumU1grIYp/gpq8DEEwCKYUYhkvQXbkUJSAqTX7+67cIxoXhRS5ZtWFny9A3mvnozUzJyBeKH1jC/PwiJzc2mCS0yGeI9anAJ+Z/3m6YM10V9BMNlUQ8rY3kGFiN4+NrDXJPvQ8WsfcMY+v4MwBKl0zhLrdqmXD0x8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQCfOlxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQCfOlxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D5BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706949496;
	bh=C+FRFbD198ZZyqRfhe63tumtNVYim8iYBGKvTzE+Mwc=;
	h=To:Subject:From:Date:From;
	b=nQCfOlxxetiIvayH+FPYYwAyuxqqqxHyzh4sDwfDPzZd5Qeb2a9xspiqn+mzZ/UCx
	 0juKsuvYCh74mwtNuUDUd7cEFO6qKoirGFytrjZMyYpskw/UMWhsfY+HQ0lPV70WVu
	 Tmi8BhXSrcGJ2OOB7rBPlexH9FclsvQ1IHb5y/G3fvyaOgUj8uLyOnBc9EDAWC5agH
	 VfGJF9l/mVx4xvoOA+MZIeFSkQZQaktBc394tiDhyFrBxgILF0eoNbeCkLjh0HKbmO
	 8kPgNNdN4CVUVS4Ft3EJ2rJTay+YhM9/WbU+OyOAG7WmAtACcTCXHLPSBSuryJpds/
	 l/wBBgFx9FQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF0CC4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170694949637.3515.5171485208448666906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79528332ddd0f231f1caa45bd2ac46835d20e865d6b2192124b252ec2d136bea
Date: Sat, 03 Feb 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706949496
