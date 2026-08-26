Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260C345729
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787724634; cv=none; b=DSs6TD7VsU5MjpJX6saL099t56GRAtKwnCel2/qiRqlr7fkqgEW8HJwoPuVRafqoRnK5h0gLQPfW/pcRpn/JlXl5iXh/7HIGWSjbMQndnwVKsIppb2/twPtTEVAT5t1MYQrty2cRrdTNrJh8Fd5lRpV/+2J269QA6HXRa+p1dio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787724634; c=relaxed/simple;
	bh=S5SuQ08BOGk2MN09LsmyhVj4spTNKYO4yx73ioslvOU=;
	h=To:Subject:From:Message-Id:Date; b=Oetzb+78aod+lqIOl/+x/VuN0YFZo6sXZEGZHoA4e9B2CJB+YbEIUgVBHUOFjSzDs/ooCB267FrVZbfKlSIR/DWmOgd0E4gjHoTFU5/4tM7EKFDlLByf8r95BL8gbc7vieuuSScq4AC2+p59kPVoVi0ScMqQLHi0pi21QUz94RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6UJ8NHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6UJ8NHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB64C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787724633;
	bh=S5SuQ08BOGk2MN09LsmyhVj4spTNKYO4yx73ioslvOU=;
	h=To:Subject:From:Date:From;
	b=Y6UJ8NHs89K9kvZTgiwzos1rtg+1yfgFg7Syf4+CqefnfgnduH/6JKyuMzz0QHQbp
	 9uIzXknNv8Whs5r5oJRWE6FAraDC2QAe4RF8RuyJ4ncJnz+lG7wzkREQgqQngUCe3n
	 z8anT/GXiWzOOTwyoCJZyzQQ35zJnWjI9b2vZhhlOChJ8vQxaNP9qB1B8ZHXixmGox
	 X+LqDc/k4CNIzxkxcbCmt10m2ZtiHk8zkadsoPLJKppd5P3hooB9ZubUDU6dgop26u
	 wgydLk026uxjqO5iVv4bWSPM2/2xCvsyDz1dfYzEJ1v0/cB1upaXUMnNkdXIZmnL1e
	 bZrpabYnqLZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB438C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772463369.8663.15034810752413393431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350fbabc643380be13f61328324946bd8561ee3e69f01ac3b45718efd72b3096
Date: Wed, 26 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787724633
