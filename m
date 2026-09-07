Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EAC1A704B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788825034; cv=none; b=ZrW/oxJM1S4EOautl9T1+Krr9lrx51z0iZ1TltDqtS1Qx7z6p11Hyvnd8mZ6pMiMWUYwdDd2r9fQNGeyOyVow6WlmFh13PQji4htmFpU9XiJI3TqBIBzPRyG1brvNVKsg7zfiGTMZeCZ/IzZRqCtBqtS71pQTPKguocpFAt8eDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788825034; c=relaxed/simple;
	bh=2FVowArQuPe9w40kOL/QN+WQBJjjYN3qRnYtCJ0jEJ8=;
	h=To:Subject:From:Message-Id:Date; b=dO2a5NRCQ8s+3dEZxloQ01+B1j2aRx+vyr8Sv0fbJ4KtS2XOPDFgpUHixMDvQtIkL0p8GcshnpyzyosWl06MKwxoC4DlWrQrAKrtwouVa6e59oolV/C5cAr4JFpf430FdiDXIyCawLC8qdzuiSHNZb/Oc7z/SNo3e/k8BCA1EDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVhRSlk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVhRSlk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D702BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788825033;
	bh=2FVowArQuPe9w40kOL/QN+WQBJjjYN3qRnYtCJ0jEJ8=;
	h=To:Subject:From:Date:From;
	b=HVhRSlk+6h04kegD7qwZxqSjNQ4aEZZG+vIBp4FiJWROF2IUBTFApdJydWL04sBZz
	 4ea6+sqJANq6WyP2QqXx2MGGlUdjQkBKyHZ6W9POIFCKoJu68okuKO7REClUV6/1YI
	 RvVgtUUVuwFBcwP7EnTRfclKSzWMVXCX362KS3xbHZ/xb/UPJtNKqBq/90Bf8g818F
	 2xqhiKdS7WHJm6NVXNVbwuic5P0MFOzySF0IIqw4kZL9PPZo7/JDvcvFsvBC35+NfG
	 1bAKbqRqsrQTi3vwpxOHr7oVan/trFqy7mAFY0l8h1Gx6OvalUcVjnKivH/AFQ+fV4
	 LP/OfN9QCB7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3731C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882503369.25183.11208748822840371748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fd86832516939e371c21dfc4a0c0710fb7ae1cf8117b117ae3a7ee35fcefd4
Date: Mon, 07 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788825033
