Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD7C1C9EBE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725618953; cv=none; b=CYHW4hXr0PkRdV5b1Ma9X9Z3cPSHwPtwXGnofoMhTv/BEcnOWHqolj/oEHlnhKAC2OFprL5SHRV++p0uAEYMWHKpIO3/pm/MvoJe+RWiAsFAUq5++Mp99As6DsdInGfxt/+iQc5ukjXREMgZJqnOsCM+UA5mWFphR4pbMIQ++0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725618953; c=relaxed/simple;
	bh=3Alj/kZfMBO0JbnvpJVs03r7ztGmNp5MoQnctEkwsMk=;
	h=To:Subject:From:Message-Id:Date; b=Eii6T/U+zvAWQ9a3k5SquOSGr725cpuGpawHOawJupQLpZ4Ciw90V4qrezxBlux85lziT2mMrvxvDK7Y7UnpxS5Da7UXva9KkweD2/L9mccXVf0M4LX4HLCUdv+0JP0rQMC/sdNYFfWNJtjjLzxLIJk9ulIk/7GEFZWZztYDyt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/UEJFp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/UEJFp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F6C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725618953;
	bh=3Alj/kZfMBO0JbnvpJVs03r7ztGmNp5MoQnctEkwsMk=;
	h=To:Subject:From:Date:From;
	b=r/UEJFp5YoWqzgdOoXYfYgfq+E7fAoT80O2BINOnq0rokQ/LmQ6ASatNU5RHc2TJj
	 RqAhjYAllVX23q7Oi8yURdqtln4KbKNK99jRs9YDoBIQDJdDj+k1l530xfUV+KV4po
	 inhqt45CrAPdWPwi0XAgSlMaWOFXoAixRB9e0FNVXwhm4K+HAe566+1IPnlKKKpvFc
	 W+8PxrbYKtnADS4FL6DAi3mtXgF4jkUS/VFWCjjKtY9ZOk+SOfzyYYQqEiLHcs1TZ8
	 S0QlXorGOKrEBRUjuQYuP9JHHtyVbua8uoCsjFgLJ4NplYxXECSBuAGQkwxKbpRPIh
	 2tP1EGKCriQZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E6CE7AFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561895363.13224.11277269433853813631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592d607bdd91771dff4fba21d797d2b9dc5149d053c8e4729a98feda522ca7da
Date: Fri, 06 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725618953
