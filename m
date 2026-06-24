Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FAC19995E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782263794; cv=none; b=XLVngncfKfBJ8F6giVsc2dsuQuuRwoC0OToZ+3EROr7cHALbRJSz/nah4L/XZoEHoJGa9GaoBlYEcsw8JjNngxZh9Gx70oL3s6ra7tYs8CtdAhopHJ/QHGtuy/Dj8ucao/DvapjnkJDFxewh2E2TdO7BqkLs/wDIjihdXVffxGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782263794; c=relaxed/simple;
	bh=IqyD0pPlJXXQJ+8uMS1P8lPs+kBhQwDXvF3ZeAYh2R4=;
	h=To:Subject:From:Message-Id:Date; b=YbdH2CMLzDpYd7MCYJ22gLdW4q/3k1mgolvfDK4P2z9sdx0MBV/CobicvsJmjL1UPNceVDcEMl0xzbQTnWiHuiyfz8vPkTNe5ScmFNQuxG5jtYbsIPVwtu6LNfzRANlxWfA0ps/atKkN51A3iWtfvlWkl+N9qNwRrhA3i9vXbqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtP7sIQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtP7sIQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB37C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782263793;
	bh=IqyD0pPlJXXQJ+8uMS1P8lPs+kBhQwDXvF3ZeAYh2R4=;
	h=To:Subject:From:Date:From;
	b=jtP7sIQhlfkuKC8cBoqzryWHI04QAeru6kCQZ2qKwW7I7RQy/AQfNoc40EuXTo+uY
	 vmHOd8zJCbtlGoM1fbsWPlahZ3dde8BBgdjLE8sphkG6WPYtBvrvIZXsH6qtPDFMsj
	 YaYnrMo9r4n/5WNM/gUqpooMIjzirlftIi8cTxKDRY94oIoiNSCLx7QPQWuaSlRSo8
	 ykPWtTQlHQ0PhaNRsss5A0gBbRB3D8nmH0n7OYfbfNPA2QxU7YlDOgZ5Kc0Mtw4Mt1
	 C7/gG0g7kVGXEhD5Mwh/FlZ8maq2N/ow7xXi5TbaqFzNvKdMWcQ+TiELmHeGk3BzF/
	 dWFYJLV2wAa+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9CCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226379369.5091.3829239138221389280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1751a432324f3d8aa95e83c2db866ae3b852d5d2ebd88d72f58037844eb6ccb8
Date: Wed, 24 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782263793
