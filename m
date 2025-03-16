Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593DCE55B
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742095194; cv=none; b=tylqw6Ep2eqSh0uYWe1qaRAIJ+RWm3RkgIbLIOs5MbKRtzxthEXrnQ/J4Fs7DV0GG1+wx8V2hTS6S5MFKetmO5ZO/ZnaMth3LtXqnj3PUz1D+ZPB9RbvHtmA/6QSrFib7AruADRyOLtAb18SuByuczaNBxhZ+d8ZjCGWi87l9B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742095194; c=relaxed/simple;
	bh=3V5e3GI3sav6MgVYA5oGruao8tRZh5TFG7RYxID68dA=;
	h=To:Subject:From:Message-Id:Date; b=F6oeuMubEHytMRWTeDwNQaqLghjz30FT0CE7IOroh35sebl++scdvi9WXpZ2fHuX7JaId0NmHP3Vv1eUUQb1G2PzPgW7ZUWxGFsVD3geKemKqV67xnoUwsgJ4Rgvo5umx/a66vBfCASJEsFUhLWdOOr9o7udXHFmBZ2ClWsesEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBWJqr6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBWJqr6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E2CC4CEEC
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742095193;
	bh=3V5e3GI3sav6MgVYA5oGruao8tRZh5TFG7RYxID68dA=;
	h=To:Subject:From:Date:From;
	b=cBWJqr6DNMbvccT94QyobZheUl5lTWtKdlz174nEoatbU6+sltImZ2QA1GkwB/RYg
	 a8+lBbo+BmvzV/Zlwdf3TMxxF8cXLedw22bhxzQVfbjrBD0C95r0M954NuQuMLWF+x
	 Wx39mRCdW78Njf+GgWwCWhm9JzN7rNX6WA1lHxg857uKwGcChmP9u+UeAKOJd+EbK3
	 c+T5Kx9PDb1LtXfcWEYTKi50tDGudGSGJ8Yz7yoBU8wxqmr+3p9DbqIYtb8ni/z9AQ
	 BsUxJUABiQ4rkLsDIr60vau+Tu1bKFhAB/ZJjJsAcyXZisgRm64rHDP67aNK8F80Cc
	 ehuP1ZOtWjORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3894C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209519365.4151.84140468745652793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baf1ca64ff139db2c2b2c3422b34326b0658743ce5acf851ade42741024746b
Date: Sun, 16 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742095193
