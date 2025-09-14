Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C612745C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757821194; cv=none; b=MsTs7P3bK3JoglXy2h//QoRCe7UMeKFNg7YLrrNd8b64HztIDhkZled6M64v59hJDWEVy/jQNO8ZlRCdC7SmEbS6bSEFiZQuwRyVNu8v00tXtvfNiMl8a+BJ0n0FAL29onwwt27k54f6ir4IDFP1fxdsfCWAnzHpxgEtrxsQXgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757821194; c=relaxed/simple;
	bh=XxFReeHKqcE+tL/QOVNtqE8msJtH7VyXfMM2PDj2khQ=;
	h=To:Subject:From:Message-Id:Date; b=dIiu1DnMLOvxOg1W9Y3H8QQGWbGbaWHDE/YMZN97yxKTP21nf5FmFUqdp+y/Y2xHr0jpDrjapWqljqIH+VJlcfeRa7fl2bfCj60a9H2B4bofN3d+K5UE2TLDx9P1P2zIOKl6zeN0KN0n5g5dmpqQn1EyIBpr04AVHMojPaK/gVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnzJqglb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnzJqglb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B30C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757821193;
	bh=XxFReeHKqcE+tL/QOVNtqE8msJtH7VyXfMM2PDj2khQ=;
	h=To:Subject:From:Date:From;
	b=gnzJqglb+78nYkojd0aW5gvnzWpz33jMqVTAb6aRMDtiA2zwxxiFi8daIMZA4qYtC
	 G6V5YBCT+33Bqmwjfxi1az/QS6QFhje1LhhWzs1cFovnmPd9PGjILTJXGCN2M6VCxA
	 oX8ApaoylhgiaoXDe2wd/IfQ0emmFlQzJTbr1NoC8wKnATsZbjethjsw2IbX++Wbmc
	 ijmLDsB50/TZhsZtab5g1m6qxfB+aIcAR79naMPTu5bZFWETYNGv+DksSGZPKP/fVd
	 kYhEk77UXg/xs6yJkc5dVUVSm4/F7WTGjYQvzhCAlWxXdY0Vjr49KXM19sFxT/IzZl
	 Z2hUOeYgTAVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93978CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782119358.7281.13285251432953564427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d680b0d378dc445772dfccd4496ad273c1f15a5d548b7e9a590b1772e74834f0
Date: Sun, 14 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757821193
