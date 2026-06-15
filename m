Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22B2E542C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781550994; cv=none; b=oRMcMwRHqERW72jMxV6DIzu0R/HGxhC13D1DEQBLB6Q44xuIc9Jlk78p0cmYlhKGc7NeHoda1Qc2kOm109D3VRyTxZISOX/bEfbqMa59ZaOXEfaz1OHGLt4batcEag8yMUYyteo4nmji8CSVl2GkDQa6h9zWfZOZA1FY9l1XbY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781550994; c=relaxed/simple;
	bh=nAizCP4yTehOXvSAeengJuAk1o4neOOQ3zRXgV2W3EA=;
	h=To:Subject:From:Message-Id:Date; b=F0ebvsB7BExD4deY9n21AvB70XM3vvfD7cqbcoHAmilaAMFROeRSU90eRa+sXYiNVa90sbOf0ef2hpR4ZZvwLTs4ZFoMBjaVqwh8zJtU+tUKLzO5RsD6P5NKHb1tLnIWkOJ+LACXXAJXTXpRe3N30m6nE4WvVtriyYJcA2zJWu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lARwOxeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lARwOxeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781550993;
	bh=nAizCP4yTehOXvSAeengJuAk1o4neOOQ3zRXgV2W3EA=;
	h=To:Subject:From:Date:From;
	b=lARwOxebLkL2SF3z1NiR6dih2r4zYchJSxwaWhKaipNtri4d3BopNpz+j/5EBYw0A
	 nL/Sfgk9zTunFbdEFQjmxme32NgYWjzI+sP8/RGstJN0QJzTSDWwDm7ohFkunjO38Y
	 VWyLVIAQntz/CyNGi5EoIFGYe31Z3+nbyoGONMZb6wKKCyc10VujlApeUTvFeKgQwO
	 N/AaDKKzX6g/I0QFu8ebsi8a/rLPPdnS0GTm5p37AaaonFOiPKY5QFha3BWBkTmoqw
	 oKtOjkD4mK5HFcDOT5XTwaSjSz5nO4mdT8v5TjYld6UKW4/X4ipWuu38NYrm6snQMY
	 eWVE3jfA+oIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB142CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155099371.13908.16470758764317864046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ea037ca45f041e2fd456a5286969584f510e9eb5b7a9e645802512a137f1e0
Date: Mon, 15 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781550993
