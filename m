Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C8018FDBD
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757224794; cv=none; b=OamCsfqYtJ2MPIha9Tdlzu7/+uS90hA5lndweW9vnOM8hOuA94OaO+XkAE2prwIlyrIWMLF4x9ghgXshUlUybcLTRSwFwAInWk0tOQlglEujHl4n4QG6Qi7ihxc1UUNs54RYY+ax97oIu0ZvHCiTSDbiuCmvLe2eoiJRV0Q/vtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757224794; c=relaxed/simple;
	bh=yYT7enr+xm1uXXQ2j6LHHhvrRwNL7J9qyy4Nl7rFYj8=;
	h=To:Subject:From:Message-Id:Date; b=pHweUiB+0aZPy9+mSmkfM4V0whD0xov0pjKcp8ig7ZR+tdo4Ky2WdI2GMoKM8DjrsJvMokkwbzdPdUQYWWenKzb8l83T4jGdvlkOl9jkCxrNHDiBVbvmmGCiHxLDD3/9GzDUlBsauZJLU4aGRK05uuygx8Rd0dpn4lCpQUSHXxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5PZ7zIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5PZ7zIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757224793;
	bh=yYT7enr+xm1uXXQ2j6LHHhvrRwNL7J9qyy4Nl7rFYj8=;
	h=To:Subject:From:Date:From;
	b=e5PZ7zIrxb4BaWBeXgi3qr2iKtrWiifrUtmxMGmfRlSPpfCc3oqJWOCIoAXWwxZLQ
	 /ARaMZLwnkq6dED87FhJJNFVMa+HLW5CczTqYGGu8uc+vmjjupBAYrFrzpgC1CK/L+
	 1lJa1dATo1jX1td4On1pO9ZZRjk7dbGoq7p1epdLZPXEZEDJp4PlbVffrw5UNjvnoO
	 59CYLAZiRsRtiJpPjSJrvKNbErbguQ6TRWD3flSQhAv1GoinhaiyMYkHaLO5iZaM3n
	 EAydAN2caTOEUjNWnpdNHTOK0Ko01VC1o3u2FRFyymr3Qg9+eC/aG7BFiBWQGUtmdt
	 1O0g284vXgv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFECA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722479357.30815.18359581989941454783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b705bdfdad9ec79498f7256630cf413d3e0ec944a6bc8c7053404b013ddcc850
Date: Sun, 07 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757224793
