Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B633A3E69
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777892854; cv=none; b=fXsnVKdIu43acyYPhbHqd9ecbxDTCyMRvqKLwihPoL52dTQ3ADGuvYnqUyrVsp3nAWWlT15uXzLhiFQMVPPMYNs3CnAsHIONsnbhcyiz1xwEYZXRO4d9tc59ut3pBcXBTs6biWHlAiJRQscnpIUeJC2xnX3+OKjTxKL1pDcHmaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777892854; c=relaxed/simple;
	bh=0BEkAZS0giTvqGmQ46NwD1DT1cm2IG21+93bJ9ph5AU=;
	h=To:Subject:From:Message-Id:Date; b=L0NoTYiynuNWXi/B9Hujh8sd4pP9hh6lJVZWwdWeOBd3lOvV/bxpy9IApQrkaoKxlt8zVX/i/izKsDLj+QNz5Bu+UVSKFDF/HvjTiY9bi0JOy0cAYTapjUbmOOW4Symkd4WLFNOySqaxD/jIT5YjY+EVfhZ8VLCzkGAlDryBYl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyP8KaZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyP8KaZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7197C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777892853;
	bh=0BEkAZS0giTvqGmQ46NwD1DT1cm2IG21+93bJ9ph5AU=;
	h=To:Subject:From:Date:From;
	b=hyP8KaZX1QGJ78x+uD5rgKhHWcVVzzXmUhFcuzhIMYjR39iRlD2rJhP1O7UDKPmjJ
	 dokqFsFFTudmEzp+cD96TK40UOk73AtUlQ6QlQPJGFW6P4nLyFS3Rr/xsGTe7fZk9M
	 m1BkJ1kA0F5YLj1T40rqTT4LU0Mo7BbNZctUjf4B8thXiHEwIjyfBJszx50T94O9dZ
	 +p69y3S8kxeynI30TpWXc/beDxXny6kbob/enoxHoDHRWj79UDv/YKuLlfCkZ2+1DH
	 MJQPB3iEtOYjwVAoHqNPXOPSCsDDrJiVUWSQPr5DiIWyiP2VtTzbDh9dpSRMKpfMPO
	 ANpyWUchlVyqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DACD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789285368.10434.9613378915567829333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48926c2b16d4344746dd1824310d59f5f6a12cfa9c6800d518da4c2934cab1a2
Date: Mon, 04 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777892853
