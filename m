Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774F228CA3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751512194; cv=none; b=FbSAY/wilZw79nw0H0rNzlsxHNJzQbhryGEtTDKCeFhPSrAGcj3J7zPG5MO9exHA3QZJb5qN58s9pRyEYYcnXAWkjvE8pm+lL+KQL+HxSIRADv/Of6R21HNJQgHAYYbtL0SP9MqGC3bzI+GCVL4j8Y/DtmnB/5rd8eAyjdtqUoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751512194; c=relaxed/simple;
	bh=bylkRdWCzjxhfg7EOaMTSWGynuhASUAzVPpkcrSsluQ=;
	h=To:Subject:From:Message-Id:Date; b=CZg3T8eyUwE4uNc+TK9KJzcFkOl3xX8Pu6QLwheWTYs7VG/mn5dcVHiehnqemy9/nZ2bLdDA+vhKCH1oQUBqXG3ohH+FC38osmgi74YBMHDftILjwGKT6uI1KDUnpW4yp9yg5tvDOdfgLIOo83nVmyDOTNPd3Lltt/SrR2Ho+cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubDb2dBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubDb2dBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751512193;
	bh=bylkRdWCzjxhfg7EOaMTSWGynuhASUAzVPpkcrSsluQ=;
	h=To:Subject:From:Date:From;
	b=ubDb2dBzdUjinCGPxpQVrD7RvPNmo8Q1LvUHpCWQ3GhkVeDJzFiXObWy7mBB5qLC8
	 ItMWe9OzwBNkBxPvRhrUifpUg/xq65J0298B4f5BVGJuFE8fcJhHcSfUdYyNeS+d3a
	 tZ6fmLAHO/I7zSFAUf7MdyFPO4vl6ZXHQQ6Hd30z8R6d6l8s3FOKUTcbEAQSgN/ENp
	 14boTUWp+HIsabPmBIJtRp2axmrOFkqyZpArVOsbeI+i1Q0d1DhvYoUf2mGGKQb4g4
	 LQyPZgHVNVtXuvxSSioGUz8KHbUKHnUCc3P+q8Js8ndEYGjqvNt/dh42ygnMxRBsrm
	 RhVR5G8T0ArbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FDC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151219357.8083.18003086242839338844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3283b75fee3e3cbde08cbd2bdaf9676670af738c81ad483d71f9cf7c2f4874f
Date: Thu, 03 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751512193
