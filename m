Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC6118FDBE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753688994; cv=none; b=plNH/gKbGZ+e7RXlERJ7cAEjhQ7O8xeEUXTVdxHg0Pk1YbJLSff/AKOac8rHc6Qtx+on4X2zaEnQuYEHDTdmyZbNllyCWS7SwdcS3TDxxs3YFg2P7XRTGoQdkJlb8T4l0MTlJl39xTZXlHHrViSfSJHDGGj1kpiSbKliVDND89c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753688994; c=relaxed/simple;
	bh=eyJfTBf6QJrNGkqXm5gjgZ4mN4krYYtRhXhVqU/el3U=;
	h=To:Subject:From:Message-Id:Date; b=NmXl9BMKQxUWIRBNoK0FAqLTkA8JG+MX6via6+8PXqlNGEk5mxejevSQ7MV62K4Ro4somNdKQBfHFOVu9RbM6YYaY3EX5jLeeu9ZwNOIxjrOdQC/C+7oAuaAPztoIe5rmmaxpqmeCyqRr9w2m2zF91qGA9clrCgYhkf2Okgo7KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhETTcoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhETTcoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F41C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753688993;
	bh=eyJfTBf6QJrNGkqXm5gjgZ4mN4krYYtRhXhVqU/el3U=;
	h=To:Subject:From:Date:From;
	b=RhETTcoIxx4tUNj4X7Uc/M8L7COB1RPDdIDIdPLE1K/ray2Mn0b1OM2BZJrzo//6F
	 QWkj0ICOlU1piaqJo6vsQaoKX1Fbxm2btWuYl2DZeDMuy2lELpNExa+8KTbG3y//YB
	 QQ2BcONk/0a+Sl6BTHlVYvsBcoAE8c/IXrPLB2W8/MY4pqtkQVw3yZlXjv5x8z3spi
	 +uvLpaSZ/ZcCNPOsJ1wclcwM+53yyFSRuAUg+LhEraB9o+fmwU22g+Gmo1HaeLSjfD
	 79+6+4BOCuk4eQ1bXX/wdTolpKR+o7tcW8PnZnqYUCd/88q2/KPq2YdjISkN6IqIQa
	 +GzbRHRZCRkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B9C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368899357.7192.15585353689671224725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61562f67e1732da60bd1fda507618e4c585ef4b77e1dc5600b25023b90bc817
Date: Mon, 28 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753688993
