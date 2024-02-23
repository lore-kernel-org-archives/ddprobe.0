Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C51146E9F
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708723697; cv=none; b=Z6wh8B0fjisNP0CbMdnoJGZ1wlmoGNX1xFcj0AoEpcRjbzFBiWA9iXCrYI9ax3mjKBzQZdBhY219RpuNLFT3W4G/wDZDqy5Q6rjnJ3IDqXdBaTvs1s5ZclVQgcrcVAmlOdYW22kunbxW/2yHMJycmwF4ZwlUPYzwaAn3b5cVncU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708723697; c=relaxed/simple;
	bh=U/QQEDlI608OdEEvniAHxmeK7J6CLz49cwEKZdxbhlw=;
	h=To:Subject:From:Message-Id:Date; b=r1vW2PAtVl9kIviXA7Zqqkdt3vU07Lwf1QO4FT4o8S2CDqw0e1p8FPkzqMuNa/BqfBoMFrzREPjM/XmqjPrNO4CZlpvzqH8ecUZlOe03e4k26dkQzHrUHs+FHQtJb0svv+FOXFnc+4fbbp7l778ohkN/vEV2/CA8TZ8bHyf1gh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp5WhFep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp5WhFep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DDCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708723696;
	bh=U/QQEDlI608OdEEvniAHxmeK7J6CLz49cwEKZdxbhlw=;
	h=To:Subject:From:Date:From;
	b=Qp5WhFepHqUu8dT8EON3qS64EyP5iq0GMbTvpeGLAzfBp9TMaRWwapUVBrw4yr7ub
	 RF6xhswDftYsOQJ1oP7TG2oSW2DorIn6BPu1AUVp1bGT/OeIHdvfdKX8/ZolyxBBak
	 GN8IAULhX0ZdC8bQ02BtmuJmPcLUWv93qyz0i4qy3IpIc0r2t7RBzQDuJwl3yEMacE
	 cDXvBveB6f4FNR4RWOKkOWDzZvYi6CNPJvf5XhzKmEL8MpvUwg9o+SzVpMAU56E0qC
	 uRgdVJv5idMt5BekqPVV7pbMS0ULyhasirgo1UlprmDyin4Ss+H4JMMuni28T97jJX
	 IoGUgoDeNhaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670D0C5478C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170872369640.32551.6428142566765666248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6043be45f03e908089dabc0db56f18298e81695f1c0af3fdc0ebb2c830fdad38
Date: Fri, 23 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708723696
