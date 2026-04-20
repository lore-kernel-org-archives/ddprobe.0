Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D62628D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776673054; cv=none; b=VtikZl1+cthbZ06FoFBRF9oJqmT4xU4xHAYSf8c1s2QU+AvahdlTsfk6d0cevVcHO9Neyu4Hnvek+0dihYuWuK3SglTdsIzD8jEKmBqGh4/97V8UFdfHtcOjJQao1JTwkXXDBxqselBPQhzE1OGsnw6a595F5QQ2BlgsSxG4VP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776673054; c=relaxed/simple;
	bh=knJgQSrX+/KnpQWwkqJh5AbJHzprxFhvwUkJrMIZFQs=;
	h=To:Subject:From:Message-Id:Date; b=ujE1xeJQpykTBAecPxWPIBCozjWOE0KhPDWJAjk6l75ECxqxZMNvxbvXuzUh+s7SW8xo7/4t8OYa6t19dkkHeBdwgIiiHbYdizdVipw0Av1PK1tlZ8hFe04woZNedDCtJzb5cipk8s5DcotHEVy0Jz/R2ne3NjXu+XW/dF3FFys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa3J+1CV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa3J+1CV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB02EC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776673053;
	bh=knJgQSrX+/KnpQWwkqJh5AbJHzprxFhvwUkJrMIZFQs=;
	h=To:Subject:From:Date:From;
	b=Wa3J+1CVPb+XRLbcsc7jdlPa/9wmQpqdYOgMHFcRPsLx6Doekff/G9RoOIzYhKOsz
	 4zPoXHpuwPg7SkeO7XSMRCjzLojpnylAZgd0dCaQnhuJT8vYddUtYkMna+ahhvYbr3
	 sF2mZtqDCUsleev/uJPigruwAoEmWflbW53E1sIsqPx2pVUIt3eW8SOE4bgOfmWENq
	 0h3OTytpTtPdhM6n+D0tAJurIhnBEs6foiMycDQW1CN5U9Dd5b/AdGZaECXpZhKy9p
	 pSdGOef6YN0q4LYuonjpo2sOsxwSNWMVfT/SIZ2RpVSxusJFPpyKs6TjofVmegtxM0
	 6tH+Xg1xDQq/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB620F36C58
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667305369.4893.12730575068593953522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53adbfd301401e5010604c5867ee735edb832701fabc1685496615d9cb4569e0
Date: Mon, 20 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776673053
