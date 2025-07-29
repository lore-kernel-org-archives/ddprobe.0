Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64D287507
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753791594; cv=none; b=VVhrHIB4iH70VESvKBk5pvq4cIaFaoN9XEzG2Fg2RmHDOXcmpWlemFuqMHRAH3f0ZnvdcdRXiCFZUQ1l5kR+GUICb2LkCJEh7KsTtVrblP0ZjEHxdphGYtLrxaJ7EcdW+6lR7qw/1LKOqAuYsxAPUEBs1NJ5deXmlx19csRmaHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753791594; c=relaxed/simple;
	bh=qpBZGmX/QBbjjnXT1bN0DDMH5/IgfUM2tOHLfkiu3IE=;
	h=To:Subject:From:Message-Id:Date; b=FUBxzESTRXAx65/P9Gn/Q0nPXZb+l4ghYfTjW8T1Qz0e74/YryTM/IZX3a3EKpv3560QfjOLsKAg6sy683kGu3Q1CVe2j4RInH7cmfS9Kom6NOkLOlu0XcS3KSWgB4A9u5DkyN5RbtgepzXO1EnLKtgCYB1IsZ63QO0YlTAHffg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnELYYcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnELYYcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BECC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753791593;
	bh=qpBZGmX/QBbjjnXT1bN0DDMH5/IgfUM2tOHLfkiu3IE=;
	h=To:Subject:From:Date:From;
	b=pnELYYcTZgwE89mCpMopEQI0+0ksLlHwgp/letqfyzoNGelJrQil3de2yS7LYeZ+U
	 0vfxosDVlgyAZxf7HkI+Nn8kfqaF5+MwzKvg7Eez7Aj089Bv1PafpC5CQTlQDfwFyn
	 G1tGmse2vPIFOcG7Dj1MHXVc0H7hN6IMWhNLYLGTinwuZbr0wh5tb4CAnPYUGOzQiT
	 TMbO1zMMvZ2pE2aS2Rid5JjBX7M3w5hJqvSuOIQbdFvLE8KO6OaNReDVdnkwLvZDqM
	 eEPtB6geGZSX5zOKcEVneqr8hnEFzn5Ti69UbNpE7Y4unu6aDOK/fBw+dU/Bgw8UNC
	 2JmPqUY4/WQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EFC87FD2
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379159358.19901.17720018543330458580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574a7b790db748e8ea4f751c2bbcbe2cc58e064aa32c225373172b54b7bb7eaa
Date: Tue, 29 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753791593
