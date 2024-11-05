Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252A0487BF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730775354; cv=none; b=slezRCBgMWFD9EHXx2jRDU5mhTPpdaDAWlH43rhQ1etXIMJlWubwCMKfxMgz9IkzV88BuFdsmnzt/IAcJ4bo/Wyg9Dkh/Qttv2G10r9yIm8QAbhbAic6N/8rEHNaLgrIch4wPbfVyNJ449zn4oJgp61gGwdyb9AOei/7E61rcKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730775354; c=relaxed/simple;
	bh=a/PmQH1ZKDDnRD/nVX/6Tm25BRCdCeNJtflAio7VIrk=;
	h=To:Subject:From:Message-Id:Date; b=YDh9KexQy5caoaRLSzBk1fT6Q9RX6II3i7R9JiXaJBRaypl2LRdzzqcUc0a3Rjhh6p0USO3SrvfSLHjNJCN/DsAvcYXdWZiMwveychG413OUuRUC/XDJWlXONS4ad5/0BQVUd5sIjnj0raX8jVUiseJEcq+S1wewIzfUvY3W9no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hITojEqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hITojEqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA1C4CED3
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730775353;
	bh=a/PmQH1ZKDDnRD/nVX/6Tm25BRCdCeNJtflAio7VIrk=;
	h=To:Subject:From:Date:From;
	b=hITojEqmWvsqGIVwh9/6sQfbzOGdKjtSnlifpQbFVHmy0uPfiZNZbTWjZ3POnyxut
	 IpCFVnupNcfcquzRIhIO/Gqb5VUu3THDAFagjki2rQaZ0a5tFuDqhTWJfPxVkjTn9P
	 WTwS2TbZk2VpBuynIB880WUYWj8Hb0t7h2NLpcZgNKyHzfHfaB4PfyOWQc/Hfmlllo
	 xK+9FM7FGhaYMQ6WXfzCFAC36hW6credfDDqJJKJu/7AujakrHIzGryNJEGEevu3lI
	 LHuTCc2YUsX84lSq77ZWk9cQOwV2MVn78e1jCxy61mgdmex18tvK11647meaX9aJlF
	 HKCU5KiWQ0UKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97478D1CA0E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077535361.6161.4406616745821961559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43a8de7bcf2f8e4423131a707722a941aa3958148744cae0b2f7cb99eae2c93
Date: Tue, 05 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730775353
