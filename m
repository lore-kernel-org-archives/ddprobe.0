Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86A22C21C2
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755126593; cv=none; b=iNlqvRxgci+sl7lF5fUzYv1S4OB1vA8IZ53I8pcUmAm4pJQvRjOxvZg0jwLpjryxOiGlkEPRoOJZPLPrn6taMVwUMJ8Hgkvdg0wJxQltIi+dNNgfFM0lsYGE3WidzPx7pE32XkxcrwKW3SfQY4GkbbWyDfAdXChCY1PXz1kKQPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755126593; c=relaxed/simple;
	bh=TWJsSF3as9LygGIQzMspXsR9sIvNEWdYer+ISdqofc8=;
	h=To:Subject:From:Message-Id:Date; b=pg+3RAQgGRl5rRnezNz5fP+Ugs4aTcK4BrK0NrBtwASNQi3NWZrPVXYf2kXTKCqt3D6wiWRYHmAk4nghb3uqwHbh+0L+hb3b+B2tLga10tj8QKM6UGaLvXPZgTIUdKQC5GQjkHtFTjL7PcfSkjYODViHfuxbDsDg6EZ5LL1LaaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd+XDXKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd+XDXKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D848C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755126593;
	bh=TWJsSF3as9LygGIQzMspXsR9sIvNEWdYer+ISdqofc8=;
	h=To:Subject:From:Date:From;
	b=Nd+XDXKrb83euCftQUHm1gswfFSzp/2dItB1OEsHGoy8DG7xrLyf3iUBlaugpzfrn
	 WEerK8u51qXfdmIRsAR/Qi7jHg9gCzzL9R8JghxyOj6fh03pBb1JiQvQ6d+Hck/ylY
	 kETEUfCODqW1vjWOQ/IBWZhYox6avrPdnKX8s7OzZyz1od8GXiQ7cG5xjEEm4jVV9n
	 1vRrXKL3b/WEqEVvg9c2Xz35T5b9ZSuv+Y9zo9359foBRF2jR13Tgb4J06YFItNbHH
	 SZyv1qWmeIA8GFDQrHYXHZUOP/3bVPABmCsMk22Ez1hdRLkqr7OU2V0TEl47X69oRi
	 mLdutUDDXsRPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF7C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512659357.938.12685710007318122084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8708e5c084038f7580ca15d2967924ad4ab9ebb8c61064ee55e519f82caf05f
Date: Wed, 13 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755126593
