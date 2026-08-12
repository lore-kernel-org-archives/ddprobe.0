Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAC24302FC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786533034; cv=none; b=bgFFdYYfjIBp5M3sH17PL+OBQn+Q4SJnnJT4sacxmkOFb+ZviZYcLLaeuZhJYu/uQfL/7SEQMFp7II7pmtoqUHKIRleeiQdQpVbcvaa26giC5Lxoh0Edt9sgmmrOgvv+EN2f8xBMniSJWV0rANTQs32v+DVeZbOBuUVcoNUsY4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786533034; c=relaxed/simple;
	bh=VWYbzHo0poGJOonxVVLFk1X75d2hqfpuAuguLoQMa4o=;
	h=To:Subject:From:Message-Id:Date; b=XyZ2AEdVulsghkRnJY4FDIua717th3gqJ8f32kt4G9oB191G/TeCc2Yb+XQ/7WYHVZy8fV9OeZQtkIHc0ZO5V61Msh3DnsYOUOG/yfGDO9LG04XxIOiHOKVeJoJvlTusdFyxcTpdxaxhdqr8bxgdLFEuxvb/i4Ig2zaENp8sfqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6BUEO1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6BUEO1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6F8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786533033;
	bh=VWYbzHo0poGJOonxVVLFk1X75d2hqfpuAuguLoQMa4o=;
	h=To:Subject:From:Date:From;
	b=Q6BUEO1PR5QAWd6DIlIAfydNLDqD3kt/i7YoNiacwc+rhXz0aI7f4vyQGwh42tJ8K
	 xAcbd65mqRiy9T366sOgZ+82FHrE/Dopaib1Pkcb57EWePqklnYgvSEtmNcmK2e95v
	 OjXjKz79YuW2tMLER2Zxymswssh2HkrvCsgT00I7rx32hsofbmD503bGehHg3HXkqH
	 jdEMLX9Z6f+mYguWIF8FO+ODXwiD8Zq6sfvDBGRXJfYDkURogNyUxYlF9FHBzXSQB7
	 kjO1gNf62WCRxVu2Fi9SNIVdX9qCt2g7QjImurCR7+kLHkaz6Eo6UgBdEY2m4UTSEE
	 thDCf7xqLOzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9100C5CFEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653303368.13465.8183349024473560518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527942d0b9184dfb88309d5d1e0b1018628421dc6ab1bf0c2e9082ba1b62a211
Date: Wed, 12 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786533033
