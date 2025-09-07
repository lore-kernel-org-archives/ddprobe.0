Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C589C8E6
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757249994; cv=none; b=LDH/v1LYzHe3BX55Eld3htQHCS7IZjRZgYghrVw7FOq3/i28kxdafg+MSuu9TyPYRfB2/ak5ugxQqndRGRgV/jz6gLONSIlKetXqC+uvaQllCjHMBHpAapc4j8b4c8iMvTvKSpPbahe1Y41ziO2/QtUVLZhms5EV5fM2ksJrHjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757249994; c=relaxed/simple;
	bh=OY0RVI7yuhDDX9fxuOID0S8hIabGZo9LXFj+4JyMnm4=;
	h=To:Subject:From:Message-Id:Date; b=XvbLABQdvVUjSkZhJyoU4QrOR5oNHxJ7vD6dPeIpEQvLFfwUK1+TkBTKpbn+JHUz9L6LbNUsbvNV5FQNuNy3k2WS2ygDB9lXQTczGFWqaUD6jhc2EPxl/u9cyFNwkkF5N6Se+4kjeye1PoK4qxcjURIvH4Nde+bEmvCnHxUxafY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl1Ra8qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl1Ra8qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A690AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757249993;
	bh=OY0RVI7yuhDDX9fxuOID0S8hIabGZo9LXFj+4JyMnm4=;
	h=To:Subject:From:Date:From;
	b=Xl1Ra8qOubReNRm78izxERYtbj27P8ihnp+jysJvryX5SxsI8GilHIbO0y3MgSwcD
	 L2rWYeSIwEAJuFZGR/WaKJGgfSZXmSiNMpOpIsCeUvYb4eDKScFF2XpM5ajUg80tek
	 vYkjwdQL95dtR+xoVkrJo/uRdieHEbLTBv91sSg08U3r6/7W+cBZfpZ57dqYIvlOgv
	 vE8EUuxehIV0pAkjlZE2JWKk/W5H++3V0snEOyIsMpnjnrh5PnWPlMjYRhUY13qNiz
	 W7xrV8KWl7DlxHEqjUz0JXA6Gjbx1T7fyn0BO0JsdEt8XKa9heME1hX6xttyRuOCiJ
	 Q/3dVpDrb9Dxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91092CAC581
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724999357.25486.5474071963199583093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b562b03cd5093477f5188463e993d9fabfdf2f1185394ffa8027d4e3ddb617f8
Date: Sun, 07 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757249993
