Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E7521FF23
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774687494; cv=none; b=sS4FPtQYDGHkZcu3fVMrMuSmnLjfvAutVnBE5H0jBHmBEVx++lpefWbHUQe9vYrj+RyUDP4XeymvACap2AqC+331aKblLaZ07s5pgrkQZTIU5oyMuzave2usuMPwkzvw5uKFgFlJiyZiO9CYi4qE1RK6bdLqzAKhMlemaiDpWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774687494; c=relaxed/simple;
	bh=Nn3IjauxtnWmR+2HUBkAsacajKcWgkrgu33brc4o74c=;
	h=To:Subject:From:Message-Id:Date; b=g8H+ddmwll0uHjNtFSW3b4LV0xQpIBu/++HcXCIEF8EfCqkfBkRzUILppwdwSslASEMybWz//E8XuvDmrHgIncBmVCnde1QB/hx8o35QHHeXwjgNs3w1V+rj5J8aYDfDLi0JKKzQJYv1ZogXAlhTJPUUxt2C0tm7RsLbEaA9Ar0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fdkeu1Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fdkeu1Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9209C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774687493;
	bh=Nn3IjauxtnWmR+2HUBkAsacajKcWgkrgu33brc4o74c=;
	h=To:Subject:From:Date:From;
	b=Fdkeu1Z18a6RVBlPmbvuVEPkNufnp8VIJUyCEbCcUNsbe+ee6rmORUFFCWBX02Ubp
	 Uxn6kijGj8vnZVgdd5sB49Jt3lnl5syBjddAPN4b01G8gIubQcDd9GzZQ0X9712wQM
	 SJv1J72adhGkq6TWMg5sUwachIeC79A0S5OF6EO+VAOKwD5KqMpVVhHYYDHTDyQD3G
	 /BLOefrKXZqrdv7d8cvw/GMu8kDumAMxuC/41T4Fa5Dn6quqBvxUkO0F+B6ZEcWqP1
	 BlQzqCWbtYHyAA3dOSt9hZ5wfDB4O88Yy+O9knxKKzYkAk4AAqBpE7/O89k2vVA5bl
	 gT0l0DhXo8DsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBC10F2878
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468749358.3306.15861533963539215664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf976a828845529a4ad0d43dfa1b7f9d04952efb62bf7b0e17e18e0f9f7cd2d
Date: Sat, 28 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774687493
