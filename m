Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F608262FCA
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746693594; cv=none; b=kkJLXEsCjgL6HspRzIpQoNgSSeadGkiXmQPvvOnJXg7PJJCihqnywOPkEupFRlZ4wp+SERIEWu9/mB4XxP/6kelJbWdIrQ+SskR7bCRV/lXP1Yhdhd5e3oJI26bELRe/orRaeeV49M//GmAf494C4USvwfXl96kJpnW8BjrNuHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746693594; c=relaxed/simple;
	bh=4Beyoi2o2Do9SOcf0fNfoYj8fouOEevJq9xOd9VuwEY=;
	h=To:Subject:From:Message-Id:Date; b=rn8pjerJH/xqfDto1AkfyN+FGXqMyearJBRtoBjVhy+N69YDWsitLkj2V5urV6hzhu+5V9xkWMNk7t3ZlGcrSUELAd25g4ODVgrghIhdO/nvmb4n/VYGFlTUibZgvzLK3fUCSx8XSaiSRawZmqfxfWnZEbvC6uPFfZ2cnaCrSOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbGy0e46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbGy0e46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1520C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746693593;
	bh=4Beyoi2o2Do9SOcf0fNfoYj8fouOEevJq9xOd9VuwEY=;
	h=To:Subject:From:Date:From;
	b=WbGy0e46a2nUgQnXNbyrVYbYJRKFsb6IZkRIPcqhWT9qVMT7SGMD3RkWpNAgW1Moi
	 bcKXFdeXIZw/vnRa3gcdvIq6+IoFyPtjMBxARWR19hD83H/v9YncMVxu7hWDZR9U9F
	 o+qBTjRJizlrxHoAKEmsACHyHEblnljHejR4mu36QCPBrXoliMTAUZIirE5vHzJdgE
	 T0+Qdkx1BkjLNunZ2/KwFvUM3YZUU0zpQDka5H/IksqczHHmvjj/BsWDTE0VTWlbWb
	 MGRcjFIbiGZxsF6aHZo68ttD1BKrVTjoGdsLIEqnFe3VRit033aIuv0smezXkL5gj+
	 PqtbfyFnMXAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96264C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669359360.11855.17207146843512890990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4201adef84cec4aef120cdadbe451cbcb762bf3b24d5f1277bcfd7b1d2848a5f
Date: Thu, 08 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746693593
