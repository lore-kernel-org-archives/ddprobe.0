Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942022F755
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766309634; cv=none; b=flmRDJHh0VyBkZkihkRkoqAtV3cLYLyjKhSYWKGou0uWmf1VYLVubKIxU4fN4FDObq6SZydvmgi2skMpsE78fgrx9XyJUD+e4DQtggreg5Xqz58+/ebkegnqzFsxwm2Y8DLpbnRtbhqvGuCmwbvxa+TQQzxX/DeoBC4p94lWz5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766309634; c=relaxed/simple;
	bh=tX/0Qb0u124hAbl3F5zYkjpeSGYEKe6AuW+u31USNZU=;
	h=To:Subject:From:Message-Id:Date; b=IPCa5PlqczkX2bq2YknVimJ64kNv/9xatD2XLeCqumRE2A/+g+6FzshKEhHBc9wzmmkF5mZb8vO8XxiQLxf/r+VcDZPNVCF2TkLbc+g+85r01LQhuUKwyirpVkUPqiuhc642kGry/uCCwIV9ahnKOlQVxSrKJBOgq/7RmeHGvhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JW3UHa/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JW3UHa/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EEEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766309633;
	bh=tX/0Qb0u124hAbl3F5zYkjpeSGYEKe6AuW+u31USNZU=;
	h=To:Subject:From:Date:From;
	b=JW3UHa/sLKbeNNxO1QGmN5oD56Cyj7ja4/2chWsyWf4xEm/nlIcxij6GeKtz99p76
	 zk9Ye0ah6386GoXHN+vBPgfKQFCsb2e6/WnWyOi7RmEEzwT2BMLXKN4dJULE1jCegj
	 +Gbgwg9AMK11+7/qshqnz9Wk/xidfpnxVBKQBMDRBGsMZ0pjPglflhJjJqJUx8Os0k
	 TFlSFvhuHx0LR8KKrPxe98d9SluCD6IE82ZM7+FjQ+53B8Brs4VToZV8ZwbJAYsdZg
	 SYP/y1ZTnsmmw64KDedHoRt1Ueoh5XwO7VaY580BxaWkJ1RvHCSAapwaB9kf/VvWQW
	 hUY57JbqEGqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B96D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630963357.13572.8069707366402920816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b57f4d8b5500d8a617946fa39b23919b70f51b2c86e1343894651d067b62257
Date: Sun, 21 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766309633
