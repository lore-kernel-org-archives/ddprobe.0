Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227032AE8D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750516794; cv=none; b=Lc3ANa1rh6YqbdzjHi0QtcdzsM7YCj00qLuPFEuj/cVKUjpmKfWNy2b2ZURyMgsjb2pgMc6keVWB3zX6wsub46yK5ncjlz1SMIWD875si4sgpuMuWu45K4QKB6hlaeRcIlyq0vQo+YQBTjh0FoeZco86Y/m46315HWpqWJx370o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750516794; c=relaxed/simple;
	bh=adnjv065b77Hzo1Bf7soOeFysaoNpHpzkGmlpebe4l8=;
	h=To:Subject:From:Message-Id:Date; b=c0jt7X9LLVuwOL0tA/LkME9tqa/cQaNNesXZZgAEPlKWWdRyG8+/yLw4WzRrXSjLn6W7i1yGnlsBmn+TaY26BkTsg1KBVJx3dGFBJQXPHH7qUIr4IFQtjTO9NEEVPII9FtktUN6XXWAxkR7Jhy7Pt6Ooukg1DpWP5V7XUN+I/yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSVI0dtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSVI0dtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750516793;
	bh=adnjv065b77Hzo1Bf7soOeFysaoNpHpzkGmlpebe4l8=;
	h=To:Subject:From:Date:From;
	b=uSVI0dtPGOHxQkeJfqnwCylyM/e0eMuU1GBsgBfMyf6orMBogZeB9xNlsCW9BJ3DT
	 iRvDMZb3scPcZviaoGxdRD4b/r82Wdu4hFtB73QpKfqrT82StEBXaCFpyhzJoThJXw
	 SK1BLsrbcIaYLc3EAz2YgafGlSSDlfNKn9wFWsBUvPXVn57uxkkV62FB4im5rj+lIf
	 wJVtFZsfFfEVBHebYLvWeuXq6dO5Zwwyp/+q0AR5lRuT6XiZo7EIcCtXqDGyT7o78a
	 b9JkFM9NswKnM7MfGEEOQsJtHaVycaM79wfgiG1mMj/cHNwS+uxKhXxq8k5f7Qhgh4
	 XNKz4nOeP0s7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB79C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051679357.13316.2413930312447076558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9a0d9049d2b5f7353e7a3f4d06134c8de4731e4d304b2b125039295a484dc9
Date: Sat, 21 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750516793
