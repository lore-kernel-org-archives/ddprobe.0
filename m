Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C146523B0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754348393; cv=none; b=iJrYZ2+qo7gzKCcOaq/PDhB76CMrTYZKrS+xfUE55iYYOfQR4cxhfBXoeW4bfz2UZ+E192LFroH6hhAgagt65jSpebAgSzK1ZvUdnFYexfvPzO7j1RAL8ZqVhL3OLR87fvqNQv2b7fa8ZvQf5IRY3tYczLiTwtTJvhjHttBfYcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754348393; c=relaxed/simple;
	bh=nsCBwlXhQaiEqsZiV+MGHVAaC6eesv442jubga6JnuQ=;
	h=To:Subject:From:Message-Id:Date; b=W2SOysdYyINmRzbeUBctCQ4obDBJI1EG6LcakjRWi1XPvYKXL10GYBGrtVHqyYVlXc/jJ2l1HzavxZn6QsJwquv7NZCQz5F6S985qoh2eUfbhgD9bJmLQoKhfQtGvkR/iPKbEjRmzxT4ktwHs5bmiXEe/bqzK6SbzzEq3oz8s9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccdJFszq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccdJFszq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08CAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754348393;
	bh=nsCBwlXhQaiEqsZiV+MGHVAaC6eesv442jubga6JnuQ=;
	h=To:Subject:From:Date:From;
	b=ccdJFszqg7CnVKMjgXIuj8HSmiuTz9hg1P3oS/DPjN/Vps/F1s0aElFmqrwUTRraF
	 04INJ4nLD+wrnxpBPvIw8LDKWf7rhGJ7WdeifWEkhLpFdR3HrexY0ShcGF1QTNBI0E
	 mtbkk21ka4KtHKG7aO7KCwRIY1F0+d5UHu7Kmyr8nmTtU6H4XW6oA/mkv0fiGM9tgh
	 TsHEa+CQSHuR2zNLVx52d7Vgja403aQ7dBOC54ycyBo0+SMadI/4vJ32pr/Hih3w9/
	 uFUauoPIgdWYih9lT9a7Hn60YYwMJLa/Zz4ILbFXnVLhwk2HDHKlFfYeU81NzYx+SN
	 8dudVnU9m38hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E0C87FD1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434839358.20832.8016468053294322647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6476b5b9a728d818f68aedfc366ced32eb13b2cf2e9698ff924988201df3d4
Date: Mon, 04 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754348393
