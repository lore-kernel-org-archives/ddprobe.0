Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CBDD29B
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712108297; cv=none; b=X/zu57wsbzrQTv/xjoAbVnpCgg5PNqH36PnnS3EOn+7b86RjDPJTbpl5T97BC9sa4Cvg31rpTClWHUbXEZfwVHNhIIz5uNw+Cww7n8NLz3MjOPW58axJTbyga8N07sz6wTeYomEA21yX9oy7DQCGdGJn46rubW49ZrYSIh8Z3Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712108297; c=relaxed/simple;
	bh=pAMFc7c2brQUWIW9M/JtyR7rcz/9bz3fs2uShejaj5I=;
	h=To:Subject:From:Message-Id:Date; b=Li+d4KUGRtveAbcMM5AfkMsmxvBHMzAu+DVNv9xij/dkZGnilyuqB6e2LgMP9dYPsT6teW2ffwQUVy0YWJgnr4hOz4G2tl5wfn25iVePtRSecIMmrbAqUENKTPWZRuVPHaWt7K//Cz8uZBAH+r/LmaSVU9beoNqN4TE7aGpbr1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isN7eCVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isN7eCVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CCCC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712108296;
	bh=pAMFc7c2brQUWIW9M/JtyR7rcz/9bz3fs2uShejaj5I=;
	h=To:Subject:From:Date:From;
	b=isN7eCVWr0VtDSlp4G8OAimg80UuUq702iwNKwjVdh0AyUnB6hbXN8RQP5d9tAZsY
	 OlbHs5E9D2Xf2MAnIH2FtEweRLzAMz6CpOOnQ7IhRQ2ByIVpbQlTZwzwLl055nGDUY
	 VOSBz9WSXMUzbzHdSJQHEi87A7oEK3nweTo8nPWC6VwZdY18fTkBUKKOHb2Hj6VupS
	 TqN8XEUMnlFFVwnXGKc8GXxZYXrB7H9VwmaWpQUX6WJGYZQpsTSV4Nmh0hfycM4GXG
	 FwlKQVyfONfYhrsP00mxRZMmswChlhlfR2yTH96+ufJpza66wKm24/OD90jQgD/TpD
	 uhn7QvUrvutzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62497C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210829639.20589.12590238592202125896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74f5228b208e4bfc06b263e9610944137366a375581b087c0fc00e41c3c32ae
Date: Wed, 03 Apr 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712108296
