Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3C03A783D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777994254; cv=none; b=CSiCZyAD8VGgyCsLcLioHQv4Z6Ai1Gy8vFKLGHvp/eVhQewHqwtp8KlKsBb0TxkZWgdlH3TgbwrRzgsYzx1D2FsJrDC5gyYwoMcgKDSvQ3OrN1UpFIDNQ771p+5MPPe0FC/XqrqMhGrZG+sbe8863dMpLbAvnsogNyUbFJFCerQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777994254; c=relaxed/simple;
	bh=MJG86UbFh8sYoTEzeXyZWjsQq/SETvoN/Dh7bjDgXMM=;
	h=To:Subject:From:Message-Id:Date; b=HMzCMyoJt8ODc/mYBMK2Ep/wkFIp2B1rUt8kHNSZhHOZoeN54p+XfV6eD5aBcXXne1ig8UnyNIO9qFyVs2SGloxpL7tuE6xJ/cciWh9ebR5owrrOMwG7T9pX0gczvmjwUvF1gbj9jadUeI257HOYgYitPOk1UFcPlW7u+iUyx1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM10m8E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM10m8E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9412C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777994253;
	bh=MJG86UbFh8sYoTEzeXyZWjsQq/SETvoN/Dh7bjDgXMM=;
	h=To:Subject:From:Date:From;
	b=vM10m8E8FP4rmlWfPe2C3eS4qiaYagbOktkblmj9cnNQfH/kFowCo897Y0Tg2Rbiu
	 a2ZDa46MoZt5QGBb6uyKyBlxPxZean2En9BlIZUHXEruEcDTJ+FslCI1sJbRi/g9hl
	 bd49PCnH5l5zkCdUSdOrgXV2kL21okjorBKfFwr3RtXeXt3Lvg8PHt5Csllgm6h2Yj
	 9eM78VptjJXmOWdIojmlrgUQOJaR6O6hhHo4VnXoM7OssdxSTcqnnjrNFxQVnRJkrk
	 HYPOTTFy08fTvIiDkFBHovYMHDvXg6Dy3krQTih0KxBnj0vRvyXGgJISnkGtJH29I/
	 /hS7xFmzcgXAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC08FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799425369.21920.18357581139861725625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470d76b7892e7a3bfdab35f05729cc2677592c7d0307cf15e58f178b46b64423
Date: Tue, 05 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777994253
