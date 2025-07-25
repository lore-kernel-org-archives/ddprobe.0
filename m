Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A90253F35
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753487394; cv=none; b=BBi2dYTlLp4rQIpLR+LhgtDclnYt9mDoLnkqXmbVulHvvHoSyYKQjsXZEbq5kpgbFN21M+59lkXnDhLq2yjwjIQQOeXPFzHcHWoH+4lY6npLPCgLxzvR0aIzVfkG7+YuVx4io7ov9JzUi/iey972zfzrpmqxNmOiIXyyzbIRc3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753487394; c=relaxed/simple;
	bh=Xj9avURwPI3qlCW59aYOxZVYHwaUScbF8hVMItTGDW0=;
	h=To:Subject:From:Message-Id:Date; b=vEIVWdZYBq5H03WGNTUQTNP4lp80glrOwCir9fwnFE2moPArALo2JcfX9INI5ymI89DqJsL0AKhetKYSust0+LBg7MblRxDjDfEGahjgxa2305g13fCy9uZZoQI4NTMHtqen+pSr8IEqtZHhx/zRAlE9IeyneL8MiCfWr7sTpzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxUZxzdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxUZxzdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753487393;
	bh=Xj9avURwPI3qlCW59aYOxZVYHwaUScbF8hVMItTGDW0=;
	h=To:Subject:From:Date:From;
	b=YxUZxzdivRBBQF2CFDq+l0k/6H2X4EB/u1Hb4Y16Gt222pnESqPUkuqnD/RGoFkIJ
	 LUQ2Nm/Qskk1fH8QT6Sg3jVIXkF160TxiVnENL7w7yBy0rHNhsuvhL7wMjXU4dI1Ma
	 ZApWwNFqcjFtwwyFChtpJjH/wWcjP3S9cF0qw0uZoGd+nv5QVdNIIr2N3fujP6JACg
	 oiGxkSCu2KzjWkk+3jspVJm1gg9GZi8hhnARt01GPrKexPicrlD525O9ndtVZKZs8J
	 ErEUD2EHPwZy+fr7+ZEpJIaWcN/MHe2En1KeMplKbrewhPfw2X89SYI+WTIw22GNPi
	 9bfafAglO37hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E3C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348739357.10677.13589778555768157096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3426b2d3b45f754e077c70805677f3f0e688561fcd854aae994f7dc76f51815d
Date: Fri, 25 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753487393
