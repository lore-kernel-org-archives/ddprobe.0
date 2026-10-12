Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FC03D8122
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791847234; cv=none; b=fXD/Gs6p+a3R6hPQ7rW/qexEyUzyTZ+1kKsjs6ieFZgK/UbVN072wkl+louCVjAP/fC2f8d+zR1qrGrJzyp0taGuxliqrJpsfdja2pN4JzrG8sj4G5gb1robC3PMDyarZN9nClhCX9sd/JThEPqkEDpNfW67HGI6BGGt5PG82Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791847234; c=relaxed/simple;
	bh=SnKHSd+7ycSuqMg+WoMgrkFl0sde9ymWIqa8H3rCddI=;
	h=To:Subject:From:Message-Id:Date; b=VsyU2b8EfDTXUPSk51VRRIqRebaOV5F2S2Oxi9+/WaF5uHRltVvhliZHsQMEkdNdnlOBVKs7QbM82suA9hcHiH2ZUf+n/Qvz0KP120hY7KPnguwWp0TK/b3LxF5kcb14SBd9B7vRhOa8UWoNCelSoRnayQkyJefXnkK3PHCod4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evTNhSVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evTNhSVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB70C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791847233;
	bh=SnKHSd+7ycSuqMg+WoMgrkFl0sde9ymWIqa8H3rCddI=;
	h=To:Subject:From:Date:From;
	b=evTNhSVlAp7S3FnIQuz546hvIV5ybOCcoU+4yAozm4bgIV5s9cKYeH8krjESjopYp
	 0Qy4uolWuRho1w12TwEjcM8rEjH66EYVnfc0BSyPpbly5Ybr6VW6p952QlMORotknp
	 yg6H+h3f1qUgFKvyVUidxqnr1Hdm7RJ2D5wgh+Bw4FgiQ+b3nHnX5qW8K4xEGtXbk0
	 5qcHRVEKdP6HgdKeSQmhHhms00Ri1b1OvPDDV0wwTpIVECSUcgzXf3cXNh+KyxLAkR
	 7XMXekcylTCmrkrj0aK7iycuaFctOAgHaQeY03BGU2UkN6oCjSsoVOshBZvBtB+yZd
	 doTojYzP/X7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E89CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184723368.4071.8546158025972490965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b995ca6e4eabac6015c4aea9e2830308841404f1de7aee48233f6fbe949f5e
Date: Mon, 12 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791847233
