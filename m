Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FB1F76B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729011354; cv=none; b=IV6N+9KP5KP+FvHM5IaxJr9jtStuiQD6cf/KpO/XzI4qn5EHIY7DtEhLFBP50D+wImvRE/MGSlr0DIF8UC6EbcTuBKhx0TAcSYhnFxolCZbqt0BEuVyFxzAa1rVUxSTQL4ZpeDugR1ABP6acR3Oxm6JVUwW4yrB3jztJkEzh7sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729011354; c=relaxed/simple;
	bh=WXxZJmmdemEGEpcnapOYYMmZqDwtO1S2ijQW6kmtNlk=;
	h=To:Subject:From:Message-Id:Date; b=RVjm3SQjL6A83CWbK8scZ8GrGst5AdcWcp+B7OCe+Kkg1RQ1yKm5Y9G9TVsk8M2cPTDtEBUuVB02OX3BQbryBI/upWY3LK4AwnEbVsvvk6Qa+wKMCA03DhCNSkZGiE2hFO5Qh7ALHfbHpvprwgmB0wNpDpjiSn6jva2oV21gq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSK7BfT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSK7BfT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492DC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729011353;
	bh=WXxZJmmdemEGEpcnapOYYMmZqDwtO1S2ijQW6kmtNlk=;
	h=To:Subject:From:Date:From;
	b=SSK7BfT95HAUIoTta/GNEU932vSfjkt7C3eajxXtuniine7bm/Sn13hlt34W5Kav9
	 wfaFpSng5onTJPrxUYB/Ds4lLUa5eESKiMqYsHcoblCzo+94IKV60ft/QObibLkyj8
	 vykZbTwlKzuvmJfdcHoY81baM9s0DBn4gyz1Mrnv25EOWKDspq+eaf2dq4JMuwv7uV
	 BH2So6eqWbiodctxAz/+R1e4RKnaUZTE6I2AyGPCUy+zXiUvD+tULmBI8O+vZXwgH6
	 CD1jOkp08V4dor0WLriQMWRJ+ecnD+hihb6t6iMeXK7cZCIpBQ5V5PyksB8FLjUWxq
	 WsedExd43+r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A88D1D88D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901135360.9002.10267645747489653656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438bf5a1591660fe76826b5dc5bf7f89ecf9f504b601be705c750ce0ead45c5b
Date: Tue, 15 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729011353
