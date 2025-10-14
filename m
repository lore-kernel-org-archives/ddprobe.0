Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194F023CE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760425794; cv=none; b=FIDv4msz47CJfDb+NAL53QhbHXNx8KzrcTFSSIJEr+OOFtHKlPHoygDPVs9OU01gkKVmGUEaS90sAXOQNOoijqZJSWJRVESU/t8JcfoqMvBm9O82HDcyvRlJ1wcm2n9cJ17aFJ+WQIGb+Vl2j6Fvyzf7bQ+GQXuvPQlNJts9Mxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760425794; c=relaxed/simple;
	bh=Slo75DZIqOtBTSh3XnmamVQh1w7bFmqSvMOUuyu8VpE=;
	h=To:Subject:From:Message-Id:Date; b=E+7Ky118GnCgrJGvhBjSZfoarxSQJJiCl/hAe6ga2N2rJ1BvEQUKGfZvwQL03vIiKe3SE9sbTYecZa4qgarnfLlRGiM1Q4WWwwcYK0Uk+XpuVLI9N0/VXQOaA9ER6AmjFtmc4GOU2Z9kx8gybY5ztaBa/Iy7o536NJ8jyE0idG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0hbsYwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0hbsYwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F76C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760425793;
	bh=Slo75DZIqOtBTSh3XnmamVQh1w7bFmqSvMOUuyu8VpE=;
	h=To:Subject:From:Date:From;
	b=j0hbsYwnXm7XHBNELzPPDaNVjlu8k5XAMBIg9OHiQDfO90ewNOigPAOjoxGYGXk9n
	 f3zUjyEYQTnI/MUNyDwLQbgR3NmdmnoiYFusW8c2Lg0DDzvVOVAhy8n6taLkAXzl/+
	 Eis4mXQxJ+X3d3lasudfmurt0+CiQLac0eTqKllGieckG2X0ydPp4pHhys/1QnQHNQ
	 a43C90BLqMCl9NNf3ExSCb+nmuxfvJ4akBWPHlY10ACBHzkzee/ovu3jYYkSLEMQCd
	 IUXPYKjNlkfHuoL/u6whN4I78V545cIjd4zfe1NgyQn69lo4NZz3AVt6vIgLjCfdOB
	 NqmjlFScL1PDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944CACCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042579358.9429.13173426026027498596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67b781c01e3e275fba8249f96be84fa64ece4affa962b0fb120ec591a4d35a7
Date: Tue, 14 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760425793
