Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F0C282F23
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774745093; cv=none; b=bVBejCrbiV1rlCz9/6IA16GfOGyGy/OYyUOD+zzIDE59jY11BmZYMHGhbBQ8o8faHJ2+ixnpSUdljIPQTpRipHeK2KpThHZ0QRxm62BKnVTbQjM8vtVB3br8xZ8NCZg61QeNCIUe2OvQOLoXBiFd4rSNERPYG8T9qaX2e26JUnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774745093; c=relaxed/simple;
	bh=TISq/qKA+xIBWhoHznGHmZmDmiBn03C5dN1QhgQF1zw=;
	h=To:Subject:From:Message-Id:Date; b=cNOokeDw23cA6wQQ5sGH0ALaF9B0oqsqSSOvMK5ghl273qriNKhaQ2jsFSVu+fGuwSVcNzzrjpn56duL+URorR1QHkzmZoNQY6nWZYcU95BmbWhkHXDDSeVmQvsdcfblUyEzHpC+tbxGLUB0wTf01FepnzBb+7wKw/A5imlLxwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H67N7e5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H67N7e5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A69C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774745093;
	bh=TISq/qKA+xIBWhoHznGHmZmDmiBn03C5dN1QhgQF1zw=;
	h=To:Subject:From:Date:From;
	b=H67N7e5sl41ONKkiZ2xh0Ry6mwfbSDMQa7CwFG/DwxKaj3dlT55tO+422yizdjvFn
	 dLC4Oj6rPPL6mPqut3XcESpZNi6nGAIjh4w2Tu9XkPadRgtk+yM/8PSKbPLRg2/hkq
	 bKdlQlSoBXJx9mf19tGUMDI1isuOH22XQYIW7y34OlvHlherTaDEqrbozVNRllp9Zi
	 DD7xO/OmexuLx730MCGWNDlJ+MzKNQjyZdZNdwwqUy1stwsIEzCr2KLSWrSFU38yQD
	 yLuSNE0x2xTMydilxpKesu2QuhdAMtJJ66ENY0IKUD/EzN5QCuSH1PqRQVd8pItgrB
	 MlfA6vvCKUrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045410D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474509358.17187.8676073594599860393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c60f145020ca1fbe33618803786cf9ae29387b73b3c30b20230a6093556c77
Date: Sun, 29 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774745093
