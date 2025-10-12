Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8AB21FF49
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760299793; cv=none; b=kZD6DvLHCiqWR5vc/HmQX2I78mFXEHiJyrADbVMDDErziLnBLvZt5aYaOomZ2s4BRBiXqnm8YiGq4M3A875b5AnuZMeBUBLlox74r7BWqGE6lbE7dOcGZqfXJ0b7OsOosmX8mspNADHz7qMsIgQdoTvhw1pdWlMvlumWHhAG/l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760299793; c=relaxed/simple;
	bh=ZKb1SgQ4tNQ94LVVI52yyIiFgDnw2pPRqIEb4AOIAVI=;
	h=To:Subject:From:Message-Id:Date; b=m4Rs0fHEcGIiPJhL9Ni06v5+ZVDo9TH5+MFDlhs2ycWOdgn4zxuXHb3z5C2FZ+XbUOOI+PCJx1Ds6ocMkzTk8OeoXBVYjGMX7vZqKIan27LnRJOeKUlTRs77uVhozo8n8uPQ9cnniJDYbarLm9+l8jWWKwKscStGAtB5dQpN9FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3Wnc1Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3Wnc1Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760299793;
	bh=ZKb1SgQ4tNQ94LVVI52yyIiFgDnw2pPRqIEb4AOIAVI=;
	h=To:Subject:From:Date:From;
	b=C3Wnc1Eu2V4j52ht7yR7+RtZtPkvOEjBzz5xrhs0zrfGhpC4amn8/aksik7KGF2wO
	 BuJtLHdEhLkYDqHQNshaUcy3nE5JSQ0fk22o5WEnRFJrEKesFmURZwzxb9xujSnhAk
	 deGzSL+Jpr/o8KRvA8DsaCnCnG0hf0uHO4IkT8hKEuOLBOCqimG7MmKVBMUGBBRv4o
	 NbYfalc3gRBYemsYsIJkIFYG3uXmYRJElQtmjucKx/qo7AeFpj+suBaGOhVkKb3ynd
	 4BGivySZjmXDP33/8i0h9uaC1Dl00vwy1merFYDCeBdv8vrr2pZAkdj17kZb0Ym5f6
	 BbN5MlkCOeZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029979357.19906.15659515203554745814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2ae5e0109db02716647a6e91aa6bf09324f3813a2c3904e467047de5f27476
Date: Sun, 12 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760299793
