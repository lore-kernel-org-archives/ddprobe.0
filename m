Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4481EBFF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743499194; cv=none; b=MhKgXSTmlWBCbh76dYfqvJl/SmBcfICNS0zhEl8EFo8kx06uljuXDF8LYcbYjXqW/utMXDSlMSh6CuemGE/9pKShET0KfwoM47UZhiT5K070Lkz3z+8YgWhSjCOOGmNbsXIff580pKTmZ5zzROytLCuCpF5JtpDuaRPQmclQzWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743499194; c=relaxed/simple;
	bh=FmoXmNJLZttp8Jd+rCYbSL1pkw929J4wLH5a67WWu3g=;
	h=To:Subject:From:Message-Id:Date; b=QTmIsxGenxZxruuOKWN46ym0a5AiowmIf7pitvsC/XhRgLzt9ihryYoXsmpaY+eGhZioM0w919Sr+b+FPygqoW8oxkDoiiMB2d+o9ZOmWHPU6mSjMjer+Me6oHlDRNobV/IRDeRs0bRQnTUB3fbMHb+snCM3WcD+LFBEyqBkm8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzmF0GlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzmF0GlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC920C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743499193;
	bh=FmoXmNJLZttp8Jd+rCYbSL1pkw929J4wLH5a67WWu3g=;
	h=To:Subject:From:Date:From;
	b=BzmF0GlN1hwZf6ebKNMDQnN4FptDTZzGsJKPFQHY67Q9BQsYzLC35PKRjfTJAzdOV
	 YS+8bsfd8PZaudDaUHymkl00EMy+tZvxBKP2KLEDECxsN+KKRJEWRy+cn8IL13QULQ
	 /ONhoR3ZpPROzaE7S8wPnaaTVy3UIfwGGYdd4ryRXSH4Km2zK1zlEQ2lrUdGaBkMZN
	 YXB3FWE15fv8+1zZmLOmefGH08IUR7Z4HF8LMaOqiio7kFwfzMgiOW1Y9IDTQI5prY
	 ktFZHfCmluEIzzQpYEFmbrsSKUXizS6sScXSfW/EuKjHvr+IZDlFCLWgkE2BsTmvkW
	 6FTAPoq17k22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE2C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349919363.27549.9566724300489730987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c4beca6d8156f85285b444c683791ec68f246041b75c04b4560e8d34ad7ad8
Date: Tue, 01 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743499193
