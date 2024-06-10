Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C413665D
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718048303; cv=none; b=QEPwpciV3+Ig1kmOnxrM+DqRnBon78gDvXly1340AvUFtnAczwmWFt65mE3mWD49lSojSlMZc+vUGFBaeypXUUvFG/VxijtH/QYwXik+iG5uY4tv7aqPvvRHxXxRINTbIxH0k9MbcHkNowwndXSsQuFSu47+Uk+au2VibNnzAnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718048303; c=relaxed/simple;
	bh=dukwDWVvkcY4joti8ghSoZxupPVVX+U1+XNPqhtN0mU=;
	h=To:Subject:From:Message-Id:Date; b=B0RcS80MgNiabcv5y2++WzC8AmOWTS4a2/KHW+AQWo27b/+DRKFsuBdIQTLbddA02hQ7K4ozYibqMgwrPIOMyj+IazH2E4Srd61enj+kRoT6AKggBXMpSE6Np2xS7oYcyasYkyFoJnjEBuwgdSmOcHGTrevca8JAryf9asbe8FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5x7zOPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5x7zOPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5647C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718048302;
	bh=dukwDWVvkcY4joti8ghSoZxupPVVX+U1+XNPqhtN0mU=;
	h=To:Subject:From:Date:From;
	b=C5x7zOPAacs+OnmXM6qgTlPCSLrMXE5pfvhu5tuQvvrzd8QcHY2J3eWzK26pHWAgv
	 koihARHpBuRBU0r297rHkxwTa5EHRf8z1IdXoZ93iVnkEnU2KsFoeMhqhta/RnFZZg
	 3BORiTO3Ez0WxRG1S7va6xCSUFtWowREymvDt3yT239dCn4U8svOLq5+oNczXsFkew
	 YzW/UTi8R1dAl/jM2tbzoC4bRM4ZVwDX85kyygEjn/OkOCDgOxa291NEdGU/ljCjE7
	 UxeDrzk2M6bSp7bpzvAAH7Wr07f+rVJ1nVEQ9l+OPEjY/bpR/20u/C/d+kHI60Wrh4
	 vYDp5hTgVPI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16D1C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804830278.10548.17659258832084518967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af24212b2a0e8eb963701c23e0d89868afddf04dc054b25054cabfb63b2a2105
Date: Mon, 10 Jun 2024 19:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718048302
