Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146051FE44A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792036834; cv=none; b=uwS6VWyGb7usbKGLu+8VYJXNR+CL1KywJiz4GbFgmiaRAzK99KCIv4i8qNKzgHwHxWtglgV17wAzrlrC+1qGMRernSS83SZE+2sW19rPLtigigS/6tBwtgi97MLkz/LWVy6wzIC/jbj5aZWKIlIP/vaEqEgO1OD/+hQcOGMIuIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792036834; c=relaxed/simple;
	bh=9UUJHroV8/YCwZOXPjPE/IlajI0SMP40GBQ3x2PdO6o=;
	h=To:Subject:From:Message-Id:Date; b=GidN2ewLEm2p2NYT8gEE/ZOuLeZVcbJLZ898o4zKl+7pcM4qFGjd42BRom26jtncJD9+Sjbm5DJhle2h47rZrHbF/0Fx9/35MZD5cMQiYZwFEGZy/bIU6ZCX0psr8vWxXM42GP/e0Keu/btfekF5e7ayA4UW4XOkuVmtK/HVUIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNIwmPro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNIwmPro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3661C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792036833;
	bh=9UUJHroV8/YCwZOXPjPE/IlajI0SMP40GBQ3x2PdO6o=;
	h=To:Subject:From:Date:From;
	b=DNIwmProdm5O6HeAH1zOPhJYmikVGIvfUc5cAbS943B39Q0znI+YhPg0OHDYiyohw
	 VVMx3BEC0X53NSXMrfSljYO7GHGO/y2HxZ+qBQutVcx5r3vUtfQUMCCa9wUHsu+a1Q
	 fTzYaTVSqAaZLPHkNqikXtMjhGXeSdjcc1DoXItQ08VQFXNOHKWLoH1QMCG40flRZI
	 tG80OXHsYdQx1CEnifUL9Fc8X26ZHCxjXzYAE4rxLufudD4QicIMweucUW+lEquyps
	 /Yvj5GvH64ZuWe/gjc0YE07yk9YQXYsnArOAm0H1PRY9gh9oZUuFSDfcMjZX9pzVP+
	 bFZrPSn+yWtAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC72CA9EDE
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203683369.31904.11916244849744970018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc8a1e2536b5ffb443bbbc15f148ec6c62882cdb78d23ddbb9176d39cddf3df
Date: Thu, 15 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792036833
