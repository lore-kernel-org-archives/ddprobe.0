Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596F647F69
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715792543; cv=none; b=Y9qMkqdKo4Mm+zRZxCvHUnMEi3Z5CEJkPCWSlR3/n7OdFokiWMQeAtpgTLX4DEdbT0u+RFcRH6EHSISs5y13ASBO8HoTWjC5oxppzOw9tuFTFgjcYbkDVewuC59igCWss+SHZmtcDH4UdimoMhUvDCvt2JroO2PYp74fEzSNbvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715792543; c=relaxed/simple;
	bh=zy0+tykxJS0QAx640GjdhgV+i12aqi5PtoNW6lTyGJw=;
	h=To:Subject:From:Message-Id:Date; b=kQgYB47PwriwuoLVi71dTIjvP6MwzQ8A15RiFuHJjGCDhwZgoFeKvXCiVwom40krH/8cEwQpLmZvDwzYPSVdKxzjsdIPB9AVtaiDY4c7w/ti5FdBHW6gT4g5gLdley1uay25lim3aVvVFMwbu45eE2Dox5Sq3qbNAb5uD5Ylz7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVZ3zn0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVZ3zn0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F69C32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715792542;
	bh=zy0+tykxJS0QAx640GjdhgV+i12aqi5PtoNW6lTyGJw=;
	h=To:Subject:From:Date:From;
	b=ZVZ3zn0hgM4n5RkAF4F5Dj8/4KtwwaeJbU6eF1JzhBd8xhkxQUvtjbt3ozyuZA6VO
	 EBfb7yB9yDLwu4bcYowJNo67EHJPyiz5GB7TA8oSM7Fn83fqigQYvQiHeBZbFtOf8y
	 8n3PHOSOtgZZZvNCPXG6lXrDcE6gNtCpxjJfT5NOayq9SRXW14uAdPIrk9OnNx8GEM
	 W268dDZKqJAe/byykOtOm4yUVMZia/vosLzhTIgVGW0WZzQU7TV5NVJyZlb+jfz844
	 83CzurqAis1xhZMxqAB82+6QJzF0Hm8PhXX4yhTZRfOGhl2IvYrQvb0S58fxc05jL2
	 JCbTqdvfUVObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B48C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579254279.8398.3775466924067856708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9a801a22ae9b901cf60250f1dedd4d21e3274ee70f133686a2194f047ec191
Date: Wed, 15 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715792542
