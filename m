Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501428EB
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729407354; cv=none; b=FCIow6XrEezJx9zTI+m5dVjmpn+PZxIZ4GGIsIXjq8JkNIW/U8EaLjGKjF9bUg0giIM6+KJBG7MMxowPkaAxs1QOE+QGDd8J1eqMBesVqYWJVPnN66cH2eSc5JWkYQVIS9mVQOeOw3npjvLX+otASyVRhocAxdaU7gymHttiinA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729407354; c=relaxed/simple;
	bh=J203wrq6915uaxrsQga6sawuGvLPdUh3iJoN+xBpi3M=;
	h=To:Subject:From:Message-Id:Date; b=MbXZJ+mUm7VFol80Zqsm8jwK8M3WIjuLaRxJW304vixC33JawBH99Vu7VxfpBZqHuzV7xMLKqMsNeS20v4zkfH7ujFIEOUzel+sp+DMWqOEE49lA309S3apm2VOWJAdSuasRH8x0k10MPx/GQmpMtkcrKIGa73zkxwd39n0pqGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tv1Cl7ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tv1Cl7ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB7C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729407353;
	bh=J203wrq6915uaxrsQga6sawuGvLPdUh3iJoN+xBpi3M=;
	h=To:Subject:From:Date:From;
	b=Tv1Cl7ls5KnckAiByRZZYdDgRKe573c7moa2MJUyIdsV3YLkdqHMR/s8gYHQP6uEn
	 tvx/k/O3ryKGjSA1zoUwsaOxnJaYyYe88A+yOVPmh5SyNv9xz4SLB1tv+PuY/obNaP
	 THtTABbaw86aE6t67HsxZCeLGuCzz0YjDyxO6EqJaj7MP1zs3G0dCr3EretTHqS1Bk
	 d7uJlNMEP3Jma3LpHqo7ZF4rsjO1vHIAkcOh/HSnGMMTrOIuIcQsaiDRsJ6Kw3k8b7
	 X42VF7rP5lI/hAYA2tmUd5T5T4p17HqzX74V8R49FxAB4b1eg5AABEvqHJXSNxzqkF
	 g3LzHnDs5iZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97513D3C92F
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940735359.18488.4148758287618195052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f035353ccc3c1c12ab2ef330d3d0621304f5a2fd1ede11cccf072a806a9a0cf5
Date: Sun, 20 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729407353
