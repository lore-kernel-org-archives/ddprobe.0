Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421FD1D88D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782003994; cv=none; b=Ziau+0gLQVqrVDeA7pvRgsIqG6f8lDZiuaDLgiOOyx5B/m4+W+EPMa2Rc+oBikuZdQw3fBlwRAJ+ncnYu2XkS6nH+8HGHnjWgHFkDbAF2ESIp7gb4yovO/iq3UYwBRTfv17WNvsycUkz5JjVuhEzcm2yqSKySM9bVzU7UWQ2Kqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782003994; c=relaxed/simple;
	bh=ffyrQNUQ227HHxHdHM1CncDVQ/xyPWnGaw+Nldv/Dnc=;
	h=To:Subject:From:Message-Id:Date; b=YdQQbHoUF9Bhs7rS6sVX5XTSZrZDG6jsMkitDsQapXxUWz/lFx6shM79Xrbf2+WvA1ik/o36HhKnVMDAFfaWiiRM/YdfIRUTZ4rH2Gky3JFH76+D/TAjLarm7c+A5DRAZLnH4cMl7OXWSj+jjP9qrQ8EpJpWoVD7DL/TDLI5lH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0neCvJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0neCvJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE717C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782003993;
	bh=ffyrQNUQ227HHxHdHM1CncDVQ/xyPWnGaw+Nldv/Dnc=;
	h=To:Subject:From:Date:From;
	b=F0neCvJXFJm/AteC5yS3tRZqrsnOXgaM5CRoRHAud/YDH7YwFeQQE3hcgr/qMylaJ
	 6ZlnrqXuAgwqRRj+5cz84O+zOkc++6oCdgv05Zu4mNQok3lAj1lhTT5v2KIBxj5O9e
	 EkkRkGP0s6EpbVjXkVrkL+2REYcBieyu/4HgLU5fplPM6orkXF+rgmmXHS+Yg9bCS2
	 3y9jCmgfSb4/fMSsYCRtUMB3FDXLLA7llOJAwr0KfLA9dxosc+jn0cMewhJjz62Bco
	 FUCF72QJBGNVi+Ri6/g+HcyTh3n434WDOHXTzhdV+SaNIk1VrYOtLjLqvFWGvc+01C
	 uHeL1rMbCpgBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83E1CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200399371.12674.1223275132991548811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c235d83b73d9dbbcab72986b2b76b8b082cc8c3d531d10f70edd93e2d7f20ad
Date: Sun, 21 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782003993
