Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7F571753
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718015243; cv=none; b=VoEb89KFx/uJQmuWUw2RWA3q0Z3d7p3PfU2/4iKYkcMqAETxQwJdjljb12mSeZ4h4NIv+cGCXWe4pluRO9Zr0LSCrX8zFIDK0IkCUScTF5mEtT5yIVhuH5HREkJz7KDbBLs5U/WlmBD5vURV5mG6hK0+si8JDO32B9j47HUnGAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718015243; c=relaxed/simple;
	bh=uI1VbtGrFGr3RgLyrKtwq+dWlw6NHmrNH9dPcW5Z9VY=;
	h=To:Subject:From:Message-Id:Date; b=OnbOHWvquHy37oQH8+V1f7hU865xasS//9VQ8/ppdQVwBAnDcXaHSfnvddv6sbTxkl0ofmaCZI+3kgtcADpx7/0fEzpzSslDi8yPplxkPEITxBI8cHg8rClG4mZLK7fYJJ7++U6D+BC4KNl9ZMbWoY5l/rJxbTcq5iQnP/kJM7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pos0q34w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pos0q34w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4963C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718015242;
	bh=uI1VbtGrFGr3RgLyrKtwq+dWlw6NHmrNH9dPcW5Z9VY=;
	h=To:Subject:From:Date:From;
	b=pos0q34wiDUCs1P7wBp5Q66/wB63wjY436t/SmTdbMUyzyAQIMoUjyUc/nZQHE5xD
	 LnqTSZ8iOGMKp0BiRIvOf0STNgZ/H9AiLwqZFI2ROMcFhG7Ql7N3DWgTTpvcSmjLyd
	 BmMRAWKoZOhj+UQpYYTcO0phkWuLx8gyveVrez1+oJMplnGsXf+v9q8NcVVE6dolVa
	 oLwRoCSBSkt/330r6hWyMLez/roBDUgZi2sU5Enh8nzimVwiveIYsnKRpM+IG/m0pU
	 HwSWLv4IYxlV/F2p6445vuY8gvr9mnAGohS4mxnIQZyBtSQ4s9hMLKfLtixW3BQ0MC
	 6vFL6Cg7HJo4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C323AC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801524278.28253.13468301326292470465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1166a360493a6fbbdd5f3899aec43afa30e2a09df135a38c4dd72c3a24e236d
Date: Mon, 10 Jun 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718015242
