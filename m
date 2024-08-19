Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCAB28373
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724059554; cv=none; b=ps2fDBSO9sx1emBwHZPopzrgNoSVqJuBlkh7pSPJJNyZeplKVYenvXv5eFWz1OCPMjSxaI2ZCRIoUqYDtSYFqcbNVXfJuYxpX6fR4fnYRlwM1mCDg1TKLjc/3wxg198a/jI4h3ykWpa0E9riJyqYNOppZE0Hhd176qKd+CAvzco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724059554; c=relaxed/simple;
	bh=OZKF/W8Fo6OaqNNpnrD8/mzWS8IkZOtoqXEtcILnxHQ=;
	h=To:Subject:From:Message-Id:Date; b=OpivDJi9pWW+XQQx/EH/+XYX9L76cAFqGYTzhz7mnrnMKQpnXa/JTyK39M8rpuX9UmtgrKWdhkwaux8Y1CLYfp2+Wa4qaCzut3e/E2Sa2mT0Kcn3ZbHyGso8Hxt8DuHnUvSEenPAP3ttK1fhUVPP2yXMIPII38WsY0qRsWQhfOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efXYnwN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efXYnwN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0387C4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724059553;
	bh=OZKF/W8Fo6OaqNNpnrD8/mzWS8IkZOtoqXEtcILnxHQ=;
	h=To:Subject:From:Date:From;
	b=efXYnwN0dRB7t7IXDDUnewrsJjS9+cbicEj+0b0b5pi3AeF0wZAwvQxEVer1gtir0
	 lGoiCyZTuvpCTmDXfXegGOCY4dwoUR2mx/dew2gyZvdzPhtWqGw6/MGu3tWoKf2NXe
	 LRegae83XTAzf50/MhWIjAI/muF6D+fBfm+GovyPXSGkTqa2ChDTj1yx7U7cMloSfS
	 YWto9xxwWNgvXp9678ZD8R5q3L2nvHL3U+lY6e1sOB6S8omsf9zyspD3KVtk/bsGj3
	 +qtaxxTZV41a+uHZ/koxYMUdTkdYBcKi5365hCQqHxJ9gtwxFuEkQ1TgyyqP5x8kLu
	 GHWLxwOsIzL8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE64C5320E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172405955362.32650.3048429346802818607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e13315fa42ee8864d0cfa4426b3cca7f9a28c9db86662a51024c1d871b4bd65
Date: Mon, 19 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724059553
