Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46080352C2C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784455714; cv=none; b=Y/CSkKvwk+pkPNI8C0Qx7pHTQ0zly6zWJCvMv1u6wXOWTtDNY9fPMsRYYodxf79T/yE5A92SDj1LIuuQrL34Jfvtk4ausfMupslnvvw/YjABT7PeHmCGZV84T0OtP4w1lRu4Pq5fQvmhAZUw19pnTxM7CYkJoRtezR6jDtpcq9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784455714; c=relaxed/simple;
	bh=9ZmzqRoIp3TO4snZaim7V6fQHBjRsUlzJEjL8l3HbWE=;
	h=To:Subject:From:Message-Id:Date; b=GI8gKW0bz0T1NwstQe4gtDF1XmEoFzZQPfqwOyHIocYP8w268Lg02/xpL6ggxmxUViXMw99jxA0ThZJ0l0PLr80U1B0pcs4BSV07KZ6Ow1h5VHuEGGBijnmPW3ImwMKDiWUQFiF7PsD/X3FdZykz1wl5c51vE671urXAXvBdeN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeyKlWVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeyKlWVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD150C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784455713;
	bh=9ZmzqRoIp3TO4snZaim7V6fQHBjRsUlzJEjL8l3HbWE=;
	h=To:Subject:From:Date:From;
	b=GeyKlWVauyRPADUtRJnqhfhqXTaVwN46b7Pe/L4zpsI5g0mamRoT03KGO0cr9g2zf
	 1bRPTgzh8iFVAwaqqsPz34CB1ngN+XVzXDobhsGiz2S48RxF8aAwqseGqjk/35CgPn
	 4NrAGN8/NPXkAtm9ShDEjjwyzKI3ZYXXfi9n17rlrJnd0I/8L5TlJri5vXu+SEq+Yc
	 iGCgtueC7nOIs38y1Xb7Ac4rVGEighUsLTI1+UrMVNj/sJMTmTJxFXkul4zrKRfOSP
	 990FkGjdSje9COsQGy8mMBRKyCObeO2GdB3SL0PbPCm0hihhj0fTGGzKDravsESw7N
	 0B8g0rJZliFfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81CC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445571368.9640.16423140650339877530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd995a08707a615d62ca029612e8ece0a929626326922024639b161b8095c194
Date: Sun, 19 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784455713
