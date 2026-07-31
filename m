Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821BC446836
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785513034; cv=none; b=TicYTqYscfuj3WjfIDd5PXVdLctwjI2JDgFDiODIynq8Bhf1n0t720/Zwh9F0U+AYtcp2rdfQFK6GQitRHXrG2IHw8Uy2hNy2iijTuRDhoi92AukPsZDfYPeJtsbQZ4/CofF8BSWD8DtxCmLHhjNs/FjVFDxLYpZRD+RaH5XHEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785513034; c=relaxed/simple;
	bh=ziIQHgwgMGNDTvDnSAkjUcOJJz9SbnPKi/z7e1rlOWk=;
	h=To:Subject:From:Message-Id:Date; b=FyRTf2jTNFQVRxCm2zLxcuiQzUmQkO7FWzJ9lJ5FSt2BJ47gNwmehB0pzEBmkccSJ8bgBDBjPlohSqtj2eOXgtQDoTDoiIcBBe3rkzmPPrUtUQZJ+QoqZaiwoP9r97VVtB3LdKhM9tTRqAYiYcfJsKTqyxOdqLEYfYEtPX94hao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxaCAISL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxaCAISL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16BBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785513033;
	bh=ziIQHgwgMGNDTvDnSAkjUcOJJz9SbnPKi/z7e1rlOWk=;
	h=To:Subject:From:Date:From;
	b=mxaCAISL59keMI2LCziLwqaPD8W46Kxx8VaoJ6+whY8OpAs8+WSNrJJesYaw+2d9G
	 sEHi0H22dYMGfAkItKFqvFwQwGTPX8PhhMfrCY+RsS68Tbn2Dr3u2UE5wEBNstYJ7E
	 NaEsAB5irSmAF6jLqTPEqenaAtkALJ3rvHJqGMXjjKCwja8jiy328ehh7Y5j1Ea9U7
	 rlsnMWzrszMTdYqUnleHJAaG2zyLmaYD9P2XA+r1czKIBOB5Q/4SE1pGMEu48X9a5X
	 +J1uyxI0qNEDH8gUGgofpdI28zAGZSeQEvh3YaG5i00yOjxTbsCoe/8TMAnWjOzEgl
	 cd7l5ljZQYE6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C3C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551303369.15115.12100632110060165021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82cda1b99100a52b9520c0468e0277f3ee3012e649c7a269cfcfddc4d8e1d7d
Date: Fri, 31 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785513033
