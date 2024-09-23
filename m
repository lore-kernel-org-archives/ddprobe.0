Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB4C19E969
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727110554; cv=none; b=S7iC8IuI19Syx0JByxxXaefsoKYWc5JanBrPrD1Bkx/oKKqi/SKeC3wKkTZmYNHbzOirQ1Y5opzzVbb8vVKeatdUVlN9Zj/T+SaVPWU5EeftxEkM2k7oAzMLiACEMi4y1EKHMq7w9gKMa7vS/YvNwgktwaAdyrutdbUzXKyR7RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727110554; c=relaxed/simple;
	bh=V4rz81flPuONzOGIDB1ZnBmSadIhmDs26VwHi9MItFg=;
	h=To:Subject:From:Message-Id:Date; b=Z6uMLOJXHScZCK9OwuHtK7x5s7hYjoK7RqJVsPAsV6ik/Q+NcI/rQRocnKL36jkcT61HR8VQCeedz8MCmFzAJHhwd2whqGO8BYqfkI5RLrlqoI7flLq+9ZL92BPXQgCOvGwXxf2wr5NpU7re5o4nenWj9PpeV3PR90L2GPpZn2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8SFpq1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8SFpq1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF460C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727110553;
	bh=V4rz81flPuONzOGIDB1ZnBmSadIhmDs26VwHi9MItFg=;
	h=To:Subject:From:Date:From;
	b=L8SFpq1PN8yqduC6XmqzrYWrnuv4ExXNRR3fB5JJwSUs13uIbgbi081MhmsTncpxR
	 +sefcSv8QewG41XY7l6TgxXbvesNmtycJWWuNGDyhnDe9QMldcuQX8eAmNANNSSZuW
	 k+LVDGDxt0VYTqehMS2Mz9wgt6GCfu0pUuOj0y1qBsZ+gtHtNhNtQVfmbNeB65ChgZ
	 x5vLQWOEU7KJcVmO/MulbU2p5p4hhu4q8d4+BYHyDpxym/NHaRTHRBbQAwnUXm34qV
	 jrNZtlbUoSREpPUjmFIs3CbyfbRx4lasTyf8iB8rf9rp2QCc5/vhW6l8l1PA2h717z
	 mx+ydraWmlZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C843CF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711055362.7013.11111651987363082574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e4ea3c35f96952ae6d814933007464ae27c41f769aeb047954e3c7e54ed300
Date: Mon, 23 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727110553
