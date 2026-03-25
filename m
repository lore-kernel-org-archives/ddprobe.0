Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A4C30DECC
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774417494; cv=none; b=RVFGGI/iMcwb8r/Z75oq98jqLpRGLr1BW+xqDnGU1g46p3IE9/4wuAhjxDVU9pjAGe7O4xKaabmX9W+SKmOJji21VqIwenr4agKITiOX3FZfm23eEXCzXxPqJGhVbR0VuyUgk44sn4OlU+m9Z0ACvBL6z2d7kA2hQVUxmNkinkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774417494; c=relaxed/simple;
	bh=kwdO6IakXHmbBCwbutH8tSd2iD3TdeyapTmBbsR92uE=;
	h=To:Subject:From:Message-Id:Date; b=a2lIVhIRVRswzx6tedTzX2ySRwm20fKFeVK5m41h8vIommlb7s99pp73ivG9G0JnjNYHuncDJp9QZYOlFsbl6VlScJPMTW66il62fiqY4wrct5Slx074id4hTcUi6eVNCZAl2F0buIqWKQ7gnOrXYCehTZbDtYfz5DqeEhwTDZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPctVD4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPctVD4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ABC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774417493;
	bh=kwdO6IakXHmbBCwbutH8tSd2iD3TdeyapTmBbsR92uE=;
	h=To:Subject:From:Date:From;
	b=uPctVD4kBc0jey2OP+rVPaeFuJem8Ys40Pna8LDzxR0D5Az6L+8qnqsUrtyiwWyvq
	 3ASj1sxL5v/nt9RY6osLjbwnkUqDduKn/F3wjbd+52tB5Ha16I+TxqRDBFEaDb3oFI
	 CrHKZg0cpkmv3dSFZAnLuoZvN7qLyoujfMZ0J54Hj0qmIHvlIvyYP3W1lNkzFx0Y+k
	 D23nxulCzf77nFYmOudPk0p3+0MwJYs/CqIepu3x2M+cZe3T6TkOPMCFl8L6G/MT2U
	 fn002sYYVVaie8XTOi86++t0j1/eBi0wGXrUNMiY0SpOs/l6fkg86HFm9fIT+xNYWL
	 m+nJmCBca+Bfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A08FEA80A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441749359.26036.16679516806061246277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4420143491997ebd67b46aacd3fcae5626fd6c7a09f159fc428792e73ac59f5a
Date: Wed, 25 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774417493
