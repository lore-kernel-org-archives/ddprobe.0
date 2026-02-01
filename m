Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C76283CB1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769930034; cv=none; b=BM+YiOioPPMrECkwT+b2Vqg3IG/XGFu8HzjkpLXe4I8/+C2bQ8o52+TWh+7XmsDebhlYLMx4hE1u2S4OHI3XF2n2FHDzY33gqt/jLIKHf6ppZZuIK0BA027M6nd0yQ1F5FkoKC15hPK0tvyHWZbwleaBDitBlapLTepYkW0zPGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769930034; c=relaxed/simple;
	bh=1qiXYLVStJ/RB4xWb/RfIaIEAp/ohm1F/ce63sWphbU=;
	h=To:Subject:From:Message-Id:Date; b=cOFenrwZE9PxYTqgH3P/pDAEgwovuNuvWkczVN5MFmGFRXuOLVuZld1W7i5ol5dhtfaXSy690tQlOO66486EN0FqZ3QB+8CRk4FZiXK4HKRGddmJQpn3eFmI9l4GbdmMFbPCMUp5iyjTPJcLuYrxhUmoQTicKOqDQlK+tPC+aCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW9YR/Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW9YR/Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A599AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769930033;
	bh=1qiXYLVStJ/RB4xWb/RfIaIEAp/ohm1F/ce63sWphbU=;
	h=To:Subject:From:Date:From;
	b=FW9YR/KmGo0BvAVi8G1l0Q2EafW79hxmqWKywqdUyx2KKtKuGWgXYEr6OwHQicH41
	 jnVFAKwayxK5e23vZTmyP3KnoHyCRdh+HXZV1vZ6KpO3w6iltXEMV9mGZJjPLWtXgJ
	 lyOqIB/+Ngj2gveFIb9uePWVzvE09TT7n0ZrdRUwCcwYOZViLHzEPRmn/HgtKYBJRx
	 23hLlH1VD7LmbmTsmv2pWqqNkDOkQykhoBNAqpNlkPakBQ3uEv3tSNcC589dunH+XY
	 anjjW0mnslQDJ6OR4rqpCmeuiyOLGcNjca49Amiw0xHz3WzWerCt5v4S+uFKW84Lav
	 iA2p5Xt38fRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91898E7C6FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993003357.26837.9579420559264506768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f256ca6443309c286bdeffaf4e263437b5c2c5b16f5c4b7d980291c0d19d05
Date: Sun, 01 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769930033
