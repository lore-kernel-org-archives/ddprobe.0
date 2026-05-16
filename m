Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FA41B808
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778965234; cv=none; b=Ehd/4ts0hODZ5m71ZdPVDFt+9ucqS2mVIzBfEd9wvjR3dyX11bLB6mnMxSITt3EvKAXP4tKKoxk/Cri6CrNgod+eqxpd6d0xgwt+rTkDQZt/j+W3zwC3XzCpBhpTXaIkZ/3zNzlofV1GFIrUBjQyEKm36KIlBcuXTp+0SGXH7Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778965234; c=relaxed/simple;
	bh=ePeSGMij0kvz8L/fv7DTz1mQNO1cLKPy/GWxWE/n/PM=;
	h=To:Subject:From:Message-Id:Date; b=svDB6RDYhv4oAisPXOy43/oCAEubCn/ratDyOg+cmulMZr+m3IY3I3cBTFe5Lpua04cj9V1QVBS00c7gTnXCUkPL8sC6V69qxkaY5EN2PTlkLKVSGctmpzvkd++ICOE0Lf4p/Lid+zhif0ZiplRfy9vPDAH7SNrqdbN+vCRk2AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwH+RhMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwH+RhMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD985C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778965233;
	bh=ePeSGMij0kvz8L/fv7DTz1mQNO1cLKPy/GWxWE/n/PM=;
	h=To:Subject:From:Date:From;
	b=iwH+RhMcq6ZEo+7eJwZQm0TRYAcUSo7XP+Lf66qmIHtTSfrwBwi5E9eINxSAUPTRL
	 cZhdMdk+3vYLrGfU4x7xHnCSEQX+h0Zo3ZohJsDrtKprYxVLVu2ON3O81RFNjEu+uo
	 3b6lGdVUmN7xDIE9e8uTvuU+iRGkp666o0afo3/j7uq+jKIjgSsO38EXAjx16dbA53
	 NesgqwG/mv7psOHADNUqrGPIsIxBzvN2t2BSgOW20qUAg9KIkjHFG4bDDY4RAhuwqR
	 EDr7YzDB+uz1ngEhSCAzZnuYabYqxBiQhttR7MaceXBqcRYSO6Jxx5AsRmAAbGPxEm
	 2uaDwDdQ28SEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA990CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896523368.27513.7029726938708186676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933b5cd9c6bb6a27af2d01c55a76a4ff20adb26cf5f063d54330c6a07bbb2780
Date: Sat, 16 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778965233
