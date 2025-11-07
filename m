Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CDD2DF701
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762482594; cv=none; b=sZ7gUQikbIrCj1S7KjqZ9oHc7YalUXMRxiXM9ylBrhhaVG16pOstfiwGOmN/M6aM6LBOk9TSnYQVZn2Ey2RWh6HSAtxYrqVUKyTBfWdRkv0OxnrPb1RcBTT6xbMRU2tRnM63t0E/wkwpUKIoA6c3BO/+SBiFeeKNi2yu/CMXk1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762482594; c=relaxed/simple;
	bh=J5SMIUvWElsDt2w6DyNF7+lHKZ+73dzW/iOGRWLdxZQ=;
	h=To:Subject:From:Message-Id:Date; b=VnbrGqw4t4s47mqBjL0sfVZwOR/hLIA51FT5Yx453qKPPDEvDy2nGgc5d3WnJtpNfoGFTvM9BfvKTckGZDgVaGKlrbt/jAvm0PbPTJQGWPN2gmMUSm2N3Sediew8mNE9l59IRwlfIdkizMcEnfwmZIf2QW7ek87+17+0V+J0QuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhEBSUw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhEBSUw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4F7C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762482593;
	bh=J5SMIUvWElsDt2w6DyNF7+lHKZ+73dzW/iOGRWLdxZQ=;
	h=To:Subject:From:Date:From;
	b=PhEBSUw8FxJD6z0kMAx6uFEBdgME3crWJgYsnmAfutFGl3iOLMQBcF+olbO9HGNRx
	 Ebzcw7q1PTfd2CFCtqyYCU07VkKz8D0XEwkcCZtf9ya4SJAU5Koo+hz4/SxfbqlBL9
	 vQBy9tDKvCasMhqJKCbP1X/U/Fk/4o0AP0pgVanYhe/jIfIPDFihm/+KhHX+80C9s6
	 RGG7iUnnuyo8LqE6NUnEeAuctf6V6p5wvp0LlPSQnBeOaRh0xdDgHFciFQIYSrhN+Z
	 aDFjhIXRI9MTHPHKXaSVLObqyPP+05ao6jEXetGeKQJw6fzal91ptH2yFSRAUcNxgG
	 vBkiYQXG5Oqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034FCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248259358.25576.10181828181065387615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986a2d8f80caf5ee64e65802ede435ebb9e3fe38496d4e118bd877cbeadf5aa0
Date: Fri, 07 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762482593
