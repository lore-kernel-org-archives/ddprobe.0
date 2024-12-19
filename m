Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7B78F4A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734584154; cv=none; b=CWx7GdcLKNYlFUl2Q3UUG9hD2YsrJoy2YKXFowOedpPbSJBtHUF69NSZpRwin/cO+NPqpeB+tKCbL8QBxkhNat/cLj0Hjsf2rQo/IesLhKmx3GtJ+BekxLD/CYwA1Pd05n0GIJnQc4Fc58pcSfXjeNB18mrnX24Eo62hs2FEwdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734584154; c=relaxed/simple;
	bh=mJk1An8KgAcILskm5w6Hkpd0HKCknSJoAH+2t18h7vw=;
	h=To:Subject:From:Message-Id:Date; b=W5lIb8anB1kMm7d+a3OOrZ+oHHZT5RXkR2zNET5uQvatCPSsYoe+H373c5RgQEgQS4zv4XU4XwLsEZ69wdg8NV01tv+OBelsYakKXE6/Lybmcdh2xDhzxJpMAlIX8vuyyQuwEUpG86cN13kEXouPkH8gKolruGjaoUgWR5q3x2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxXvbrzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxXvbrzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F6C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734584153;
	bh=mJk1An8KgAcILskm5w6Hkpd0HKCknSJoAH+2t18h7vw=;
	h=To:Subject:From:Date:From;
	b=mxXvbrzJ5mefTNdNRB38iF0WsZRgxvqLrvmZ46FKJnoHrFrXLiIBMSzaNZX/tSGgp
	 zNN9JlGo8t6UpbWTyxIei7cFPBJkOxuIIkS1HSAfOKQdfQRAN5qvzAV59RbStWPmxV
	 dcBhksKtYdVBan06giOuQvl7oTmJj6fE6E3xYI3rwngmrCl/XGr3uYrV9ahS8pk9ad
	 DZhOOg1RoeYlSHXqGdI/K4OVGUMYtFqncyoWQ/5hNx3ggr6wZkx6o7aNxDt8IgONPX
	 /0zWNmWdSsRq+kiEjW3mimypzlXdDo75Fjni8N+3iV1Tloi0dQGHIcyP0S8aodRct+
	 dCdHXkcpdGcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90988E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458415358.29420.2977844452506406828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc8adfa709ce724bb955ec52773ddcc91130a46aed9e9d032b5195fac787778
Date: Thu, 19 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734584153
