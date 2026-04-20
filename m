Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498CE277029
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776676654; cv=none; b=iY4Mo7DPvo6UiZbPSMovlD5osIv0MPCfg0Y9GqRbClCiDLMbbhwMtqua4JKm+DlVy9vv+hiyrOwTPX69/eHFQlQSpy3jr59uvKy7v//R0f6sWxfgw5xGjQZfnXYsVSXSiB19B65ROrofyKVaff49QArhJWYj+XiDMnKLkTidJZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776676654; c=relaxed/simple;
	bh=Imb/EOCnNvEcdAnU88vMgVG8JSvnmluDy1tZRYi2QjM=;
	h=To:Subject:From:Message-Id:Date; b=FK57VrhrA7kWgwaXx63FTe94sOChf/6qTLfi1uFNp+a9w08o0eabjNWKo7TZAypNvR9KjpXY/cHviV7uRDuRbvOnTNYyyIfBs4Nhm/Q2xNH9MlRjQUG5UhhRRfZQFWXFXY4KUA7zPXUXQF48E3td945DKSBH3HOmXC+p625lwLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xeyqoz1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xeyqoz1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1E1C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776676653;
	bh=Imb/EOCnNvEcdAnU88vMgVG8JSvnmluDy1tZRYi2QjM=;
	h=To:Subject:From:Date:From;
	b=Xeyqoz1fw96Hsed/wFU4DKBJsH/a4dNBZ/2BXyzSbum5lZ+DWtzjmxre7ux/d0Sro
	 YPThaOF7Ncd1mgPkOBmHzjdXOA3F1xKccjpxPaP7/zLp4sZ9Jq3uUVJP5UQGQYUfuy
	 aFO1J6vK59nmWiyS3IPNkieiaWKHJn2l7MqMXg+n5CG2XrHJ9ac/zoiWfOt/AC+5rS
	 12SpVWSs16MQLIuNftcGKNX/pV9ObLBaiIjHp4fecjXp+ZBxu5RzwGas1STF1Sacu1
	 Mw8nwJRoARcDLu4vhW3xyZB/9ijEzCSmoRskNxmDlNterajmKmz+xTB9BCFnz48UEX
	 nf8QbBcxEO7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4560F557EB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667665372.9924.1015449582396680162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52606da9baa83d6024ef3a5fedec97599c8971b29dde5c85daf199ce8dc5ab24
Date: Mon, 20 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776676653
