Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24007146588
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758467394; cv=none; b=NByhtOMdNlpSc5WYZ7GfA1p/W7m7Lf3OEZi6usMVeiWzBCxL43gfw4K93PA2q7+dX1Aa8qtHCv/s7HOuVSeuYjEadmZxCueanB/a0ov1oOdkp431DVY6ZJYCjaHP16Tcs00SDkUqiJr9NrDRSWhkicSdQ9o9JN0GVIhfUPmF/sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758467394; c=relaxed/simple;
	bh=H5CupUypU7rxsC6YMi652SPMGM9hvBgFt9dXl8HkJ44=;
	h=To:Subject:From:Message-Id:Date; b=Sv7bASBwd35nF1LfWbwqIqh5g/izv6zYLrl9aMgu0dE5WTq8TdZ85A9mJqKeNH1I6HpqyLhbQnd4o+2F5G+aaJJFuXXsa89XvaQhMncSpNtb8TzrNPsUHtPHlJIBgP7WRgX1gSLe62no/GopO8FxGitf999FvVujF3UzBfM4/b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG5TUSL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG5TUSL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0837C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758467393;
	bh=H5CupUypU7rxsC6YMi652SPMGM9hvBgFt9dXl8HkJ44=;
	h=To:Subject:From:Date:From;
	b=GG5TUSL3HzND02CaSzHlSzsSBiCmytt4iCoLSknd7mYqHyXl3Oh9lPXgoeDsyQQkZ
	 QLkhSvfXLaN0pgh/RpOGjyrr7Ojd0JsDzBZEVIfH5+Cw00fFWZk8I5KUbC5IR98PR5
	 qLH9CRfoRu0nbfNPnZxD6gslkxI9t2I5CNy8Iy+zjjwSgausRb8807lqXhjL/cQExj
	 WPQFG29A60uRSfIdLb4c90sa4Rbsm7W+Mw0jHoYAjnmlOTEZdAX2+dWMniQ3Hs+pJ4
	 4WOjHctXTrYPzbYUb+lAWd6ArU4IiamJySMhBY5pQdohsPU7z/Xg9jTH5ULHzoAFpI
	 uoF2WOFnzOv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A3CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846739357.19094.5663662326710491066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99052202a6c55bec9a72c4557dd52391e318c0edd5127e3fc3b3d984181f63cf
Date: Sun, 21 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758467393
