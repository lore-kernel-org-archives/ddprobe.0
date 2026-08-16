Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF3B3E3152
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786918234; cv=none; b=P/DoElWApzLRoQEm62mC8TFz/R/n29AGrwT0sRS0+YK4iHGRgT7Rjug9XNOnUWz8TfGuLmS97Rlnvzg0DyNnHuidFDsiaXE0bkODXWH6YJIpzZ43Wi7ueFIjxsbmcoLqWyIrayvbIPEmavPVX3MAMJOvuQW3hcEUgFHcNZhVo/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786918234; c=relaxed/simple;
	bh=TRbLGSiZ1yVIlIxkXpHaCLP9jO6emVYZTFH79DDlw0o=;
	h=To:Subject:From:Message-Id:Date; b=nCIq26486H2KC8OjpImaLt/B3pyBdmEZPfOUJHcKJ2RdOENiZfJffoN0t0JLT9tjzZ8bcwgPZluYLm9m48viwEvrT3mAP2cGkcYF5UsOdGtOnWdwFgxnWyRk3hueITaIHMZFZeJ8CGGqgXftRMYUcs6jUaoM9b8Bp/TQd57uDnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyBED8qC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyBED8qC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25DAC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786918233;
	bh=TRbLGSiZ1yVIlIxkXpHaCLP9jO6emVYZTFH79DDlw0o=;
	h=To:Subject:From:Date:From;
	b=TyBED8qCsuCzC+InE8wpUQuYE3budcAfzRJKD1eSD4wfcpcfD5hMCR5n0+m9PnbXS
	 4tQKwFhHWr6dID0rETkYxSskmskvBTzAG7p2/b5qUVTfHvjDWxpnxXx4xJjPqz+9MB
	 x2Y6Er9AkzoiN1eRZh9TDHVnKmI+iB0D5kaEx3brEX+BuC6CWh+NtMJxA5RxCHgvHh
	 mLYtOBAA82IhDmX2owNpyFKJV+qDTevVS60+w7c1clnzHgVsHntRwI444T6XKj8g2e
	 dmui8dF4sLcab4g8UibsFntRj+Fd0zevItpWUoJ9t4EK+E4lopeVaHxcSY+gtyjcof
	 sJRpGnZ/6ns+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F3BC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691823371.23652.10079262306898007142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41567f2a038d25d6eda6767a3d9a48f8227f287bb91911b860b7b1efa8c68c66
Date: Sun, 16 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786918233
