Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595F4357CF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787788234; cv=none; b=ZamZI2xPcmgZhJ8zdNYzeRWQ1KqrfHPho11ZnU5lEDm6z8y2lKDqYZ0lDxZl6YR+gc43w47+gvO+Hol16AMg0SejtmdDk5Yxveqt7mSkH1sjwDMbAGvTWnkrMYaPGJ5qno9G77axmg3T69pxbFwSupnbyY3Af8FAcQqPrKWlis8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787788234; c=relaxed/simple;
	bh=tUn3WyOv72HR+DzmyigDddCqNtQul7pkXknKkTHGPM4=;
	h=To:Subject:From:Message-Id:Date; b=rU/JMpoEH/7G//7Bl9Uhc71NmG+myfHhk2+QBAfxZpxhfVCqAgW2wjZTE/5sAn+Q6BzehgEe1MmsRvUtbYn+fRfTbQSns5ZnlMKSDwNQ9wKESrVlXiM4t322WB7PTbyjjIGFRi08sSJr1dNqyPZ0JYbn1EWlQ9J2PIFpj5IcFCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp0Y7eRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp0Y7eRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4326C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787788233;
	bh=tUn3WyOv72HR+DzmyigDddCqNtQul7pkXknKkTHGPM4=;
	h=To:Subject:From:Date:From;
	b=Zp0Y7eRTu9swLcPgbduFRVpNcsYdeOfR+RwLdOr0ErrZXWTSiwWdTxz9NX8+tZ274
	 aHL1LFqrAueVKNNzJ3qu43KlI7VSSPk5atzMJZrIIH9l4VROT/fM8Dy2hdhMxlLvQA
	 V4rB9XZWxxuqq4sKZ00iYhW8QQpIs0XB+TuQsfbz/H+jnEE97VjABOatDxJyxNBoPq
	 eCffRTVk8udHGIFQ0ufNw6rr6rdTr3Ce5XsGj9U1Qipfxkj4DQDMljl09J7OIrD0ca
	 ZPuC+G+4hdleZG1xj369ul9Hv+OH2IMr/dZxGeqnq02kDo+ChNTNimYoy0uFBQ51Uh
	 utj8h5WkE7/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03E7C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778823368.4748.13331028522559326913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398226ee348c2206342842a973339aee05746a6c7f39282dd765d489d97dcaa0
Date: Wed, 26 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787788233
