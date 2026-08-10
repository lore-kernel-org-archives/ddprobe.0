Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D3D2931EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786367434; cv=none; b=nr+qNlaaILKVYLLmZLvWSa50zm86AdOSGKz6jAOvZvi8qi4N1SiqmEGmZJFGs++MaU4pnbFEvksfi2u7arElSEJYFU7Oy57Gsbtlh3AoxVaNcK6fJSSYuvgTa42WHxfULxq3TZ8Ol/W3VbBQTfhfGdlmpO9mr2ujLz0AXev+ngY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786367434; c=relaxed/simple;
	bh=IyOpWZonqdYxE4iK+ckp+RcOD/vy5YmViYLqhW54lF4=;
	h=To:Subject:From:Message-Id:Date; b=W61vZtorbgbNDzV4r9hfwyfJJ64DBuoUctWnj3nrYyOpuHsumT6o12NVlNdTibFlTVtP2f7E4OGXJTeOQxAlQzvA+qaN7p7b1ossgx7Ul3R77+xgTU1/iIy04rOXr+kDqUuKU+CAcoDz0tUI1U9fVmsevY28KaiXMC1HoyZ7GHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVV+RiKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVV+RiKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBEFC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786367433;
	bh=IyOpWZonqdYxE4iK+ckp+RcOD/vy5YmViYLqhW54lF4=;
	h=To:Subject:From:Date:From;
	b=GVV+RiKBrCNey3z+iUJeOX14eAm2xV4HOxsbB3vyvskm84gEeoPg3H5NgOgWMV+OV
	 BXHmu3eiXF/1qh/D1zZr3z/6JASC6tsiEliRFVIWp680AKQVlq2IqMJXbZgooCDch0
	 g+UqkSvvAiN2WeMXKlsyKXHuuyhIuKR+y1cbWJalOyfE6uGVxibMWuQXdho+C8woxZ
	 98sUP2qsWiC+TJ89mo1hQP/hNkD2Fba06Ff2lxX+UtIjjiZuk4Vto7FYlQd9V0zqdG
	 YGms+eym4c/MJ+GuKLpFNJ9+lXgpOkFOA8+nFlkk51SIPVfRJtcTsylZ2nk2lOj325
	 bvvEWbpvjZrkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7BC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636743369.4538.10136810047773020656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf06e4ee0cda60d1aec8a5ae8b02706d877dd7e2f8bc48964030f12361aa3c58
Date: Mon, 10 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786367433
