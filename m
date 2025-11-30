Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB158635D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764486174; cv=none; b=u/e0m8cxD3aBdrZ2BwLqCog1T2z0hjRZgaz29YJTbd1h/oUx+fUtf8MRcjIwrbd234O4neQTdZEQKMlUFHgsteZZkU7o2C2WEI8z60mAY56ibYe68gvbx7g9gjYhGiK76NiLebOHvQEchMONoXbJXxmED5bXxKf9nIWSXc2cq0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764486174; c=relaxed/simple;
	bh=u8+O6rdUJkSFxa24jWfzyVISnPEYeKUJXRXmCPHDaLM=;
	h=To:Subject:From:Message-Id:Date; b=Xh8KU9dG9tBLToQawmVxnBu7oUHlfTxQDjntC6Fa9n8ZDWd4s776M4zOMNI2lRvfGZk+PCSuGn84BGXCAHl613/4g88aQGN2n8g6CPr4SnLJhtwjlEpsd5hckmWrSMg0uVn1l5VK0trhfUwo81tuYbdQIOst7UuW8Tt7jWXOiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOkDBIiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOkDBIiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB6C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764486173;
	bh=u8+O6rdUJkSFxa24jWfzyVISnPEYeKUJXRXmCPHDaLM=;
	h=To:Subject:From:Date:From;
	b=KOkDBIizgEPsU9pE7hNl7W9TYdXrwWEDDFi5aj0iPM9DT2wQxe7RBNvfLcj/VBWrx
	 G9bBAGHQg4I12xrzipsshFxZate6YGh+mbe0Il+ZitGU26pi2JCXgN7NnUAw6Hh3Ym
	 jEcpV5D/RpfrW/QT0TwfA0kuj6nOwQXOhENd227H3mrWbo0zt70oE6KIWPIiYRJvN4
	 YTV+WTr6N9nb22h/I6wCVnymmXkOe2kL8Izkhu3uLbHox7uHoxDpK/M0pi0d/oq/s1
	 jqZuOokk5TMp7UKjBR8PN2hECYzvTmzEfGFUl1MVtUC6gH4TVggR1VAzdHPXRY1JwU
	 yq1fSR61Rf0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA6CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448617358.22673.15816011776499402966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e8478c0a50a5bfd800644f3f9d11760b19a41dde5714b7d200632c179ebb21
Date: Sun, 30 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764486173
