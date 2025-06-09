Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1768D16EB42
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749449994; cv=none; b=g7lb/MRkaDEmg3o7JHsTEXJoy9jg2d01ulizwBtMb0eRV/cUUc2+f41K4HLhJ1Ld6WeTV3SNebJjjCVrr+KDeQWSCcgERQAdwObs3SEMPfvaaIXC2tuZgUloAlkBvl/7TRvOkRqQsCGUzc9oaR4blSEGNAoGd+P4yQdkrq5ql0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749449994; c=relaxed/simple;
	bh=NDsopTLqmigadsNhfycpOR3izuhOqZn9tCreffad74Y=;
	h=To:Subject:From:Message-Id:Date; b=fekPjpKMtvx29jzB2YHIfggozXFBHYNcUgB9EscuJXy1TVdvcO+bk9fK7EDKkLHK/c8JYCSXt2BHkcK29kARoFHfCJ5quFrOwtjHQYcrc37WEPQslh829T9YxOxlAErXRnV6xMa74kK6FBlaKii9hRN7vqmKD1oBsKLeWv2Q4Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWce14Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWce14Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1458C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749449993;
	bh=NDsopTLqmigadsNhfycpOR3izuhOqZn9tCreffad74Y=;
	h=To:Subject:From:Date:From;
	b=tWce14IdyH/xd61/gfkiKAoqTBrk8xVoAoOWSfpRIYxQB1soPwRMpxYEAoky6bpGy
	 Sti7IpgBWr/j+h8r3spuBtFNEGFEJsLn99UU/M4RunzDH3jD6qAFiQih17stzuxXo/
	 s/6f/bej07+PTMz3hOJI9hqCgO7FvVzisP0woQe6DDoPbrraTKua8m7Ld5cyxmcjK8
	 1904Nly/1LNDRrBdOzKKT7HblYuERU+X8UGXYrlAHkvREHtvdPuGQLyF2OLPo2CP7m
	 lX8tzV025SeLXZP8ZTCoT1eWaEr1OQ4hHvjaIH2YuoxCx0UYbiW4G1dZk7/dKae+4e
	 IiIx9IGG2WNVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38DC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944999357.32019.6423240131634562808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f35a7b98026fda2b1520c2230296e7c15724e4358b8633acb004b618d97e115
Date: Mon, 09 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749449993
