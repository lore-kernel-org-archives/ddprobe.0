Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AEC22D7A1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775591134; cv=none; b=im36LbivF7BllfEzsAs8hAW1h3cVwc6dGUtoPbL+E5s/EvA0e1PnMcTwaXN4HaDi2C7VysGFjbz0s3WcPmiCrxefdT2+mFLBpAJvAAR6XeplwzqZQBLPy9o2qSkkGueSNLxVHD2d+VobmtiuJ3x6diocTySq8bPasBZ2vx62Uv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775591134; c=relaxed/simple;
	bh=CRnjY9VIf+8PJJBTS08m36sR1X1ustAtXZceNRyZjJ0=;
	h=To:Subject:From:Message-Id:Date; b=UvkJxCRmUYQyO8tKX1AAsA8sIJ9DLgtwGv2NwrRnpo1+uDAKh9uq2KVu9dOi01enVNcW2I5gaUlQ+xbo6CIPynwRT/3hBPezxRnM7h3AsFHqbIyV70U0qh+YQnXeqtPtw79ObUgArEWgxfSQCBGTgBhJM7e89EW4g/HQH7QIe2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD4Q/lEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eD4Q/lEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D2C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775591133;
	bh=CRnjY9VIf+8PJJBTS08m36sR1X1ustAtXZceNRyZjJ0=;
	h=To:Subject:From:Date:From;
	b=eD4Q/lErXKYS4z/nC09xLXbetpERhXzcidS5peJaO2bDjb+PZhciqBAMJMv2Wnej/
	 emYTSmqiOiwpK4uIEljM64LiTXCb+SOwyIcK0V+k9Ur0OhCC02JcxYQ9EZReefeD83
	 pUIyFnMiLUFDZN5SkoRNRLKlgogrjI9sWkPFvOwN9KEoRLkbUaODfmIzIdbMddGA2s
	 WPJQWjv03YZAUTQFuCp7b2djGYsgUHB3VI58yzs6kCfXLZ6kzo2AcAFRiuvCCxSsCk
	 Z6R4reaGHtlvwHwLvGIq1mZJ2hfHxRCNT04xRyD7eMjCvnO6SCxTo7ljYBnjEqndCU
	 TGBKwS0lkU+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F8FF5136
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559113369.29475.7069398821392974433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5236f9282d3948659ad5dba53a2982ee41e2e7630dcf378abeb67976f61a54ff
Date: Tue, 07 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775591133
