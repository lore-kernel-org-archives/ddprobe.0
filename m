Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E41322A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775686534; cv=none; b=W7Tm6rOtg3pUY6EH41CJjEDSdRXSdR4/8frKPvuwhP6OFTIsuPg7C7UX+9AkYthYuGhefLeXcoTHi8IeOGzKf9aunWaKdN4e1ecQIRAFeeIZ4kv5plGYoxqm9Sm2OaQB+CF0vmTBCvxMHU86DdfDI/xdaKGpfMsO38yHCxlLQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775686534; c=relaxed/simple;
	bh=FfbLQZplftNWIPpgwoQmhi7FGGykHmBKQ1tWCVxoPLU=;
	h=To:Subject:From:Message-Id:Date; b=HMHJ/rbIsWcXhPHYV+rT9EdNdWCdmM9WluyunvZxjcHYwP6Ja6pzvntV+Z351+yeIt1JxwTjP8DTy+K7jD7kiuIGW8ud6JMCRt7ukoBhqjrCO1SUgq9VkRRd0omcbZOKqG4OvjiVObv/Ow+Qov4PYT8CrnXqOAYSZXPk5CUXktY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5BRbkdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5BRbkdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C311BC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775686533;
	bh=FfbLQZplftNWIPpgwoQmhi7FGGykHmBKQ1tWCVxoPLU=;
	h=To:Subject:From:Date:From;
	b=I5BRbkdhEsx37W0ISjWyl4PwClnwCcsearE0GZXUjAL+nXKIhenE1jdo3AiS6zKis
	 UGbOsTXxQpR7FELWuPlC+eBjtfLYK1sN+193q7Dx7Tlq5peulGKZSi8WtPQ/irKmcC
	 +SAyuhjiG6vGOpB6SIZSm7sVkDtszYIdDMZQcBbzbduQoJQwnh4TS1qzGf9dTtVtTF
	 4BxVIfaDJmdCgx1SwKC8qlT0uAeCNXD3iukARvIL0rAQn3se+yu3CT0r07OAChO3W0
	 JdYJpcex2QCVO4sC5RmVn6C+7NQ4Dq1xoRHD/uN7UWPiKgCQ/K2+BXCBHJzLUxfBCo
	 RIOnn4MrC0m3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B024F10FC459
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568653368.14898.2392921790448140291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae23676010a6c8a89c31201e99c00fc75409501946634cd85a81a8f03d55334e
Date: Wed, 08 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775686533
