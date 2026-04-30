Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139D72727FD
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777571254; cv=none; b=FllXplv2kqpfJOQXC8435QnFtpUr5H0XmxiKSd0vMID9zNBTeeI6pbL0drMmf+pKjmSGP+I1xtC+p1N0J+tPV1XRUoKy0+crYdD2KeAQ+AXUvKtvSgmbAeRjo+3qD7zV21BrV0S9JJiUoybIN+w1xX/WARFF5iY/LsZe6sgY6L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777571254; c=relaxed/simple;
	bh=K5ca9yYzbkf9RI4x50++E+6co8l9ED6Ugj+XIifgDoE=;
	h=To:Subject:From:Message-Id:Date; b=tp4aFQwkAko1f+wakv9O6Z5/THWljf0d7KXZB7YNzNgCphFEre4NXQWCTU6yhbO7O81iHrqJpnrY6QgzvMW7ATVOysHvHndnqBOhn11aK/et0zvvR5D5/jjyDDn1V0ZlLwI7Ck+iZWrcSpdTDsg3FnLcsio2UFa6XX5UADaeJ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flJ+XVwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flJ+XVwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF1CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777571253;
	bh=K5ca9yYzbkf9RI4x50++E+6co8l9ED6Ugj+XIifgDoE=;
	h=To:Subject:From:Date:From;
	b=flJ+XVwExRuVj3u1cmJZo3FfK60+qocrw1fM3ZMLz4uJC52PraqnYOsjZYmsltQ+D
	 yQ6A0k2iI93MqHkctNsO8zEMA7EsajPH/BWcgjlYofOi/hlt3zzZQKYGLq8Cp6KGXQ
	 0/2KIFOwWTjVeySWMPu620huB9uZuIJlO1YPfqdx/AEoNAvtq+t1/K36VK9awLvH8J
	 H/JbxLHRkXRa5L2qghT9T+G59cA/z96+dTXYW+634Iy525NSOnptX6GV9dwe6mOoMn
	 AMfHHdFyBZonZ61HtisjBWVWdk3YYc5grYK1O0qH8Azr2+krFhmJ0nUIozEupObzcV
	 ILJ3Krfd6OFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9BFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757125368.27038.9478532313888159514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86ae93effb0430b40c06893623e99696e2862302011b0db774603db6072e674
Date: Thu, 30 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777571253
