Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBAC349B15
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782927514; cv=none; b=GufxnA+uriHk9Z3/RFbwJxuCTa6fA7XqLWr7Z6xZAHMSxzDBmXJPkZ2CApClMzQ9uY3C0vEzBNy5+zeq1LTRs0ZjYYA3YSf9P2a3rpTEkVmiAM/5igJBHZkazizBLhsQzfRLw4q7uZ565OW2dfq7l8NZ+CMM/UwSO5yNvqMWJrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782927514; c=relaxed/simple;
	bh=4iNc2RddiTL2c3ZZKA4Em82DpFkQI8U6lXVTUVHBSDk=;
	h=To:Subject:From:Message-Id:Date; b=PIiZfCo22AmsZK9PhPu/LJ15EYkCI9RpiT+JbQSTxCuN0ZGM1LSajpi/s7mfv+XNypzzTmSV/iQj3U3/pQtawPJhHWllKVtTVqoF0XYlmTb5fMGWzQhopg0yOILI7/+Ry4urVa9OlCo5FFhFR+GxcTDWctsoB+eBucrIk7U9EZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8p9Op0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8p9Op0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4167C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782927513;
	bh=4iNc2RddiTL2c3ZZKA4Em82DpFkQI8U6lXVTUVHBSDk=;
	h=To:Subject:From:Date:From;
	b=b8p9Op0c/4KCZMR11Z0xfRHYpVtIs0EyiahNYD2a5Z3qPApUB9F3290AzVbJN2n9M
	 2MjoXzjXDOn+O+4AKsWAHu9OAaZOGrfS7623silWk8NQwtclKRO1ndvVREpbvqVilR
	 WrZzHfYj94yAY7cc0OYCS/88MCn9RB42vrpA6BNEDfRq4GC1zAVXHU28ox43DicwOu
	 backy2oGbKNgDXxReP6k3i7x90iesyQbqK3ue9yqtw+CmvIZu9yBno/Rlk/KNFnFra
	 vYnrL9tCYNe1A8en61CMvGiHqBk0YoiKtQtutsf09E51DDtPERW2j/T6TiWzIPvNgD
	 J1o8x/HIjynEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F5C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292751369.30458.10796355089677321094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1a5246ee61468896914012056dd7b3d8bf0eb7449b82e2d10b3062a48f0e8e
Date: Wed, 01 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782927513
