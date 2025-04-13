Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3412F134CF
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744573194; cv=none; b=uCx003FWWsg0btCFuq643hiGTEtdcCYpOUWgZFuono2gZWDVlP2O828FtbGOARzi7KEF+XUH+mNE5+p0cGBpQ+L3yN5ELekweFPf7Jorw4aJP5MVBwZfoQM+i8gQj2mKdnA6aDPh41z0uejEt2NrdzEtOw6DfClU2RN0XS+22pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744573194; c=relaxed/simple;
	bh=7Qyfeoh4rDEmxaXrkcDP4V7KCFdHvdHKVf0ynAkO4EM=;
	h=To:Subject:From:Message-Id:Date; b=lpHvw6c4KNb4kZ2f4rlXgEoJMnTdLPFjZZ93VhRaJkiOG8LOTkI3FrCzWge3ZR5X/pH6mOTb8AoVFXZzE99OX0jJt6JedOQkE7AsGGKBFagHDt8ZKeN5pjJHra6csCB0M04UrUuhfrvNoBJiLzAi3H3VnctqVbzOjDnNh90prc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCrwGiYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCrwGiYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744573193;
	bh=7Qyfeoh4rDEmxaXrkcDP4V7KCFdHvdHKVf0ynAkO4EM=;
	h=To:Subject:From:Date:From;
	b=SCrwGiYTDJPWqr3D6ONQ870Z3MV9yDp9XLvHDs8E7472Ll1P+aBk1oDctGtQ4ea2f
	 OgFR/pNWsUXUl9PcR2Vtb8pmf8k9KTzxwrrMz86BNKywjsb9flrPz9ZSAOLUp1aziA
	 J9xCBl8sTn/VgSZJr2nsNSY3fuJkdB0ngTb03PrZr3I5fhY9684ESuee66LTjCMJdx
	 UQ+xJJW5tK7hO8YAI4IxyXKxbpqaPbD+17t05BVNnKq8tfqIWmdR4aAWSnAEakk3nk
	 ml4R1djRT4iRCP6f1KqD7k1diBvvOyRQUkDWfNF+UooK7/XDGf6dGGKxD8UjR5CUGv
	 aF3Z7bCe1YOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938AEC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457319357.23412.12766107754783105532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8314cdc270834637179e79eec7cddbfb824f13f72525a219d0f0914f587b57d0
Date: Sun, 13 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744573193
