Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2022D7391
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755035994; cv=none; b=CpTjKyKUt6bf0IMnUjkAbTwOJKvsUMDV4CFdJYnQj2X7ChLO/JqQolF6Qk9sJPu8CPpERcWK3NIWYLks5cPtbuD8i39Zc3+jpdylSrPDT9dKc4DxVULeV8YmFYS4nwJmXXyehS0CDM01WKJ0t7aZEod1m6ZIdkduacNjOeilbok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755035994; c=relaxed/simple;
	bh=CPRjUEsUvrBUppJvnbsfyUi8vBizMsdQNpFGN/8cg94=;
	h=To:Subject:From:Message-Id:Date; b=sqOUoitQxLGtXDe8kC1EuXrsgW12BIzouAq/9a3I+NyymboEyrjnQ2KMu03yTHs3oVFrDGITQAjMwukD7OT1c5EilC/TEvDAW9weXjhVxSwP6kE3DBexlXmUvegEKQDvytVybpAW8jJOjba2mpmqj9tlVox5rlvO4Gz01Mvbh9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6E617t+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6E617t+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D841C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755035993;
	bh=CPRjUEsUvrBUppJvnbsfyUi8vBizMsdQNpFGN/8cg94=;
	h=To:Subject:From:Date:From;
	b=j6E617t+Uts6tx59I8L3NFg1vGCjuO309/KGTuR2pIVfDb8E2EEyTTi/57E1aNwcv
	 odsLL7SpFVEV2Nee2u3XnNM5t3dVTP8nRALI/fUaBxGY+Qy7LMEf7+F+rn+TGwYmqD
	 whqW8AnxNeahdXoiBqgIyD+rbt9NTSHQOIEtJZtXuVPzfNGu8SuZs8XwDVu+ZA+1Rm
	 uL9bQqA6TECWi11HHsFYb3rXiEkrNjIOM/B9INsQMi/KOda9AdLk2mYWnn81wviByk
	 ASPqAUBrWQ803zg62BnF1wmuZZi0zmZh7GPZrfKBvZgxAmNH9beUQ/UpZ7M81QxaVd
	 yD3xZvYIAJbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E34FCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503599357.9420.2149333754982018515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e59d97bfad2fc754970297c9232fde9d99fe7a1576f0557610d87e68b76faa
Date: Tue, 12 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755035993
