Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA372773CB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091234; cv=none; b=s98fwsfIezX6A/A8fQ9k+vOtnJfRg/H8f+QNH0HpZSoiNAO5JEq5ELYISELA2ydGStt9SeZ0FPzHbmc8C9a0hITLuYFHMmix1V7h1eVi/ePpO6LsaA+wHc4bB7Fo18zJtaupQqoEvZCiCBwKJI7cD03yT9FK2m0rHc870cI4rUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091234; c=relaxed/simple;
	bh=wI858MgosndW9Pt4biDZ0/DoKlEb0uGC/s1tV9OP7Dc=;
	h=To:Subject:From:Message-Id:Date; b=ShErhMkoTxOcVDorwYCOyFY2y9h29DIcbpFYhWy7a8gBCsUQIlYce0Y14A4JHsk0f4aAAN7nfQCSBLnZrhI6Ieuq1dwlk7W8WEZGgGKbK5VOO0Aubj+7nzITtzgFaRqenebvHsTUUGtMs1H8/ISy8XY6k/aPUFXCkCy1s0p4DAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtFWIOI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtFWIOI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF4FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769091233;
	bh=wI858MgosndW9Pt4biDZ0/DoKlEb0uGC/s1tV9OP7Dc=;
	h=To:Subject:From:Date:From;
	b=QtFWIOI2Hn9LkVA/wbXO1PSiT06wagElWaCKDChysMLG2Ezcm0G1wSiFmJTG2+ljW
	 bhsp233es/YiZReB2rVeql+T+Y1cAQJmnlEpSPfNXZX+7V1ibNBJTUoYwoVeMB74Yc
	 k5MQT0Boy62EYnTh186ZzIjjPfb9Jznp0U0UAD5v8C1GVyfw1iPbt297JIwPCIBUCT
	 rGR0V73NoKVY8NY4GPrRFKlQV01/cENamf4S5w8k9136trwxQnJp1Fpnhqu+FFiJFl
	 S8ZpdbvaXkAm9DZmeaGX6i1sAD0TrnAyVBu1U/g6xqYkVVa+HvtsChNEtMn1XpZd0E
	 jjMNUiKSPNKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BED3EE6A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909123358.8525.17173211015120503157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77a6f33a503013d116ba548e4a216f0d84a100a78196b9d0c70c05f8ebba0bc
Date: Thu, 22 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769091233
