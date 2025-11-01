Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230382B2DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762031994; cv=none; b=eupLnveQ3sUqWEOhNsAK+g2ZrBZawRlEPb7+SUYl8Sr3lXYENaOLMuKKFE+RUpZm2A4/3HzK6p3YMQgg6d+bjo+nuwtpCw510Lr3SwJAkRnvEvMec5zBhti3TvL2YsnauOjefB7KlYFh1TJCgIJcywyCrNTq3K5dZw1jl/zhgtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762031994; c=relaxed/simple;
	bh=HNzLjHUf5HfQml6kPk0F6eFG82sdtoMJ/vG29Sz0/Zg=;
	h=To:Subject:From:Message-Id:Date; b=bZPyp/Q8u7ZoZZGWH71H+shc9pcqGFiOAZdlavzFibj3GxtsfL7PQccWWhfQ4uRq6ESXLX34f7ApAV+kRpSET8oH04jUJDYYb5FXu4AXnXLQArp/rH/W/HRDyxWT4dTDjiHjGIOmjf44kiUFkLUu/PYsEey2uGUjwYLq0/4GLfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSwBAV1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSwBAV1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC44BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762031993;
	bh=HNzLjHUf5HfQml6kPk0F6eFG82sdtoMJ/vG29Sz0/Zg=;
	h=To:Subject:From:Date:From;
	b=uSwBAV1beAVwJLEzf5CDRELoTva6p2QTdbE87Oj/Z3tkOsePZ8ExSr7lMaVPP6Ub+
	 op23cjIpJCFr9GkZWwas9bSo0gtgyTlswPFgn92M4CbTbDHThNoYh/2dLMNFNXfGJX
	 eBnCgbRfI7bo4+kOW8sygZai9RF8kGPGXgm7O8/K25MbYGlCxhCxv9H98/jQjr6zlZ
	 qrFJBKT/Fr7NDv5BpBJrwqYNwtX7xdEnDZ4PBX2KBuBDF06IlRHM3RaDGU+MVTGxLu
	 3ccj53sJNC+8lOxIvRI6rQNtqTcmU54KSCNuiGieGJoPH9Pijj7OHmn3Psyexa0Orr
	 r9qaOXVdfmXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9725ECCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203199359.22454.3514127051523155495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0287150f70b1a959c596a7547d3658c54371a984c9cefc4130fa40d7bb119b
Date: Sat, 01 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762031993
