Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213373463
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719300203; cv=none; b=fMMbOhp4A/GrHGbV8KDcbmpLTnb4OSdMrMDVxTm+JX5uXNt618+/XBK86mxE3nCuwdendEqV2b2nJQ4jDUZXEXiFbT2aU0W1ckxv+qi4HmstQW07ajUNvDtxKQpRtQ1BhXN47rveqSjiVB4Ihr4820fo2KDY2i6lfEW1pMOCofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719300203; c=relaxed/simple;
	bh=s6ltM0HZh/lQT9dyPB6pfW/77yPNq2Td0hLhbx1POs0=;
	h=To:Subject:From:Message-Id:Date; b=T78cSLv4aRW6H+jSxEROQLM4pZhXHJAqRT+tJuRjLCckujtmuA7ujX4GSD68x+s1l7KRfwErkEUY8jwYGOvn8MgGtbCVpCFpKmhv3JR7jwepGZt0gVUBHqseVtDukVLQtEDa3xBHj9G/RbsStUDbz1AfA1nARxeo+j6cHzpsjlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijpqDe3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijpqDe3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D6DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719300202;
	bh=s6ltM0HZh/lQT9dyPB6pfW/77yPNq2Td0hLhbx1POs0=;
	h=To:Subject:From:Date:From;
	b=ijpqDe3+e/OFE9Vq6EyPYOmIaGoWJoXZBaxo+OmQBiW0C/E/xG7co/Hlm06mjvjyF
	 3noRoyvW0i4pt71rU4elqdRrzLDVsVYD++3nWAqLjYUA7PflEIk4Vj3eJxJQQKdwV3
	 P/uK8+CMUjxeg+P7Ryo6KsrX6unFq2BZ0pf0OsCPQuT1vgb+T88BDdNQvBjqh/agG1
	 hYM0+yllYl1+p49Kk5AGHNuYRx/+a4/LJCKkWP9FWMB7noxJxqK4R6XUbZhcEGE3yc
	 3dYAnbxWCe1uNLTadHZE0E5x1g+5x9LAv0YeNZZij65Fc8p1aMlcWOl3yCkLqm2+AG
	 WbP2dcguP3zOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A63C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930020280.16455.14266063536355544428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50421224888cae848b1c27f2af1973ea009ac3fd06110dc807598d086262d61b
Date: Tue, 25 Jun 2024 07:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719300202
