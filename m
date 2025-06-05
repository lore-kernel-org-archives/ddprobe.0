Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C25D1C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749097194; cv=none; b=lFowNhZ73W2XGjBIV/buL5mZuhawIiH4Lf/X2VVQdxHlDC69I/TYAYojaoYTjEDbX0UHxSWdwxjmv6JsTTEiGtCppKOInGSqh4fs80q+rHllyD2UJd6OJju3o36lDYRmIRRF1uiMQLuaPAvWwhwSi1PboJtH2eE5ArH7AR0YiIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749097194; c=relaxed/simple;
	bh=Fb2kMtUXF/1BeV56CTPVYVripvX994i3JU57BGe7A4o=;
	h=To:Subject:From:Message-Id:Date; b=qytXa8aSOVQ5MFJtH5u0gtbqzcyE6sOlnXLSJ6eqrkaxRW/gC/pCKL0Q5QQUWlsTgI598U97ViQcvwtXY7Zb6eFww/4yzBGXaDH1B8Sd28eSyXYRtxxYipelNnhRtndEWEBfmeWfIbAHANyW1ntcIs6H+2U/1E2TGgf7ig2KUNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj5Cg3RP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj5Cg3RP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749097193;
	bh=Fb2kMtUXF/1BeV56CTPVYVripvX994i3JU57BGe7A4o=;
	h=To:Subject:From:Date:From;
	b=Lj5Cg3RP1kRneNBiS8r6pf0cVoRs/51J255/SfwT/yND0jkj/HJHeA8QU7QvBn169
	 uSq2WWjl89Xx8cQ2NjUWRv9nnc/rKY/vbvvnVRWab8KoP3TM3lWPrxbXLa1VmczvcU
	 e6xYzJ3Xz4HTQcN1ei5PSE4UhvNjBNpmgiQ/ukNKZZoV1z9rVZn/1ZUaZKNxsTOeWj
	 Tiag1IVHIzUsywR6tD8ChOE/0qr4hXr+hX/9spxq89rxaRjbx5ULjJAYEvCFUYBR9A
	 4NMLwaSDA2JgR5uNJUK17mzgJQ916ZqAa7b7s/XToLwVYDbNIIjePxW8ksaq/r/hvQ
	 P7iWdgB1F0CZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909719359.11472.14433025370432518533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0980c7c16ed96465263af529b16283e387347a1b5adebf24d4843c2df8c0bc91
Date: Thu, 05 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749097193
