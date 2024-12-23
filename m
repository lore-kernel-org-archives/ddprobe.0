Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400051392
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734913554; cv=none; b=inG+jCXL1SsbdC01R37P3iI6ZawV4fG/a6pYt2BZMixKgPNjMsX5uxXPxnBx+h2S43ERbXiH0cuuKpuZD5mWYsAEejGz3b4Vb1UgjPSBYxaS4d01uBGMK/dlLjjE89H8roFnTKpW+WnRu4d0XezoQmu/kqjxYCGLCIufuMtzNsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734913554; c=relaxed/simple;
	bh=/CysgEQagfPoJtjyC0P6K9MU1x7qUmvWwEQE1XTfOpI=;
	h=To:Subject:From:Message-Id:Date; b=WAmPZ3TiwUyTiWiUYTf9Hik5He5V1EKxm7kFf/0QAVt7iGycWxqZK0ytagRjXJqM9uwJIm9ro8YXy+umgigHdN+OhYAG/jswDRl4YnONE5nUA7o0EpHbWnOpnDfr9++ScvoiP2NcAla52WUmC6LWBbBmNVsfFuLcvocqCjWxU/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtiq+mhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtiq+mhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24B7C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734913553;
	bh=/CysgEQagfPoJtjyC0P6K9MU1x7qUmvWwEQE1XTfOpI=;
	h=To:Subject:From:Date:From;
	b=rtiq+mhFV8oozgiZwMcVMeGTzK9RXTCqF3jb5gQZwU3PJctJXm772s0CK4REXnI79
	 tX5AkBHPAeXyfa298DVYprPUPl3bAy9cObwLzugR6xC39FkCHpnOaWHvobNEo5Tl1l
	 mvzWB8FIAL10hZ/toZ14FvIxLQe0GCP/o3uo6s0ZZZP7vvb5+zcjv4NNITbL26ZJmO
	 m2LzvHM7IkIpX/Ecu2ezbL92NbvAoqmJMDeuMFZQ8zjQmstLrV+YY7QLkHLe8YyVVZ
	 jHeE0Q2UDmBYukk6e6GzoH7egZfiY7YGYkk9vW2fkTV+ihw5XsocyQLymSG1LDUGLg
	 pFtN0OGVW4HKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128BE77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491355358.19441.1508218990597802529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746c00e008480868e87e411dbc52e2084889df191336d3d510c424a662024175
Date: Mon, 23 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734913553
