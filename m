Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E1D364032
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773696294; cv=none; b=JrBViLVHUcjxJkDNqYZ/jMctQVfujXHKiXYqUiv48OSYfMHhinfEUltsQrmSqRkxyCdyqrfrXw+qeSd3wsJB/gSagicnKQDACtN9WoL6B9Z7LJrl9vhmsXDKs/c4cOdvapOSbvLkg4fIUG2CkFCvyA72Bq0TmnV0S4rdKlmpSXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773696294; c=relaxed/simple;
	bh=eR+Am3/Y7+PorMfOUPtmBN9uxu/3dFUtl7vewKyRCIc=;
	h=To:Subject:From:Message-Id:Date; b=Kaw1JuVpob181nUjPss6vPQx8c61bwjBZTnocQPcif0DbX6iFKNt5HA3/7MhIQn45wl7zj8WQKiN9G6EuPHtsUCp/v/VE8SAWj8TnOhmqfoCk17Z88kV/0UZzLG/RLqofKjQfURWOTTy1oF4Z8mKQYtypdY3Sba36Rrg3s2L/Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQpJ20DN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQpJ20DN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E177C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773696293;
	bh=eR+Am3/Y7+PorMfOUPtmBN9uxu/3dFUtl7vewKyRCIc=;
	h=To:Subject:From:Date:From;
	b=lQpJ20DNOridPy39oQUQBWboiZVI1DSResN9x8aQVn4t6z+c+iPsY9UnOmLHA7i9d
	 gywdHlxY/fK0rFFlJ0e3uMpE5rJWEAQ1HRNtc0ofk397UWDvSAoyRArXqejalRkKLK
	 pwNAb8w/bUr3FShMxJx45u36oEeFkPVIg+zw7cOFFbmboXyjHxNiyAT6laYeF5fJwy
	 ZtkoEj/Izvrr1QZbvw1pYmLAl6Cj48TfbqFGs4wSzYGN2ngKoorRsoIiPD/vMtQHkM
	 N4Q4Vh2v7K30UB57YpIc06TRgNvNSEwY1S40PMmb4rBJy/73wHVl/pmZkuSXjDiLq+
	 QpSwAZDzfGlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BFF013FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369629358.4962.10877317730639498565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5993d9c20e32a3af7ea2dcf0f3f9ed93330cdf9b8632b857282bf43c0fd8b6e
Date: Mon, 16 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773696293
