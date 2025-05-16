Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AEB1B4257
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747408194; cv=none; b=S00o6E8H2aVu1bk90A0coj1sAi5PHZc0y3/mNbMFWNO3I3hKPT8ZRjbk3mW2jlTRt6oAuoG9YFU0u4vVyIDDQHw3VRxPaFALTMGdidJBYQ9GVlmF5tAnqLIN0djlL6OM3YM96YKTl9UADLGQGkKjx4Ck0hUY3iM2zsyN4v2LeIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747408194; c=relaxed/simple;
	bh=TgxWC4Z5hsT7G/BHNwLAJe8/kHs3G7giS1tgw1HFLIk=;
	h=To:Subject:From:Message-Id:Date; b=E9KbfmL/yzTZOA9tEcobWA1PSDwgp3iWh6qRuxraEYj+DQdRw4HojwPehIkzPB4Z4sBTlA+21Dro1SCDj86qusorCnHkdzRGbPYZg3kfkhb+9XMDjSsIs4SBGjRhRRHK650wL310xesCGI5yPLi8jpSNYtDWCCG7wy8hBw0HxK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2gIR0XY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2gIR0XY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B8C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747408193;
	bh=TgxWC4Z5hsT7G/BHNwLAJe8/kHs3G7giS1tgw1HFLIk=;
	h=To:Subject:From:Date:From;
	b=i2gIR0XYPqlFOIK61wV9NGDF85VeLa+mV8XrFDt279DwyBLDoiosNAdZA6E4oaObb
	 lVwfVCYhUE9vf8sBx1rN42endGxvRSOZGnzXVT1Fsn6IeU2JrzNt+8imoUxwJEEW93
	 2MGVl6tPnPKBGWy+1FKNfngA8ZFPVNoag4Qtl2Pi8YjfEILn9dXENoS7ATjOyZa5eV
	 QckBIRwTmrO2EjrjcQdSekErKWECWDMllS6vzpIqMIhizycySgAiy6qhlfEU3Q9B5M
	 Kl7bCAsEUWnNsE6Lx+EWQJ/PAzq0HNQi0LzFGAPH9f6Hx/BUA8f9dOogrDDNntF93R
	 lTsNGvoTRe79A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED1C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740819358.9324.17838740634816550476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3276b8605f1807692faf9d85d458c5be96acffbdae0782661ba5e7ec85bb42d8
Date: Fri, 16 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747408193
