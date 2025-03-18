Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E8C2080D3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742297394; cv=none; b=XUIKIWtnn9d6rKrhNUZvSWFpyWAqMPe9JpAhbowD5snQs5G/fFEapz02z5lQay0GEg1bjELTtTqOHQOAeoB9LPN9b4eSmvzogl/y/uQr+378Y14ONuuqYWiFH22znBsP1Xmbhe5B7sm7dvGLLltZ/4O3XPF2xzU6w3Y6c+zd5Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742297394; c=relaxed/simple;
	bh=9O8d283L2mYMGimW9vd9LNESXHirnpSn7UOvpNesFYA=;
	h=To:Subject:From:Message-Id:Date; b=Py+OmrPJNzINNYIDucZLv9ZY2CZpz9E+g8G+VzOEdcRYavf/PtsRscr1nrNFbWAB3Mm8zhuTllJTrb7T0b0pGtFF6wAOwBiBnEwSibRZZl1qJOC/E7eJ8xTOLv0KRv7yxOn/5QTTJg7RHD0ur/DBdiJUvaXRngXchPxyuBz/pqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3YE1ebs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3YE1ebs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB93C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742297393;
	bh=9O8d283L2mYMGimW9vd9LNESXHirnpSn7UOvpNesFYA=;
	h=To:Subject:From:Date:From;
	b=f3YE1ebsEAObS/BzLGy7FSkensZdDG460ObuftsZGFXmJdyeR7ccRVmBfait2Xuvr
	 r+Sq1lW8kjKbds3NgICLVeqtuMDgDZ/nL2ex5NLSt8U6CiCwcU/friZEWA5OuaOBxt
	 duo0jdwDx7wiOBRArK1Yhz3i+HhcoyBHRUN93FAfubjRSd45lIA2oERXRYmcJZJTU8
	 v/Ys956zh9TT/vj3PK6hEMU+kuSK3yemtclxl2lqu9Wao/R1M0YQKPHquyy4XHxDuH
	 ORrqG2Oik9REQ3g8r+bppiY/9qawegIYFdFeWo0y1saiIMhdvGyD3316wA/496hFza
	 I8jL5oYow6UPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54E3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229739365.31755.1320767616014216187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc3dc77b29bf12fc8c976108702235e83852c158ff7d8a0ac313e750948cfb7
Date: Tue, 18 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742297393
