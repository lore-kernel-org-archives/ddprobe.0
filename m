Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E7E1CF7B4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727825154; cv=none; b=m+KKX7mZjMq5aF9akIwoFNC7Hs5nsGmNc2A9Km5R0TJx/9VeBK3Ukzv3kqJAE/Sgs6WrieE44QFSME8ZIYNlP6CgqTHzTZRD8M+Ap43uvuSQHS9la6laLqAfQLY2GBdnJpPRAniNRc8FV7AswUDdH7ehKI9/2naW5wLnK5nJH2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727825154; c=relaxed/simple;
	bh=fkg8pG+Y9FbQgaJlOfEqLrgYYCB7dBEW3s9xLWEhZrI=;
	h=To:Subject:From:Message-Id:Date; b=ezDyaBuGXa+ttnSzbifVHgqRi8se6FljsVEFCoHqMKx/qiPNU9r+/Le3jX/f/mjC2YdwduFHbEE22+Aml1WI3yB/AR0QQu0tXZNyLZJlr4PTQElsDn4HoGfmSskyQc1vb09IuJZQPJY/z9GY1fAAQxLqJW2hRR0BgXQ7UIPUBDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7setYQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7setYQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A0C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727825153;
	bh=fkg8pG+Y9FbQgaJlOfEqLrgYYCB7dBEW3s9xLWEhZrI=;
	h=To:Subject:From:Date:From;
	b=o7setYQokRvAmzAxuft5B40AULzZ+sX22Ix3yX9OIifff/kFbyPP/mqwMU54rlLS1
	 YIxlMB2d8uvzuRL4ZxuuNqa6gPHLnLZSUjWWjxxubvwbuqwnUnVFkS/C/aXSx6bAUO
	 KRhq5kGd4N7V8eOCqZVzn/Y8KxpD7cTlMhtO3dAyyMmta8aBM2MpxHBBvggVjt+Baa
	 Amp3RIFAs/pdhpUOCQ8CO4TPwfnFyg7Sn0Agkk7WP3k3Vynw2XUUOFUQdmMPJeFKr0
	 SX77oTDyAHNLyB1obYcIOTiQinLnlRBVxR5i7yRCcBXF9sfNNBH1ogSSfaZDNMK9F6
	 jZDLoBQLOPA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481FCF318A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782515359.18594.6594024740530582041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfea0b6ea9823e84da74abd41ea9b91eb8a09391e2d555dd79676ad31a929b4
Date: Tue, 01 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727825153
