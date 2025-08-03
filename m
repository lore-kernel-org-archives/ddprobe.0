Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458D1DFF0
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754257795; cv=none; b=i/J+fOBLILcQyZQeJzSpxL+joGpdD0BDKCQ9I+kPJJIdimG0eAVIHF346tJ2xIw0AwuCzEDDYznkN7xmiQyt+cjKQsMKXwy6zOGrlUG2HVdjqhgNDgyjjquGdaAJ+lAAAN6q+9PSyoKtkkAkZZCXHDPNFrlWjWjakdeekqrGWK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754257795; c=relaxed/simple;
	bh=loQvFildNJoOnKY8bQ4PnReX/vDvjdOJMz2tq06cGpE=;
	h=To:Subject:From:Message-Id:Date; b=pvqlGZjR2E82dPejJME5J6iIHV038Ijo3NapblXL/KgMChPdT+eQvwKm2tETQClmgWsfEQ3sBXrIG3QsvHAEjEgMPiuhTvKwUyfUiOicA1uO0rvQc6+HAHr66OlRgJowJnuGu+I36O/RBXjysVaM1XA2NkcHQpSJNShYM+7dE68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGxhi2NE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGxhi2NE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A998DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754257793;
	bh=loQvFildNJoOnKY8bQ4PnReX/vDvjdOJMz2tq06cGpE=;
	h=To:Subject:From:Date:From;
	b=EGxhi2NEhr4jzzBPKx1rF9vwuzN2mqas2NkH02tF8UTiWbBdpjja+B1VuzILPJPGT
	 D7NYpqgLk/DIAC7AqidFE1ZlVhVE8XIcIQo+IKayzSNyDtg9q5155l49qPhGvRH/6Y
	 EMmQBtACc3ZgwHHksfi5q9A7h3oV6uuceQ7xdnb4y8R4EAC2PqgHR6d+r4zs/Ec8Cz
	 /VL+ILf0G6AwFXXbE/VKjQ4MG325ybqy/FBHkho7U7oeJOmRww6j9V6wyiiYci7/1B
	 NoW2F3viW7vsa17rulz3+SHB+Lzm/W6kVjsRd8R0LKtuEjgsk2HuD44ciUw6+Qgseu
	 KaHd1GBlyqjQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660DC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425779358.25559.15384268478902000032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7363175bee5f760f5ac443d8fc044ad0831e0855b1ef0a2dbc8ca5579f192671
Date: Sun, 03 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754257793
