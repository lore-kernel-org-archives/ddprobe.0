Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DDE3546CA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781646994; cv=none; b=eV4K/omlFy7Pyhq6Fqje7GDk+T+zKqbxaXFHJPYgtjn3/I9tvoI7y1RNTps7S67JYa/R1onnBry+dzDdHKRGY5Yn4Odtma4o3GpUL69uU5RetPQocRqFgCTSdctqH41XxXA7GTltTPoXsMHtCzO8iZJEcyv9uJyeYEA3LxCGdDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781646994; c=relaxed/simple;
	bh=9z33ZkIAzihdKZLPNflpD4UvVoQmSthmDgC8cvK7Kkg=;
	h=To:Subject:From:Message-Id:Date; b=sjUEJ/dSFWEVrDT0xFRnXsuwOjAwawq8SZCqt1W6fO+nw4GXKqG6lMpT/4ZhsfmkKou5Q3ubwyE0cWXOMxt1+4X/B61+U1Lb2Kfl9yCjeelh0FeBs2cf/d3Ss9SAkff+w2dYiDOfeUDvipwdavoKdcQJDYf3p2rFYgov2LTL05A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBbG/Udj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBbG/Udj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BCCC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781646993;
	bh=9z33ZkIAzihdKZLPNflpD4UvVoQmSthmDgC8cvK7Kkg=;
	h=To:Subject:From:Date:From;
	b=bBbG/Udjja8YVki7VKafwu6Kp7cKoBnohZ/x6bk6kX6dTzj8eE6crJn8uLkTLg+xb
	 WBZFIJWixTqk6mY9BUROvFOttIh3ZOEaEokDYKd1BMSb8d5rhZCKuNhVWrB/ey8nWR
	 vzniCQupB0CDcbbnADbUK6DpaYMoNMTufxMFrM8FGjvez4Hq4nfOTN7RlRMWN4pC3o
	 5LrvDssCHdAlGTQpjvz823le0NVeyZdI9nOP45tlI1SErsBbn2FDMh7uC6P1f1TZME
	 3TN4dgz4plJ4tZuX0qX9B0RMwWLU5LrRBYdg476o55+TRJFboHPugl8rGMzylM9k/x
	 OWoZFwDLNiNMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8078CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164699372.19144.8502469487423163934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94377c114c69552483a0204e44df5aa8bc1483d368fa4e0f8942d47dc4b5603
Date: Tue, 16 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781646993
