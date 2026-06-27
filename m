Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB6C1991CB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782593314; cv=none; b=tELXqJI0MtQdbJfSrz3efM1CQwG/xcgu2H/yNqiT8fw/J9aO79FDPCAMmkvYSmd6YUGfmYjjnVa5XuNOrzVT4VL7aTGnbBgZ9Q5FoW9h4E6e2ljZMQii1TYg2E0l0FRsmhS8s9PHXq63TiRzJYaFpAl70PkfmHXpxvmCzmhh4gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782593314; c=relaxed/simple;
	bh=PdRuygg8kad8rtQ06P0/iL+YNf9O2wGA0q+++KwBHq8=;
	h=To:Subject:From:Message-Id:Date; b=eAFHnmL1QHjsF9+hgndxZ44QXiT3JvvTCtm4c0LfycPK8x9NH+TgvzcJtJNgxnJwNH/WIy+ClElVDNbA7TSk+/l0CrDm+c9gcJtZQEPiKxKZjSUtxkFPzngSlQSbRFAKxJWu0DbFu2t2LLH2Gng/5YG0YNBHWK2Fg0m8ZZL7nJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7KkIhIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7KkIhIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBE9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782593313;
	bh=PdRuygg8kad8rtQ06P0/iL+YNf9O2wGA0q+++KwBHq8=;
	h=To:Subject:From:Date:From;
	b=h7KkIhIarHXBJDtrSeaIsdoh4hre2/30RpMWl8Op1cl78Ygb2cbyMnXtcjWsWWe39
	 F4dApI72vyr3RmM5E2mD7ZYA8/S4cPRzXdA9x1/G54fBB5ugEYod6syOfzy26JeZQA
	 G/G3MncqWslk5lzOdt8dIZFrlyx1CKFrcgTI7WfXbKLBOFMn9XN5QiVIfLT7dR931b
	 3uhdyeWrSPYs80NcmZMQPC0wX7VIsqlqZ68sO6gNH2a7QgbZYAdn17V9ZAg8SwwDjS
	 4k6R5gBU6On6yMd50w5BgbhFhV8FaB0JwyCQO10OsOeSxIVZBORTS5XgSDEYlZTrgh
	 9AIWDnEuCM4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD4AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259331369.10085.11535834105670893572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2bd7c9638fc06a4c7950919d275485b806e5ec59feb20d8253980b0f6bd728
Date: Sat, 27 Jun 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782593313
