Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FFEC2E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737345354; cv=none; b=b0EaxGCaiWsYSuaen4TvUK5V4n+89mIua+dErwmYvODAOBVlpJyQLHpf/lONUuUH5jYoTV9qhIsgcDBopZ82p1JKLoOc/d8p/8EAYtRFAYNngZ5KRt2JDJ/r6j4L0tOP623oN8ExnYRYg/froiTlS7aLDgLrzWRfbfspFiIR+hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737345354; c=relaxed/simple;
	bh=TbhG1pPF2feedHdQyQsesDLUwcmEWwc/f/aqpJqKAuQ=;
	h=To:Subject:From:Message-Id:Date; b=F6QgsTHfKk31aw4E2sRGj7MXRB3h9TawX6+7daGne53vrXHSGm/YOeM9BgSG1Y68+Di66s5sqbHkbks2sqZbivg3yEEAGYcS5ioccRfV+sMHirGneEy54RROL8ww1bXBH5DGBjCFs0K0VsRV3pd1QaSklsF9XcQZWSSWgjV9wkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbRpQZJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbRpQZJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52CCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737345353;
	bh=TbhG1pPF2feedHdQyQsesDLUwcmEWwc/f/aqpJqKAuQ=;
	h=To:Subject:From:Date:From;
	b=VbRpQZJ8VurlHkrO2IvhgkB4HslPVsca0Ofsl37hohiZz3wq3YC6IDNvLg1nIKEz5
	 w4wXDvGkPLgtQ35MevLQ9iv4tka35gSKZpA1sXCof2/bzCzwGgB+g9lsq88t330yc7
	 MLQGIlZauVVrExFqzlLu5GpBINs8G36PpXDGAuQWUBha4vRiXcTgfbipqlmztNkCoO
	 /BAkF6iSDI8Gv31VerPCURPrsWNpUY3p/vtk2oes2SctBaI4/a10ADA/BH9/2xzhx9
	 Kq99WcMphnbuum7giQEqD7+8JjE+cFjyrz0qvcoHHqxka9HftLt55bRT/eIAeQtSbw
	 2yNSOvwLj9TOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96577C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734535358.6681.13204701223956812988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345069bd153445e227e89a181088a8d776d5bc8cb47ae051e1396f2a2b372896
Date: Mon, 20 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737345353
