Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4047E3B19B7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781506594; cv=none; b=o2ddaitO4fVHeqfOmuBZG9X+YrNV4LSnp5EYczOih8lgEw0btg0Iet90CpQYMoS9j7IYTX0KUFbph6cYBP2udzMDNvVk6a75Ex9cy/vQj19tDlSeUHS4YkzYsxUdjNQqYxTtdZjjJRmRJTshxhx8x6pbKKVmnfuBcY94pvXND7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781506594; c=relaxed/simple;
	bh=DMr716xDX7Yd2wRs+KlZiccisUwQkCN2+1+KSS+Z7js=;
	h=To:Subject:From:Message-Id:Date; b=Jitu+A9R9gE572paJQi/LOBxjWJptGj+gYCZX3ykqXtb/pH1LoeO7SsyzqJwQ4ysfYmJrhyu8Jx6qE7AHeF1DVsx8chFdWAke6pUOjXRDHIuP4rEtjnPXfN58O3KZfXrKEDajOaGDMoNYtayJ/VjVc/RWEHdYd40ATmLftSdFKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTaCORKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTaCORKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E91C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781506593;
	bh=DMr716xDX7Yd2wRs+KlZiccisUwQkCN2+1+KSS+Z7js=;
	h=To:Subject:From:Date:From;
	b=TTaCORKAJKdB5pWXthRv59QNJGZ3BBScpN57XSg1s4xAiXczML6wB0qr0L2feAxO4
	 uUccFhTBGCCPnjqKtbpURao+Hxe5tZLQkRU9fuLOUrvBknnKOpAsXA8Txz2YigbHBy
	 MUC5SVVaLkmPmpzwwxUMXHuJP0OpKi+6qC/YBnPsvQ1VsVX3LikSZWA+nRvJW/wKWO
	 fEgdYc960OelvYauOgl+7BDObzXVpi4zoyhqvl9dJ3URS8vHERVs1hXgKDXSBl0zuQ
	 NbHv80BdSiagvkn4+ATmfXkZSSyHMJYmvRXN0f8rRJvhwznK2gjf4wDp6P5oxh6nvV
	 BAAYg3aB9S9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA93ECD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150659369.27912.13539133960947181449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e26a010c9e5f1f7f0e64b39b245c0a33340107f831d5f3804d6d1629b54e0fe
Date: Mon, 15 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781506593
