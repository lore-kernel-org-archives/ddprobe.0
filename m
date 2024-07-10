Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CDC848E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720651043; cv=none; b=Z3KRtjSRS3eSw9NxlgcjGKxtIxQGg+h4IZ6cyXaEKZ9Y1dRr9JlytxaJPhW2wiEwuYyDHvtk0UXUA5jiQ6miNtZClWB5S9uETKh3ZUlh5ARZcMxBLffKW99QlUKJLcgHj8L5A4H4D3P/q/ZnOvBzxlliaUYWU2GRyx7iT+94p/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720651043; c=relaxed/simple;
	bh=G2ALO9ZhL/NpOZDgVdvwbe5deCjLyCh+PkamBnGGH7g=;
	h=To:Subject:From:Message-Id:Date; b=quG9mdX9rcZD62LMZGjLJPv+Q/20BhXS2tB2WVRII/TE+OzAotljJFJnKkmgslpWqWOn4jdZQRfQXQ7s31eGKOLJ+cjU594783eM93Z1pjlyGPMvmVGVWq1M+JUxUZM5gAx5okSX263IeXjrhF+xsxzq9mMJoC8tgnhLzB9l/pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDrwySTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDrwySTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C6BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720651042;
	bh=G2ALO9ZhL/NpOZDgVdvwbe5deCjLyCh+PkamBnGGH7g=;
	h=To:Subject:From:Date:From;
	b=fDrwySTV9QX9y+nca1GkWrGXHVUGi84dAnCJKHeYQQhyIm6bgrTZqr3ENkJZ4nMny
	 aaK7Wjh6QgGVXdRNIlQfX2/izzkpswRPHVdldVQNPxNZcSwKloCMYvgvJMgfx0P6yy
	 FsD601DxwynyDtGl994v0TCJU/DRJrVr1erUDKOO5Mhac090J0yxL3vA57Ej2EsG3o
	 EIF51usYr+uvW/VtKUDjOtpbDXjLxPhHCRuHdsBKBDwpE+KK+s80l1KrIBpEUxQ3ns
	 fe7ZDdQDAP6Gaj0rYk8ipFc9IoQZuviSebF2ASr//crLpYI6twdamOqymAhpUxqzbg
	 oz2Kzyxmy68aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE666C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065104276.29229.16153183536109279931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75284878d28a9b49111425fddf301274d84ffcb4ed33949c3ca778fe0bf37037
Date: Wed, 10 Jul 2024 22:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720651042
