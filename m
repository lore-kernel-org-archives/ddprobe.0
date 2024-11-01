Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7F4134BD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730426154; cv=none; b=ZVhezcjXnAsrLg+zFofuL+B4+HafRWRltWuCDf1/ypm30R4mall3ILhpV2qmGZuKiSCqI6gQX0xkWdwp0lU58tLqkFnQ3iUC0llG1NehsB60/o/+IPmO9LPRRCPNeWnuzRYpYXoTAU3x10udrAVFWfH/SjvrkVznINT+BIUsyWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730426154; c=relaxed/simple;
	bh=kLDOyX9kK6A0Dixkl0N1JwcHhvhxuSDnthE/oWr/NJM=;
	h=To:Subject:From:Message-Id:Date; b=SYPRYkyrP7B04y9J0mLk5dmLaQDdhlOscSemZQNVVfu859xw5VelsMTyU3hzSzmxcm7zRgZA5cQsmd5Usx0E6llE6qF+y/tvGae2hKLgnsXqDwalVsTnZpmswt0XzZzn0dVkLPFIw6YrSvn7E/KtMr2IfwLX/tkJCK60a85vXeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Etdf0ozl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Etdf0ozl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA3C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730426153;
	bh=kLDOyX9kK6A0Dixkl0N1JwcHhvhxuSDnthE/oWr/NJM=;
	h=To:Subject:From:Date:From;
	b=Etdf0ozlZ+IwuhUYCapQ7Nl9uogqbnm6s3NQSdS/HytLVwDzuI/lG3h/YV3LhHHbK
	 /OZqAtYW3QsAjmz0RvRmRq0DAXyq9jARscXHPjbbRQFcDkRKi2GtqJ/SrIMrTXLR3Y
	 9ELibr/bn3U9L0DrYhy4VSR9n1mXXePHMNckWFjqaSx4nx2WojN/YuD97UHRmeerIB
	 5fwRO9x1VLMvQiQCgTZfg8TQSFOblbThnG+T91h/twbM+n2gFMshP00fNSwaaDc+e8
	 VwlJEJQntJrqcORQV2jPZ2gLDBdWfalKNQROjVUBMo5S7arEdQxrrRWdUxmANdAPji
	 rqGoHsot2kIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC2E67494
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042615360.20782.8325587976966318752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620616909cc5070041d7e2b4b494e111beaf1bbc98735a32ee9787955574b22
Date: Fri, 01 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730426153
