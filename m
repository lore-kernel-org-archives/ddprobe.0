Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365240DFA1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773523494; cv=none; b=TcRAsZTKaKCN5YAH/Gcf+giWwcUAf9vKfaQh447AwHRgp16NvZOZmV/eWI/Lu+8AGeCf0o9oDY+Uad3CTRBK3MXS366XDrsBaLevpdJtmdo6Dir0XQkdKNquwXes+HIOaIz2T7VRQIdDy6mbMgBcKZ0WzQrKRllvK/QqTnBkbf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773523494; c=relaxed/simple;
	bh=UdV28lwkMdhNEJI1X441Od51cz8KjHYooOsGvVD7Mok=;
	h=To:Subject:From:Message-Id:Date; b=cxhRVHC/gK1uZ1+S/Bh7RHPE/mIDdu4EUI9YRr94BnrYeZIejixbglcMwVtqCfH0MELeC7sO52ayJSOxYL6wDIS/Aml1eymv4KYFP3AUIGTQEgrO9/g+d6uZAT/vf6Oqqa1k2rsnhEof7medTSLp0G8VI8uHvp5dPUl3f242UmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLReOJ6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLReOJ6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB3C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773523493;
	bh=UdV28lwkMdhNEJI1X441Od51cz8KjHYooOsGvVD7Mok=;
	h=To:Subject:From:Date:From;
	b=pLReOJ6Yjvft4hA3XkW0VqX6azK+Gg11VGmbvbywPLhXQsk0Ir3cxJA3QcztDzD7+
	 FI2GNctPH/5N/ZbnXu/Mbq6lppCwUP3kxesIsUTJBM3Psg6M3LUaiyM64QMoYnjY/v
	 VrFvP6Vxf37F5CQzrxR5z6jjUKruaVGVwg5FkBkb/rUWYXSmxotELAqNvyPxZWL/0h
	 Nc20VXQRTO4M+wyKT+TLKcJQz8YVT+kBULli5rf1pC3nJVhZtL24iok1lyOndqfw0t
	 UBkYb2Rjs3OBvOk9iuIG+4xR6TBl3PiVp0BTJLtEqB1BZgrrt6sIjszZoI+IGFujxn
	 KDN7TP5bhw1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F710854A7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352349357.6517.1584164985498543577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5c276c39da392a02b06f3921a75e10b5d232b8760cf790739e7d6a356819e0
Date: Sat, 14 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773523493
