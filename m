Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B501239E9A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776275854; cv=none; b=IMY//YOpFBLN4rDTbgwiqstGbSHHg0xE9RX7aDbOAN91M984Apmnb1qDJ8XZ7yUgR9B02wcdr4zjnJEDJoV55TNcX6hNO9rsfeMjTxxf3pCct+joV/1/e7Bp8Bwr4gviwIPfOmxJghFtD1p8mgc7wecM8cderbtv/WUjAnnqk70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776275854; c=relaxed/simple;
	bh=7qZF1Qv8keQNkMXHIfO6r6OXLhQQnr2FakSv54HUQpg=;
	h=To:Subject:From:Message-Id:Date; b=QihSkRvahGhSIS+hyN2LrhihRJW5tqR0tZTBxLSct4dzog1jpGxVU7DMEDdo5dH2lzhozI5m3FBTAK6Evb1GXNlkI8vl67JSNsI5BiqT1nZhfnpkqtc/m92WhGYxZduSVfp5WiHdYfaZQhF5av1Fupi4Lf3sSGfID6GRLQ7aDbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvF161VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvF161VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DC7C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776275853;
	bh=7qZF1Qv8keQNkMXHIfO6r6OXLhQQnr2FakSv54HUQpg=;
	h=To:Subject:From:Date:From;
	b=kvF161VGTJXu4b2n2MjGZUVOXJXoZ+XSbE7ngwQXhCzG3E8he/aT9u5ZeIrIh3Acg
	 TJvIuOXJy+IYnSs8Bxn2ueQ6w0WODYKf6GR6SEvCS9vLTMN1VNQISyHKf11eouGA1a
	 USgvOPlFEzrv4ohsIY4EUNe/ObG+P1p/FycDqkBv19W069zLw82FQ6hWGrUj1dUaDn
	 wCfB/RqbgOL9C8+rttY93AdpYozHevXCeKp+KK8ihnXsSp1a1rRJe0X585LwmWYhNB
	 hrxChBkAAKPVLs/YxfsFwtqhncsRZmWeLBiynX8h9ESp8epF+FJVAtt1QpK4+UoiYE
	 042RHFFeTXBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB0F419B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627585368.20137.6944596189278177684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbb3e00a4baa9f90a6f4225701fb73bdc74ec73a9a676e4990dd0dddd65fba6
Date: Wed, 15 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776275853
