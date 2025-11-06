Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0152C11FA
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762412994; cv=none; b=OUZKfGHhYP6zPHyxhT5Y+AcgjHTPrNXx7Efy7PZHxlcGsujdJXvKzD0BvQSTd/SWwudTrKOpeQP0vHhJTb/FlI+bTggP8eO1XAIWL8Ft40sG3GQRNaklWw7KvUPgHRm+TpRCyAmvo2oTG+fyw9h/Xo+2sU/cg/FiqK7OsS07CnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762412994; c=relaxed/simple;
	bh=tlWbPaXvTi/D88NhRSeF2SBxKwkqFcHmV/RwcOjPWwY=;
	h=To:Subject:From:Message-Id:Date; b=Th9YPUMD49kAaJGBIDKc5DsCTcFy+dKYDJjtgtDuNo6ZYdK2jn2sq0ALYqg6ZSN0bTscx0n/2+cA9TzzjZiGsOjVNuUi1ZAEMlqjcXuWaGJJs6MEEZm1mxKNPIXQher2BQSddwoUT0J6UiAZvtpnPVIYNB0kStqD1rxqyyr80ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipLvKeIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipLvKeIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8332C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762412993;
	bh=tlWbPaXvTi/D88NhRSeF2SBxKwkqFcHmV/RwcOjPWwY=;
	h=To:Subject:From:Date:From;
	b=ipLvKeIN6trw9HCKROBwn+2X2oNABD7fSdnywxrrB3BiZ32hMU5nhAvgYyzKrtSPP
	 NMUbv/F0BITPGnQKiz5hUsEj4EwP/dr0nIlNpyw6ZjB+0c7+lS2cDujS9/zo0FhL4x
	 xxOLQE6yIpN0dumsQkexVNQU+lOSBMyIoor3hOp4ID9t7a9VCLxpHZ97IzyuqxPKdm
	 cApuNOP2/WTAiTZn9Ulx+UndfMhsT2gJwoIuvFOaE8wscQuc3YPLHWHTBKxbuBwlbT
	 0AlLAGcsifYev/WO53/n80GNT5pe7SEhti9Zf5VGM7cOsT7r1v9+x16effml0CmG2K
	 h7Owf50BazxEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99607CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241299361.6400.11667590837603459339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6bd476ba6c735ac7da0f185e6a5be8d597f9a1676e6884fc825d9300c1bf0e
Date: Thu, 06 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762412993
