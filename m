Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006A31B812
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706340497; cv=none; b=Pd0ajX96qmmo0q9CkuL/pA9mlECmiihr5RdjE+1FFiBtii1Y51XP3xB71ZL4pPl9x+T4OQEl+Kcmn/LnuYaRCuNWxtTo7VxtUXQ2GWUza9HaGNHU9bE3emNdYHh7TI5uG+KmWbpiwim1YTN02xMT0qVsedXxPqyc7qGBXP4DxXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706340497; c=relaxed/simple;
	bh=LyZLBjYnFkD48zIEDQ5YF31JgWAujb1t0JddOZ+YM3o=;
	h=To:Subject:From:Message-Id:Date; b=X62YNAT2opM7B6qerDu7ZG50UPuQOMsKK59+jfhlsioN6OBkdoMkGJj6IZsMsmh+7892KBlQzTqgvFyk+uKOUscTClKd6LoyL7bPzVKaPj3sg9D5heMZdc0s9WkiOMuBxdXUe4UNO/IWYwBJk+2buaB5aLkNbj0I7LfNYEJCDq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4+pGuP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4+pGuP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7516FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706340496;
	bh=LyZLBjYnFkD48zIEDQ5YF31JgWAujb1t0JddOZ+YM3o=;
	h=To:Subject:From:Date:From;
	b=W4+pGuP6Z+dBhwexFzTp0WRtZ1LGvX+vK35LHz0Kgw4wdVbfihVTnfP6iEqLXuRCT
	 KPhaSanDBkWWCcU2etdUMmHGk4hNNTPO+hVle3TpfTIRMgT5V3LYm5FDeToKnP2cIx
	 mvmoGjHIlEyAvU9gSLLQviFQ7xJoMSdCDz1fjjXxn4XzAStbr3BP5t7/BjYPNM4nNs
	 StcdNbPMvfO2zoC4pzCBMSQyGbfiDhh7xXzuQDsezrQCvIks8SlZ2G0QgB2/MjBkNq
	 CO1jXxrgYklGuZpHlj6k6mztBNTBbehMkoa0GCQlGwkSPwo0THkLrCjOVSciBuwCE/
	 QBg7ykTqzUMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF05C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634049636.17613.16705831821953596482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81ceebd83dfb9a5c6f7bba796e033f6619887d40e626e6c0a9d5e566610e10d
Date: Sat, 27 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706340496
