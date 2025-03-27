Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3FE219A86
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743098994; cv=none; b=dA+zE2ChWqjLeJoJX4jsxWiLgNdqK8E2RREijBd/av4dQOYfc5nXHIQKC7nKLy9znA82Ps2nU7ahUrP+ImHKcOvlg88UbIFz8q3Sk0Fjk1JvCihsrYWq7xCSlCHWsrrj8jHFzNHmAnbUomKWsseFIf40iEp9LcqngZ31ypVSOkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743098994; c=relaxed/simple;
	bh=38K7raIce5Z82I1DMgHbPDUzLhbPkjpryItbR7iUN5s=;
	h=To:Subject:From:Message-Id:Date; b=tx+ScgsyPFfqmrY0arPq1gidLFW2sDOs4zZSNGfFd7sslbqvvCjJD60/jHjBKVVY5raALf+oOkMXwIzj29mW6ms6BpJdlQmTiga43+vnOfJ5jgmIZUBDPImJvKJZWn6PLS4OQlk8w7/3wbW3iHSut8RMFME7PkHER+9KbIWrjrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDTpXZci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDTpXZci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C635EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743098993;
	bh=38K7raIce5Z82I1DMgHbPDUzLhbPkjpryItbR7iUN5s=;
	h=To:Subject:From:Date:From;
	b=mDTpXZciGrw7lAw2MkmEBz/DKFsj4+S6PTJBw2vQsHM99E0b9KxbpEXz8DTV5K+iU
	 yuL6BOcgrGVQ9VX/28wRJqPZzWjwBY2Fi3W/YzxIigTP9yq/xPpG5oxy2ge/OSZ3EZ
	 ZcydeyN9JGSBU3rmaph3zjGo9OAe2vU1kKJpI0mzje2KZJiYBYYeliwmSstnwQdIPZ
	 899ufTBDw397nZi0TgANq5TCw9aT/K2uVawx7exDsbRbT3FrfcxqAv+dkZlZe4Ozxe
	 DIJ4alTqHYIP94ZxkCTyFGLEMrjLEAJHW5mhlvXKbc2vsj7KTQztGrsbcHLGT9FZM9
	 uIX1EaNAvQzxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF57CC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309899370.2304.784474270961059467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3403f18bf6c9fd9c391d846a2800197fd6444e3beef1bff77e0e921698a1ef0
Date: Thu, 27 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743098993
