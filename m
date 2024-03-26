Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E084DFC0E
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711484297; cv=none; b=e++BIUnRmaHPjTLRUIiPz9enyCfAxqHHCjWja98c+493oEnhnhirLg1ChNQzvBVerfldUCX8veY9HYj1B3JDSYDpB5QJ0aVRCyiHPWN8W3eGQmfL2qAfLHJnlvzfFDbZYEbFjWfNFC/7VPKydy7yWMbPZHXoja711s1PVLEeLbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711484297; c=relaxed/simple;
	bh=X/kPZhshtRZkR5a/5JkEqjPagagVdPGRjDnRya18YNw=;
	h=To:Subject:From:Message-Id:Date; b=XfRrBzDy6rnAsvO0ewULD/0AE+R3O5YWZauuh8WnYe4O01XGTsjxyT+WibDPmphQ7/2RDyjVr+7SbXQCkCl0MeoKjufWIV10oKcv/cNxGlD2uEf65nYjGLFpk6qXkiQVVbE0yN0cUJ0el0gqgoocx2cUED900AK3uBPmSJpz1MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwWXA4Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwWXA4Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812F6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711484296;
	bh=X/kPZhshtRZkR5a/5JkEqjPagagVdPGRjDnRya18YNw=;
	h=To:Subject:From:Date:From;
	b=KwWXA4TxrnuLZ7vAngHAeemEF892cs0HLeose9zkDkv+y8CBhyg0QlgSs1vUXB7yj
	 MgAj28kCjzLio+o8oXSb15TE3XIuPugcY0M6kasadgIVZRzuSik/vIe8C3hWpbC/PM
	 h6e7FB6oPD5We3z4a4V6gwwxK0zbh/2tkZN5dfMEwXS7Z5UdS+5GmZB5SrLNddM8u5
	 J15sO2sqWCkGeQmOeHWmKRwXRdeWQ0GJaOIGuy7B1e2S1lTqkfRgymmhk5eG684B1C
	 yTJ8o9ejmsjBMZarpS4/JX3npWKZrUFRe928Eds7PXwlbV+CoBzzRJYdXOCgvgzpTz
	 rnrKmNt9mI2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCE3C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148429644.3259.18349728140507842404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab641d947789b97a4039a1a104c51e2dc9761cacafd11a8fa05cb0494d13e538
Date: Tue, 26 Mar 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711484296
