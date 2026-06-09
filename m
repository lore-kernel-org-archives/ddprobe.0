Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC82CA4E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780986874; cv=none; b=ugGpOjkUE/Vdc4/uUx/0yX0rctPMVi6A+b0WHnViDt2J6e1Ko6yJwtJYRpr9f/E9JEVMrsUbJe+b8bj2WaKkfoQURLnY1OchbmBulNyor9z+cGhDwS+dCvuWZGZj3yDA1JOdMQrWddmH/t/DmKCkgMX/r7zDqRjeB2LSnnE5V40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780986874; c=relaxed/simple;
	bh=wwZS7mWuwN6VBnp0/iYVBvtnZrfvDC4ggD0OYL8ET8I=;
	h=To:Subject:From:Message-Id:Date; b=XT+vjzY7Wqa50MhgJnjtFrOlDVtWqJgxwz3lB7dG+Va3g8E27EYVs0kM/SCc2Z3qETVusIK2K02GIGtDMJbZuV9MWoDOG6PkGLugb1rydPdwd//Q0VjN3s9gkWHSym/Q9YV1l62KwJT+ym8sYW5pQc5MYCymhdg9QLIlP1sbOuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcTkMleL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcTkMleL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3294C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780986873;
	bh=wwZS7mWuwN6VBnp0/iYVBvtnZrfvDC4ggD0OYL8ET8I=;
	h=To:Subject:From:Date:From;
	b=AcTkMleLspXRt9cmqNUq+rKhI0lt108LYSdLyO1tEHfujmx+E26pug6HR3AZ6uh5A
	 fjyeQUJ6MqlV5Ofad/9lek94BKQjjdT9pQSB8wluRs82q1DNXLm2CVe6Fbyel7eXIh
	 sCFlcmexBlw0oqULXTUZ6X6HK5zyWhba2dawf8Y/tl9pj47dSxy3RlVGdDCKWuVXiv
	 wQ/9QZeAANh6wfpn8zYccCgPO6LDS0eLs4yjmEoyzVLEpRm+txYrf32B9po8XDSxbu
	 IBxaWQFP7NzV03iya+RJo7lDv3jUM3Ai2QF+rQyffGHQfoidb3+dvmZPdtRR/vrDtK
	 alFwbLd3KAB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7863CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098687373.24546.16111394184496959569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28eae29e43958bffea163d02d729e564f0f2f8bb080794a974f094e5b3102ccb
Date: Tue, 09 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780986873
