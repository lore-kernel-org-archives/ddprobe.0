Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677C81FAA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717675643; cv=none; b=RtGlQEJ+nrIWrTqZ5gZU1EYLQj90SVZefYyABDiGU8h3xIsQmtrTv8qfJlBJ48L2Nf27jL4hiBZHpjQ3MKwNOVxsNHSfT8zbAoYWSlyRDkjH58JDN/4KiO5CHHT8UXv1q43dMVwaukUY8C+xCAX6clndk+a8BkKiHdsxueb79AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717675643; c=relaxed/simple;
	bh=QcsrgF5xTmtXZC6PrCfyP8VvKWOiTDUKoywyo1UxzAA=;
	h=To:Subject:From:Message-Id:Date; b=FZDmsNGOXbLilvepEWMJorpJT9gb7xU5mJVajX9EfSPAtU7pbBAy0CWFY3g2WtYIq9F6kOs/TbxO3fXu5K5GclhdR0eB8FLW8UYLfrUjFowQZiymq82+nAfxqRa2AZWWJc8F0vrh2xCvf3FDmnbcpRXQAwrmB7SJ5qljM2O554M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esWdo1tR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esWdo1tR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD10C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717675643;
	bh=QcsrgF5xTmtXZC6PrCfyP8VvKWOiTDUKoywyo1UxzAA=;
	h=To:Subject:From:Date:From;
	b=esWdo1tRJd+UX9HE8Ey9KaVl2TQ5VB1eBF7wYFCcQ0wbbzsvWW9NiCl4ePiGJQ9vV
	 GaBNzV4zWOSEK86VzgWwCRB7KEg5lL0i/zZZsddu3UIGL5Q3PP0gl9XlXWLnjledtE
	 6ZfJmthjgZwy/jnC1Lw05lzJ6gORYAFwJeSLEkpyvqu4HPl+tLyhr2Pc9KyzD5LJZh
	 XM9P54yLFTgwkkkIKapBB6Yn1ofn4rhLMu9dUyoooQeTQi+84UtvPeGl9WmhxWAqQ9
	 cliF+ZQmtitYKJp9kpHicTPXBXdQkeZTez/hNrnPrxPtzDC1ZSfUg74l8VqtHnXKiK
	 6NrYwuGRCK7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69AEC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767564286.20198.571052615912432090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7f3baeb8ec0a2ce8cd2789a4d8cc47c15661e60520022f63486f547726b14f
Date: Thu, 06 Jun 2024 12:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717675642
