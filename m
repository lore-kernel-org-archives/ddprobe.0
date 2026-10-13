Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A3B3EB108
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791886834; cv=none; b=b3NIb9Kz6ff2xjhwbIkcBD/RI0bqhqz8rRVXcUTnic+QfDxfdaL5tFEIg1TefIOr4bEvx7wJ7us93trsrYEaKDKpzEDM5poXV85KCAMl5t6NU3cXLiZvYBCqhCQPYmlBh0mEwxiais88Y7mlrr50m+Wkaz7PY+RYaaZwwykAGrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791886834; c=relaxed/simple;
	bh=p8ZZBnQa/19nylK+j1zWD0TKB09lyNQf/OGjlXjgBj0=;
	h=To:Subject:From:Message-Id:Date; b=bnCkPID1Vp8u6z9WXkLoKnALFoAqSBLSe2BdSkvZ7nBjr1w7JTvDr5ux36AcQkORZLxsVnlTX8hOcBxBD85dzyqRGXIpw8MTmcJH8SLCLFlIJi/fT1XAehiJWcsZevi62R2k18Gk0odCku76sew/8EZGZ1eU9wbWRLQ5rxO1MP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seB25chn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seB25chn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AEDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791886833;
	bh=p8ZZBnQa/19nylK+j1zWD0TKB09lyNQf/OGjlXjgBj0=;
	h=To:Subject:From:Date:From;
	b=seB25chnAfQtJvBnQT1GFb89HzJP6N1q35hd5J7Itebe/WS8PDRSuOfHpzAlkfZ2p
	 3Ozay9KHBe6YZ3bLujrtGPRQ9ot7iVx1FI6gz2OcKy/qKAGcjTZXZdW6FcK12rkAZJ
	 6TbcY8OgUxerBuY2l3gnQujMGYUzF4duzr97wm8EcAxkiy2VF2p+UUUfQ+cCigf+EW
	 0aziPgc3PRSMqdpe2PHG4Wbpyo/DGWEUUePiMu4S9ghxP0PfIGvw6nS1csdtwUwP/K
	 8hsuS7WZDBZ5tiybiz3qIwSTtPkQ4PJzUgnaQviSv7Qs2zqbpWC6opZ1o79JUa/xD6
	 Me9KbIVk9sfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE056CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188683370.26760.13962597067440039767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f7afb9b511d73e81071638a374c8c1cf63e3afac650fe971ddbc46dce86e9f
Date: Tue, 13 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791886833
