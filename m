Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88D947E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724379354; cv=none; b=P+uL1JpvaEQUj3kNEw0Ak+G2NQmNbpTUyR+TKcssaV062sSqpqJRAS9/IUfIcipv28gm9s8EnVeY09UAdcSeNCwRTIqiltAFbRR74bci0Pul45awKIzL7u/XgAll7dyL9tSXK9dI9L6HlGzyj/fHe42NlF16lJ1HLPno7pPSpjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724379354; c=relaxed/simple;
	bh=N/cyz8bdmZ2/Ft/rJx/NDdwsnR0XIebkJivD2Pod/m4=;
	h=To:Subject:From:Message-Id:Date; b=WxpEYQ2Z74OcSfcIIracaKNK+gtlv5UETCimNLu2vY3KqoO10/6RuvRk8PTm/E7J5mE7/jRqoBFNmbMW5VkkZEUk50bitzHTDwMBHSmo1ZprcA5Q0aSd3bpx9X5YKxDYCde4yllqL6f+osb1xkWRkVpp8cKcJSS+e48ygdyDxKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erB0Oyik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erB0Oyik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C75C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724379353;
	bh=N/cyz8bdmZ2/Ft/rJx/NDdwsnR0XIebkJivD2Pod/m4=;
	h=To:Subject:From:Date:From;
	b=erB0OyikcTWNC0sOlG9gaBfeouTpPc0L1z4PCIGDT/+tmcL6sAPySymlfBN79rb+g
	 CtIwQCTEJL7KbeuoPvQ/NRK4ZDrGwHjGQcZQulDrenUkKdENV+Qys5xJfVuI/Gx6sQ
	 m7cwGta1goFj8rl7MMPEanSuHQ0flL3+5cYvhzK/aJde9lTHJM9mBdmUcONs1Jf9bo
	 EkR2/Hz9kcHC+eMZhhM1loENi5ajgF3cyNYa0bgKGU3+A+7tpK7jRZ9JuRuWMKCrfT
	 IMhl7WIlg7sTwN2/j8QPuE2s471VBlqqnjK9BdXNFUtoNHs4xM5ImbxRmUqsx7G3Nn
	 g4NPElq7XvcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CDC531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437935361.32644.5746736917668829703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3103c6a33ffda25e3a34dec1a711ec52fbd8665ea08c82f8e59f8f68110d3746
Date: Fri, 23 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724379353
