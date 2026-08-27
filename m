Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2D03B3BFE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787821834; cv=none; b=iqLerfdS5ov/qfWGT97tjeb8L8dDqIxvkqrsgR2tWWljEfB+ajHs5eFW2UbmmN8ZctwrIyZZZzN+f3ocpe4X5VvHIAymxmo/91tpvWU7rP4SJYWhGL4xcZ1QUAj6KgDkirI9fYoXemZ2ZDZSaX6yA6eECYUdL5WEYXZjye+9kP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787821834; c=relaxed/simple;
	bh=JytlF0WvkBiXtJVDlU1H0tcySfEfHiMH9amKzUglIIk=;
	h=To:Subject:From:Message-Id:Date; b=P5unkD3jVDz5g/mI3kkdPlrVriq7d5YCB2ytIchpwk3+hNmKlT0YTqQ1kCEIXMmGNU2BMVwVOPdNF7MShlySX+t1liP7+mIEahYt2t8GMtIcGE9Y5r78K+0zkO7omtplAl9YXo6EyyUEQvPTZXHE0AJqSpFcka0UXS5ZWdIUUrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJVo8ovQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJVo8ovQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA53C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787821834;
	bh=JytlF0WvkBiXtJVDlU1H0tcySfEfHiMH9amKzUglIIk=;
	h=To:Subject:From:Date:From;
	b=AJVo8ovQ/8LNqKhScLCgsvMRtr2s7zywMPOQbkyuA+kaOwjs8N+sA8NLQ37ABsSrL
	 TI1fgp6j/35JjzULBr1FBX9jpo3RSkcCH/llMgnv80JJFSA7OkbKmESJySH0oKdPiC
	 m+Ht/GMtGhODiq94id9P0CfvSV0zl+p/dYXUDikuzT99s0G0Q+wAoUnsZP3+nE2H4Q
	 juSVkiSkVI8dTH+p98ctWdhSeA861uzOGCKId4IBaHuOGjArzyF0iYBfxwuWKWcMMW
	 r06GqVSZSVXMZAxH3pP0/fPWe2pYrvuvckZCFskAP6kaJzmVea/FApFy4pUI4Pjt5g
	 5VZ1NqxJzdMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED64C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782183369.32662.7517028261949658590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962b273f89073909d3e236385eaf10df1a72e55d5f4d91406642a2e7bb0b67c4
Date: Thu, 27 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787821833
