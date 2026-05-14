Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55BD3B5842
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778745033; cv=none; b=GvQ2v+bGs7mE+wJCF5IEthhf9H1VplT3pFGMwWNoK+ywSBO040/P+rImX1cZqJJlCgEhBLT6NAEwnRI6SJ82cS3rLBXtBbW4FklTPDg3p6uxTU87DWzsiO1sO27W5vncb3ZfFrQb6g2arxn7qRovKIQstxtseIwRncWKhousduA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778745033; c=relaxed/simple;
	bh=/hV1D250jUBj21yGcNZD9G3RPet4nt96oVnuvO5W7Iw=;
	h=To:Subject:From:Message-Id:Date; b=mscgNTenfkWnlfBbg8rp84rnnQeF1RcsYL6xMvWFmXkAT8jHsZssB0Uf+Lb91Dh2CbARySuirAjzf1vyC+xSYg3F31EJd9KDK34ESGf9OnbRAE4ZIg2Qs9tOzKTUH1ntPvrxGcVzsSS6/o/n+piRR9wv8zU+tbEtc6LeCvdh0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af9yar6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af9yar6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B995BC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778745033;
	bh=/hV1D250jUBj21yGcNZD9G3RPet4nt96oVnuvO5W7Iw=;
	h=To:Subject:From:Date:From;
	b=af9yar6ICx3iJtTrGAMprWHJX1mjx2Hflu8xj/6sugYggft6aPaQJsvl969QGK4as
	 6EnMB37HZKMuEVKBSml1SQmBvOoVCvlM88bhsg8p9karZk7svgGq7fv/0v/vp8Qr2Y
	 HxKJynDgUz/I/KqD7xu8gD5ug1qyqMdVRi6M1FufJHK3Ka0HZkKIqRffJuQ7nQi5bY
	 BiQW/gu1shU6b24+Vm6OHDrXapRNICEAi1aZhnkhvcX+7o5Gnk+0sb8dnkpu2tTaN/
	 7WJfJUBBwvDBmYUY7QUFMczcwgGdcH116eLM/nt91uWtzHnHaPfoFjvJNABh2/aIE/
	 c6FPP7tCLRrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2ACD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874503368.31331.4917081027360988667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6955d6dc0a3ab9bed812d7ac87f5611c0bc6b1054b13d64cab093fed73d054aa
Date: Thu, 14 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778745033
