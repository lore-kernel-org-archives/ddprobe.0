Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F829C343
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019794; cv=none; b=j10PqQTtzr4JPtRgkWEy5b/aAuHOuNIPhlCKI+CMwX/xJQvd0epq4adYd2Fi00DVZigEGKWsrhWJW7JIdJBEcJh433QPxrOAzV/GOYBRTz4OvDmaPasQKpo3VeqLkLqonCMmXrz1hOq/ioboSHMSxGs8igEKEE5RPXy2kA5J/xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019794; c=relaxed/simple;
	bh=6nvFVbHNRw1T1ELMwbLRIUsX6kJ6uUKk6L9FqR1Ra3I=;
	h=To:Subject:From:Message-Id:Date; b=QHk2RbKDbyVRVvX0CNkqo9g5DDYo3OTvA60RWo0fnjC8C8NZcajqStFowVcU6vQCBGLvaKg52mtHQW/UuLKC9tbl157oxK2yoCuDc6/Y/SP+1KrabJDizXhrNl/0JHzj3e6gWgrNIbYPGRuNXN6nr6WXdjwNeJ/qRfFLFESgtoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmjwF/5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmjwF/5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F26C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758019793;
	bh=6nvFVbHNRw1T1ELMwbLRIUsX6kJ6uUKk6L9FqR1Ra3I=;
	h=To:Subject:From:Date:From;
	b=HmjwF/5hp/I92lRWEhP52GN9P5pFTIXoiUFhdgh/tIkyOjB6zwry6qQGKW7AuU0/j
	 wB3OuYgtD23CadYsEwIV6vrLDQlvgM6eDbzflCy4087h2r9coAW4djPRilfg05f9Jk
	 c2YV4GZM+0gxqM8+v8C/qVaZ4Sbr3tizVFYib21dEsbPSDgWgJ1GdSYRB7MIr4A9Yw
	 9KKGg0lsQT6SiEW44Yxhk078IUHh0wIgFxvQi6VBSD9JEJ8COz+ZWoZTn1g9McpnQ2
	 U+EZjI9wDdQY2cqC3p1mDNxZd2z/TBrWxhWzrTquvy1h3YQgHinkiWZyJfixiW6b3d
	 hSNsiTq5F81JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F947CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801979358.10467.11862782895525995881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aec565ae7039e2d06c26f297a118af0b62947db9dae5aee9a1308de2093956
Date: Tue, 16 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758019793
