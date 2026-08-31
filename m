Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544173B8BD7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788215434; cv=none; b=OxoJAxXGyMVyPiaOTJc7ScLlvkS4Goymc6FOEycakWZwOYv243aEUjLsDJJLhHauF5j7elbyOXQPTy902UItcGK+5CiF8pERL6LlHN88xGa2/cEr8dYHE8r1ofcow+l144G69fj2HeOtMVF1D6wGMc+H25YwY1TeN6RxrbBi/3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788215434; c=relaxed/simple;
	bh=NyPW8zeESi0wh3nV8+dXquQRzTZe4SU4ZNO3vhAnWWA=;
	h=To:Subject:From:Message-Id:Date; b=cOM9eF1t3XzaIIeoTiOL64SqXJz3SGMAZ+jR961zyZ5Cp1qw22buZqQ2opf3WzetP3GO4jgT2g+bEPAYH3E88owLEn6Olj+zPRDxvc2Zn/hkxlBeZ9rocP1dCNgQNodtJuk7pq5VeQ310FvtP+j1AwxzNZFiYEXjpok8+iqi7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqovakZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqovakZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E34C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788215433;
	bh=NyPW8zeESi0wh3nV8+dXquQRzTZe4SU4ZNO3vhAnWWA=;
	h=To:Subject:From:Date:From;
	b=iqovakZ+w3U19PQz0k4WRP5CWQ5kzQpk8xZya6VvwrqQMG0E+cdO0HDAJhpGoXtfY
	 xuYmu8ZpoHQajwZht3k9okI+bbAVH6TECuYGSikE/Pbpr3xdhQjhxVEzFXkYA8PQf+
	 TPUztAax/+9x/FD5jKXjI1dbCEKoo+SmgXkutFcHi6mWBGBqOFaahjzB1qivHSdnRf
	 jqv8NE99pLFLNCVwDYiZtvCnOL6/fdc39nF5vy8eXAmKazoe1hzO+3wOTmHVTFL+Cx
	 6Sm+GUDwQPD1ZOewCo8k5WMleSofP4RQ6DMSk3rClbOzW+5JBHY28SUdgvYBxxn2fX
	 tNXiS47AzF/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDA2C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821543368.5890.5570446349375722321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e660dbca7fbd553b3ba8226e0f78b6707c6810a8c0047011d0a3f8859b9f64ab
Date: Mon, 31 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788215433
