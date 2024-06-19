Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0677C6EB
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718836163; cv=none; b=JjanP3GvRHgydoTZXFLLSkl/mJu7//NhE+7h9g44nwfnVYMgZPOrjqCcJicCeoXoND6QgX8PRfqFbHV3ksT8loYo9ITAWJ4CR6k3djtYr2p6HuQR4txXFx7NDTBruA6TNihvl9LZLhc45Ed8bmkKFyMKgk1iUwBKQcNZ7jwd+fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718836163; c=relaxed/simple;
	bh=0pgk6ke9HBsXRBPXnw3C9BKtfHbXa/CpT9A7aDeWd78=;
	h=To:Subject:From:Message-Id:Date; b=FrmkrX+2p2F9+6VJPi3WuoNPlgR5KKEwo7HC8ySz0N8b0MiWXptBAcSJf3qsYWnRdwWruqbM9mg4E5O0YaQqFA6w63uIxcfPuaX+Uf6uyWCNybf+0e8LcDfyZM9K7Bf1Zr1Ysecx8YG9/9gvpAKb5inKxuQE0n+qHAH6t+0BgvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZECffN5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZECffN5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01FEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718836162;
	bh=0pgk6ke9HBsXRBPXnw3C9BKtfHbXa/CpT9A7aDeWd78=;
	h=To:Subject:From:Date:From;
	b=ZECffN5wOiremjSCHkPp+hzgyzj6JDU8cJYmxyyYaLbSn57c1E/zrS+qzpAK8l9aG
	 qyOccaVcgBmk47sm93kwQKHS6nrRjub9gYNZZeDRb2hyFeBIgI53exz/DT4r0dQyOm
	 4ebiQgsraPOHzrhrzR5ob+4f6wqi3GorDr66EIQB1PJ+Y5cCtZg4jNkdDWCvwDGxRB
	 BvEvMzdUIt3FtzpNUqCG1GOTpssnM4WzHM+WbSxLzLToLvTk2RNd2AKAU9fp8BReBp
	 gkPq7qoWFzWfqFId59m4dNNv+WYIA2XX5CZqE90AwfL3wnWaX7JgqPfG9RxxHZROYm
	 LD+0hCoqt93lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07A4C2BA1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883616278.7984.6087925768475860725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c42bbf7f21cda7f7ab00e2db6f89496e010b5b3b1b5cd6143edd4024ef8491b
Date: Wed, 19 Jun 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718836162
