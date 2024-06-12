Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B08817FAB2
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718210903; cv=none; b=RuuQ2Xt5eiBDBONZLflU6h1BQQZlfuxJX4VNwnpIKbX0GLGeF1wpLBKa68S9lH99LwH23XfU9N2l+8fvZh4I2l46o8jmHdjLcDg0BbPwVYnjpurB98Fp8cxxJoklNoumMRxakHwFEK+Dlu+K9OAfX9IuuigsmyUThfBfLSSV16w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718210903; c=relaxed/simple;
	bh=tCL/kZpLZnJjkOKkKzSFW8HeSYioh+1yX/eXYZDWoPo=;
	h=To:Subject:From:Message-Id:Date; b=mcHGHrUjEr1/br4ENzAbDNHmdTqe8efMQqpXrtTlLcLnHUHmYc0mssrXJiQ9+C2QYYo0kzJ5+TUbjfQczBLcaDiDXHA8zWtwD/iUNZK1ilAwH587xdU9nJVgGl3UncdcMU5Qb1xYgFr2WRQfLmdiOlDPbVzuXtrRAGMz9i9Jjc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV0yjtEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV0yjtEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3202C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718210902;
	bh=tCL/kZpLZnJjkOKkKzSFW8HeSYioh+1yX/eXYZDWoPo=;
	h=To:Subject:From:Date:From;
	b=RV0yjtEUYh796+Apl6C5ZPFyhZFqEgmvFcmgSKibiBOi/TgHxziFRt7FmykIA/KqZ
	 XoPs5veHL8uUurSoT+CI+FEl2lQ/1U/3J0eTJZFoKFaXUzqj+0b01DSbQp+dP66SSE
	 bus0TpVBHAz474mNB8Ni+IpAVf98BB/msRvXascD57n0eY2wKzCVN143joB90x3lE3
	 E4QPD4Fwh3pe9IuPceBzpdYdWMOB9BdfPUmaxf0lEENUWX3gbeyyTA0YinwqznMh7m
	 jAZWu5YwpIPGdg4LtQVs7+LNbwrBk40bfhBvubTqNVq7lsr29Zhl1b0BWzTO0lpf4O
	 y63QNde2gdRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD38EC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821090283.16411.15674345160795611354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3c64f129fdf1be72bf5ad8893c8f70a4d5407fec318d129dcf0767f556eb54
Date: Wed, 12 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718210902
