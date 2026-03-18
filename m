Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E0D3A7F74
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833094; cv=none; b=YVo3cvicMJ0K8ndIps83t/DFURSYox6/Uv7HpesnJbBuCACq2CMCYEgmh75sRpJCxdf6RLgCBiG6AkxKlhjL+N9UZludZAWumcL+uQHI29x/CLbPiQMVBjki3m9o2xEuFCIR0oWCELc5855/tdRxjjH6hipTZP40znzQT8+r+a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833094; c=relaxed/simple;
	bh=yHRWNL1opvd/yTWQ5d6yNDnXR6s7sFAz18ws8ALkh2k=;
	h=To:Subject:From:Message-Id:Date; b=nUhxNA1gplY23eP9en5vKcf3sImhy65bPJv3D5yRd6EMHGT0zp8Bs9CrHj0/NFBXVITZIg2hokPKi/GIiQL9bPxlexReu62pDVX7W8/eOZ6SQA/Y9JVxaaxz8cJ4fig+Rg3JpzyWplkeg23yjTcK49u/rjvRaP80VfHS0YSeBrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxAaoHs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxAaoHs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D894C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773833093;
	bh=yHRWNL1opvd/yTWQ5d6yNDnXR6s7sFAz18ws8ALkh2k=;
	h=To:Subject:From:Date:From;
	b=dxAaoHs5dY2pOaelJegBn+R8/KwESuPtz3wV0GOOYVqxyhw5jgQw5A14rSccI6Gi7
	 P0BWlF9NpAAFQLMshIn7Ce0FmvK9YbYbHuVW9f6A6rm0QrjbHl57hJa/r8V+slsEpy
	 HFJbtF0qOCg4xD5qwyG3cLEs0W3d0+enyo5G4U5AhuajXmQ/mkkaSK5hSJ/guu3d4S
	 wHDy6y61CRpv7/RPYWaxckaEhg2Z3d8mSjW4JHOIOdbP8unmRKUA09KxhTHXpqQ8bw
	 UICkJilOyPQ+qy2aZo8UZfxWItsrQlwBUcb75H4dUzFNWFmY6VsIvtgkEUxdlnzFn3
	 ByHkaP6QH7KPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F598103E162
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383309357.8175.12788368359264961065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ec421da4a4e492ec88364342922e308ad2cc451da3292f88fc8ab553eeff7c
Date: Wed, 18 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773833093
