Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16566208AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764406374; cv=none; b=YFgcZUX2SYpGrFPDPfmI07IvvcT+2PlJ59BS5e4S4g+F7TmzNS39zt1gsYrKrSDCx8KjnYmAq0aMxEG+rhGS6pPB8mPxdVGQ9Joi3CiEVLevTtZSTaK18A11BFTST/0wUtyT1+ejXt9zeJDuNxDzjU4lLiYCkIYQMAyHUzVkcOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764406374; c=relaxed/simple;
	bh=Suhh8izm/0ctDX3X1EmHYw8u3+VTHbEWKDgZUMBCe/w=;
	h=To:Subject:From:Message-Id:Date; b=S6X7Eq39fRjUC0XDDeEKLddV05RrFXPbxkuf1FHPhxWE/cm5fyAwJ3/KNMTof8HrAKK6fC1KkqpxEdJE8M1dcpfV1c5yhl8kGewxsBlzL5TDzRwSrCrIfHke3WPCggi+t9V6UWKN3QMQyCpLtjL6aNkeDL/xdT1vmQyq65GJElM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn2e0Ksu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn2e0Ksu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764406373;
	bh=Suhh8izm/0ctDX3X1EmHYw8u3+VTHbEWKDgZUMBCe/w=;
	h=To:Subject:From:Date:From;
	b=Bn2e0KsudLvkYKZfrb1S2+mi0dzwLYbehm131jfwSRvEQ6JhpF5znxOR5dWA8EaAF
	 NutusjfJsX0G5vaGJsVfdjhU6CfcrHf8AnXi4QSodD8SeyUjYX5HTs286VQ4Zph/vb
	 c+M8WWkVrtVxqH1WhLvsVZyXvckURKbUA2HuU0puv62A1c/DsbJcebBgkOJRsOxVCN
	 UPdGqXDPU+aevc/rW68Rjx5W0aWK4eqnsGMdWqXJLUbUNaiYwM/pU9NocSX+XTIGvn
	 Dc9oo79dFRmLnuRj8VKd49DpJbQpfU3nrnmJSrQ0nMx/La4on6CndqNonKDaCWLs4p
	 DwH5tmINObyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9437ECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440637358.1907.6627176048978093102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8b0055eac3af101248dd119e1840d913c3ebc76560cc1e9b2d1ffe4024973c
Date: Sat, 29 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764406373
