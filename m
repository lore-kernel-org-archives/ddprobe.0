Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCED54774
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764685974; cv=none; b=fA0rxnCMwg8AlpVeAmPIa33frSowr82+yvez2fHDcJ6Z0NA34GFFC4fm7CbceRVocr9SRpTIiu8JU/LiRKbjJFz9cJy/orT0aBfrh6+7a0eSFyjRBVftjPZqnkJxZikZy3frC06ZIMApsdduADX/RWVCJSUGC6rpukKQe8Rrrfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764685974; c=relaxed/simple;
	bh=XSABi8KXfN7EdWHiDEXK1Fx6PJMxAjV5h6tYjlqwWHI=;
	h=To:Subject:From:Message-Id:Date; b=mTbqusgG7WA4nv99RtYKqiCUc+A+cHytF4eEDkl1r9zCioIbObSUJmb0Jd93RVuE3JA9lMh9zsNaFeedJu4BPSHCk3/CMOmIexP5YrXkwdTpXo2VXGVQt6UuhlzX0/sTBAaj2zFnnWQ3xVNfvWsiaub7p2m6NZllgeLlayj77iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aql32lLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aql32lLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9825C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764685973;
	bh=XSABi8KXfN7EdWHiDEXK1Fx6PJMxAjV5h6tYjlqwWHI=;
	h=To:Subject:From:Date:From;
	b=aql32lLEv+sxZtwJ0thUFmJ+3BJSLgJYRCh6idqhEHR5a0eaOMNlocNE7NCoI/fMG
	 Z6leVtNBEFi0Bvuo2rwDU1KBnApR3zCnf1AHGGG5JMV3yjmWPzucTdb9YRiW3T28/l
	 yb5vBFKDwtI4zC0wTy/rNhHw4iAJh3thoQIOb/8QrXUZi5wxfKqxdd+t2wpTYfWDC5
	 MxGeR1k1bztiDqAEohMIpt7E5EJJN2prEpIL+NSt+3gwloyJAMwPYiZIEhVQcc9oyk
	 hlfK4BzptVPerZmIjvweL0c02S7xOODE0GXulLA8q8VdhIhkXpcm3dK8anXY/IBjkW
	 OuJjrh7uLfGhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E6D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468597358.9015.9979184158951386874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0967c8885d00848dedad9c18f095da5c9905c5d24ade78a4b6ecf3170002c8
Date: Tue, 02 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764685973
