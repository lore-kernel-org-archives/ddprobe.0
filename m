Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147BD1C2AA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774743294; cv=none; b=PCLTUj+lujaSJZfJJDT7kcOUoWEYibpbMcHK5MxM+atiQy7AClT0loXU+yLegyQxkunM7NsqKI6wYZ6vcFepUFQfTdn5PNQFSVUcbQ1yi7i5uzrJMO3jAeqPP/GPiMBqQPXx+AYbwNHwpQHSZHUhbOg1P09TI2OTTwSr7aQRQ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774743294; c=relaxed/simple;
	bh=Akcu9UDjPch+51QRadHgGQ7nREjqsSKi/teb6ngkbI0=;
	h=To:Subject:From:Message-Id:Date; b=r3lOBZpGvi0CWb4w6qF/cowGrRdKJ2WhhlB7D0A6aZaBM59UbmHr2gl4okXifj9+Dd1Fg1ZiyYAjNxgfwKtJOVcQuJnswwNM1owJzG6ajwa4TrjX+6DZbTenjM7pTpymyEmzqF0kIKUKNzKwDADOWYJ4XI2HpINZTrhwvI7biT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VInzArwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VInzArwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D98C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774743293;
	bh=Akcu9UDjPch+51QRadHgGQ7nREjqsSKi/teb6ngkbI0=;
	h=To:Subject:From:Date:From;
	b=VInzArwc8td/SoDh7x6NauqR7R7w1RYEgDMJFBIAZy/LLWtIZ7ET+L8QtPoJFqLq8
	 rpHmMCvLRHM2tUwVcne2wYRExuVinkRqwC49xLkkDJX6slRGufirVxxDivMSi6GVBS
	 dg3kymD0VLC/SqBcVhLS9CQVfZqZsXAxmIWUf9J/96TsJCl4aV8esK98t28KHIgpCI
	 qLw5jZosfOJmV/NltWpmaoyDPsi87+/x84jqfmcvUNTO2ecuguIOauhHWMkzqQA5QB
	 XMWnhQrseiRW214HeREyS11Ouk+Hjvoyo6s+QSKca4GTTDjgLwkdWJQW71gNZZgKVo
	 9C+/y4yYJAoaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C610D1489
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474329358.31042.11088272492958831229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e74256fbef6c396d029720f352d65a733de28a1ab0675fea0e73d2ec7ef39d2
Date: Sun, 29 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774743293
