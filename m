Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4620330DECE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791194434; cv=none; b=UMKi0qi7cXNbs6IKaZ0g8qYhoD58oQOn5ie9f/AtVzCgHANHzHsDWoK278wYcxo/WIOdJK6pK1fh+2wR4pehJkdDDLxg4utaCYz+6QEf2J7a0KX6324SS3jmiyCJrlfpXO3WxHTy6AosI0Ri3X+Caceaq0/KbiOPCGT8uyAvucA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791194434; c=relaxed/simple;
	bh=yiprXjzLDI1oQKjJpA8Sz61jid2yqtIYTkeDY0+twk8=;
	h=To:Subject:From:Message-Id:Date; b=ax2RSzYGA6fGM517k4QRU8e35CaWOYnBsEzIRTzcyI6diXW1kN5N4Kn2ADz+aE5zuDFaZdJp31NtoqzdNXcFccSj7i4RIHXcoaytihjr5ub+pDTLpMilFTOoPqlhHnWsGlyX5XAE0rxgu15eI4PIJnaHVtSYDynzE2f7BzTZl/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFpbXH37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFpbXH37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D204CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791194433;
	bh=yiprXjzLDI1oQKjJpA8Sz61jid2yqtIYTkeDY0+twk8=;
	h=To:Subject:From:Date:From;
	b=sFpbXH37BDfzAXjLr0HjYqHqsPC2++EooMp9M4f0deNNR81ZFC9rwU8FU+0DHkdWN
	 5/h2SAe5E85gDOu6RL2O5OAPSu2Dd+CwP2EwPZ408g7dafbbElBPGeD99KChu0Rrn7
	 zwpG2EvACVwzLYdlcdp6e+yAfOXHS53OkBEJHnKN1FwQMT/YrUFAiod5l6WJE5xS35
	 xgDxEhurpZOPjTs05QigRYpmGSsDlmI9yoESxaphTI6k2BsyDIuPD9xZppuQK7KQHt
	 QnQA9eBpsGRo1EzRHsNj8a5cJJ45U0hgUSZczJMz/QrV0J9Pdk7/0k1+iPd9AC8gqG
	 Wp6hU10KkAsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE340CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119443369.31007.7338660648668393467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3e26ad29bdc07feddfd374e8eb0f697a6ede16b9f8f67c840e897e603ed1e8
Date: Mon, 05 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791194433
