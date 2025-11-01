Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C17E241CB2
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761961194; cv=none; b=QRFfzAU8X/Zic/GA6bLw6N64InOut6CpgKrgqDrLv9Z/IC/rNWNyvkgEiMQfCVhiKN69dsOcmheE6d1Hpvq+Y1myNJPXhMIQghknAFw7WVTcKR8yGPXIvsZymJvqpnAZaICCvRwOwO33u5XNPM7xfm3+rnG0Kq+l9hP/k0k5nwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761961194; c=relaxed/simple;
	bh=J6W8OACLUTL5vu6FgDeVrlmdd6zJyIlhJ5sQNmb3tMY=;
	h=To:Subject:From:Message-Id:Date; b=EbUWuPD0hYsFWC4siaU+b0NPQ2mb0WzGW2MKhZkGyHkJkyBmEpheE/L2hMahnstgr7cjfOgGajq3l1RgnZmXsEq/WhuqWFOBhBkrZI3LYDAceUb0wSYC46+cXOgE4Mmi/Nx1ZlWPh94U8Q32CqtPXBShXgCZb6VYtEsfhLgyPgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3IEot8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3IEot8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A832EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761961193;
	bh=J6W8OACLUTL5vu6FgDeVrlmdd6zJyIlhJ5sQNmb3tMY=;
	h=To:Subject:From:Date:From;
	b=q3IEot8aMFj0jHfVQCR1N8LfH6WrZB7Ov0MEbRRjC75JNUSHYdKLlN3B4jG0rXyML
	 DXefCiu+7YEmc+kIfris4jzJ+gWTYwQM5+ePG14ncB+wf3ZkqB3lkoYIv/hsTvgDar
	 AIG+8Pa/KZLErOKXs/lnqrnCHff3rNl641SkeGUpGyr5XlFiL7nHQM/UO5YDPUkdbG
	 DKfdOjSVfpRtEBqxme6pIYUQIkfuVPDwbXQCc7mtV9+0mG4Fz0Go3ME3tOtzfK+Giu
	 vQx4JFQjGoqKTuLz0f5zi0Z9fXsaQNEt7fkzEUBATdptS8ZPd5kJQKFv08/sxJK4qH
	 FhhQLOnOC5btA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95556CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196119359.9541.14592271323982934776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aeb228078ea6df320a1a183f8e2426bfe75c2b704735121b0795dfa88743cb7
Date: Sat, 01 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761961193
