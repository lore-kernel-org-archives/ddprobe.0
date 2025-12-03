Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37429482EB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764797574; cv=none; b=AZBqHATnqZvYaZJ9bjfkK+98ZdxFmuzUO+OWfApBbKgKZND93O3mAMhLou/9Th1914a0p0ylqwIHIfueZcgHi8tTGD3DytBCGigCvsuyIz25dohNr9eGeJ1NbPLzuiuWHld3H5AV0VavDz1jcpsLd6M6VW6l6OmgDe/VyS88lX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764797574; c=relaxed/simple;
	bh=Tl5rJGOJ+auYs53kpEARGIDsdjVCSnHvP/ueGdHkL1o=;
	h=To:Subject:From:Message-Id:Date; b=ZeTHQ3102t/LKLCrHG8YPWBc4evyhi/BiM7YiP+owOCbWcbN5XU/lYKbF9ikoCcnch5cLKDK0rgtIP/t3CCFSW8sHVD435E6Nxpfz7I/DqeMIEU790I8xawmlglSh328Wkx+XP/jYzvG00iJY4IS29gO7+hFMCZBtwhP6rH6/sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2483nzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2483nzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE28C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764797573;
	bh=Tl5rJGOJ+auYs53kpEARGIDsdjVCSnHvP/ueGdHkL1o=;
	h=To:Subject:From:Date:From;
	b=W2483nzjlMlue+7W+WPi+T+TXD/CCQzbnLx+WzGYCVJ/C3Lcr08YtAlO0MusjzTTI
	 bOHd//VIH62QR3OZlMVBiVZKaCu0S6XsSo8g1K+XoJeGTt8r1XTZ0q5u3tLss1n/NK
	 DWNVjuUQ+PTVijZmCqAtcDkONrWj5Yd9P0T8cAqgwrhaI5sOADN86ynhs0Ow7uU0mB
	 E9suO9WqUSrb9QNLLXuIF15B4WjjdQZT8EOirrha0XeQ/zV36PAFA/QHRlYYSxGXb5
	 SyOVjiNg8g4VgeprGT6JgyVXdVI3lLSk5DsprK1iu4HmTCMPB9lj714FIfqAbv5n+Z
	 wiw5l51Pyqy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93325D1BDEB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479757359.27025.12764251478353979081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b408b714e6ca4f36565e202fddf732cf5bb063aa342bd45330d6a5cfa0e6cd
Date: Wed, 03 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764797573
