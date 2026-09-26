Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348EA327BFC
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790445034; cv=none; b=jbzVPzuPDmTX7rAjf4qIfE61guLvWaG0W/q8XH18oHqiWY97oJStgpW6mmQGGZ8ACgBx8NlFTes1LqwpvFbUxLnWOGkk0SSQTa2jkyJZNHxJTgFJxzIhNRnSERkNWyNlleGA6Eii0CpkXWVbBPI1cuqNdgupOYEbinKHtS46lXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790445034; c=relaxed/simple;
	bh=BCNvEwPpXR0Kqwj1y3i8jf54f5jCkNZj46t2oDnjJzw=;
	h=To:Subject:From:Message-Id:Date; b=l10SxrhVXIgl6BS1jUJes+OkP6bz5oRomKL5CjpA/v3XY/V6WhTr0X12AqZo/nBSL20gMMK6fzXUPHe+btj7gOQHORAqkcN+DTn2gBGVX/KJ6ZW4swUhKfpzXxgwd7UrTIjFK0cZ8r/vmWWMbP+2s1C40lwpF6+9mtQtEagWBBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkiE/lx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkiE/lx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30ABC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790445033;
	bh=BCNvEwPpXR0Kqwj1y3i8jf54f5jCkNZj46t2oDnjJzw=;
	h=To:Subject:From:Date:From;
	b=PkiE/lx4eEDU10TfRXyRuDMF7OvGYNKeafy1iAHtniFuPywDjEIOwh7lzn4EDId1J
	 4X52DEBDkiiZTEtYRV//8rngmoPEChrMEmmR5JgbT6z6xm3YI3d7DaNtO8vXO+C00G
	 G6MLXNcYYljZm/hwnDeBz4D4WojwsRLm0wBdXrl0KHCkgSnEylto+8vL4PY+wsuRvk
	 7uuU3ke7RPlDrOIdKQjAmaWw6lSjh56Cbl6TfWXYbsuHA97lM1Ff9FN8879QIubwmG
	 ZW6wy2DJl6mjogF9EokwPLiAR9h/FPYELyxBnvU7i5w1/uMa5ElRkiLrxfopVFWGO7
	 KXSijq9jY43ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A4C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044503368.8399.8687332100550114397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0380632a6905a57c9095c86a4fe4812290527e332a2eb61a37840b637b1b081
Date: Sat, 26 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790445033
