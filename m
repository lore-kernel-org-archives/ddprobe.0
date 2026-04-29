Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA5139A04A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777445255; cv=none; b=fRxYdqdKR6qYrPnyWW1S/OfAJN51Rwy/skDBrZH50W819grPqXqtENIYjQr4anYuqMJkmhOoQInsT9njve8HsDiOkDz7VQhnLx/9Wd02Bzn5Y7iwYE10dh6BJJzy7q+P7TBP+4yTvkYEZFSZXQt0ZA909q3RwhE33+Mk/fgb5QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777445255; c=relaxed/simple;
	bh=RV4aSrxTB4hM2nHU/wCV76MxGvdfA14n+fw0WPxGrV8=;
	h=To:Subject:From:Message-Id:Date; b=McwscfoPO9Xeoxx81IU8DVSn0H+rUac1QLAyfc4rs+PGk0R6JdipKLQbNf1jq0arQMkUKLIQJSId5ROdguNXDNWz3LQwXcd0PXoZ8LtUai4QnY7+IcE6qCgDa2oUz1hMROSyTAAdxRksEEv7qZiYALYvStlxbSC63hk53FuosF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKB3Yl51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKB3Yl51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85A9C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777445253;
	bh=RV4aSrxTB4hM2nHU/wCV76MxGvdfA14n+fw0WPxGrV8=;
	h=To:Subject:From:Date:From;
	b=gKB3Yl51or71lmGlNBZoxp+DR7ifQqbcLMSzgXXqY/++EUdk3S+FgnVU1H0qSqE8v
	 MU2twMnFsUGj+zZDsNY9PO0FUalhJjUMQNAsi0vIPSxuZfuaZPAH0uOzA9EzkEFKpu
	 a4Y45G4Cuci46Y0ZiqOWrSiU5wvFQIwjdSLob2l3x4zVzQP6bEe0YmhB+KTlf2t4v6
	 oAzmxLctDFZZCM94CyukasCB6448k5MNNijZbqq4LUj5WBrn1i805P2NfWjCQ4jOmt
	 BZymJvDFAUSY/7jH1+o0NePpV/1i/licX8bUtk3Us+PAUp0vAytvKQ2613niDnq7J/
	 HK64AZTyDL7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2B6FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744525368.8728.3286069941233960025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573be0cfbec56bc52b2a0012d13cd8a899da569deb08afcdcf3bfc48e94170a4
Date: Wed, 29 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777445253
