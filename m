Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251BF1F3D4A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736264754; cv=none; b=q8ND/VkuKKeRNv0ZMpTvzpNxLQAMsERGsQsdoY7oQM1hMrRglWMpSvwonJyfWMaSgUXtJzd7STotjYLpVSOHdffjRgLVReTNh4UY4f3I/nU7OoZqE4DRbFqCH9B9MFlWv6q3oUfUAsyKb5zcJnDwQqJfsFG4LDwqWNNzWW9LfLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736264754; c=relaxed/simple;
	bh=bPgE+QkCpbmFhVxx5HhH3cal1jEM72AVIvJFZKCTP8s=;
	h=To:Subject:From:Message-Id:Date; b=AdL30QVufYfuT6oluK5JDe3bKqYxtuWJTTU2q1gZd7WZKhEE1tlPtURY5HyU2u5mA8FUmzbCLfjmI56Pg3sV7fvC8UgqglyWXrgiH7RcJgV+wGm1/cZt/sHmb86BZM6Io/2koD7gUoiHWzg7DmU5us5RAruS86xXJjPi+ELzK6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE7xarAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE7xarAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A747DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736264753;
	bh=bPgE+QkCpbmFhVxx5HhH3cal1jEM72AVIvJFZKCTP8s=;
	h=To:Subject:From:Date:From;
	b=cE7xarAcWF/5tDML9oYENoHCI2vuBaOeRbFkBBJAMCLdKSaDMq2Etw1lhIcx1WWUh
	 +aRmE42nsH6VzJeqnDY5yyHp9F03KCCFgYb2OV/fcwOg+DBHOkxh6RfbJyoRlshNvw
	 xgF0waEw9nNla6zruhKj5/vcr6dWxITLD7RUxWa80nLIPFLNPY4aIR/tD3dQhbHaKW
	 q5CgLgL1uE9otTZpIRxGQVjcdssJ1rqX0BXb+XmJq6imPZiBzXWl+aA9gbfPdt+nWV
	 U6+Ad9dIZERw4cxPimvlUxwj3soHfO9ICaA752e3WEXL8/o4Dm56NoNnA+2NOu4yK9
	 DbgoMeCEf5G3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626475358.1678.16191745895052917436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de66cf68769839cd2e9eff2311171fc5665441a142205728945ac105380064e
Date: Tue, 07 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736264753
