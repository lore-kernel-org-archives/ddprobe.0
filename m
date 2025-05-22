Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF6383
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747885794; cv=none; b=O7NF+YToQ/pUTuS8AfaksvXp/kCAljEto14KquCVImaRqKAl/oBJvsiG7W14qYjUW+hpd3+VL4f0Ea8fqw6Ly07Ge6yNGW/5Tr3M0uGtmZ+2XM1lSPJJwcLR+z0fCRsZzW/9cSGGc52ImLn+ZQlBvAwnIj93WLvjuxnQJQ7fLdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747885794; c=relaxed/simple;
	bh=S1RY1HNnAwb/0vfkXr80KGjglRS1iJpkWMXvPF4JdNQ=;
	h=To:Subject:From:Message-Id:Date; b=Kl5UksM4qvnFZtyiUsjO3WfIZVGKR0T8U9xH+5qRNQ8CWbU40xdyL12WokEmZnJqMu+cORKwIrVDDMJoHiTUCRxxO/PEGCZMF4SHnpNMnjn05EecbIWGItyjTNl6gh8zHwoNwrAqsE5XqMrL1U/NkK1QJ1+oqpE9VCxuH3BWlxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiPG2pzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiPG2pzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5FBC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747885793;
	bh=S1RY1HNnAwb/0vfkXr80KGjglRS1iJpkWMXvPF4JdNQ=;
	h=To:Subject:From:Date:From;
	b=tiPG2pzn45QXJ7H6lFJ68I7ohgOc00BKvYtaCmKNf8vdbx3ts45iX7lKCo623zhqg
	 wCUGuSPs0xzIhX9Oowz20k1gS8EU6/uRo97kw+xnsDivG63w96cEtL3nWyg/tIQx0b
	 QrM0H1nR4mze25gd1kECLggyWMsHosExtyD+5N8k58vXA0aKJOJVhqlnDlP+cOy7PZ
	 4WYvLOM6hu8hXyqTwcBbpfKM55Tdo46Mkd++JdfSwCAe4sZq0Axo8eshtrKSZHxDiL
	 GkBHVIPgBcoS5vfjdaSRvtj5gYap7zQcOEYmHLcp3ZggIufP6UHMOjJ7sVbrl02NLt
	 4KcbvuY4mTySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F697C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788579357.11979.6331500037953350683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1526aad8cb3cab00c34a7e5f372df8ab5406c6c6c76488f87af182da0e8eba
Date: Thu, 22 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747885793
