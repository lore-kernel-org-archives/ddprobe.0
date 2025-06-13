Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2017325487C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749846594; cv=none; b=qdGRRhRS24chkHy9Eu7+5QTI5BZaDLlnoHdHranDU/2PfHYmWX5NtY3ch3mg4frxlgSgSupUM7ylfljlBFhAQhh0rgKnyeRX7BhA7IPGfQK3X1PhbDZ7bc6wbwA3//HRiOJiJzOekPhdzHd93XkRVhtV6OFhQ5RMCwbuTL47MOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749846594; c=relaxed/simple;
	bh=VGsUWLcpz888bcCdlKmKDiFyJl3ghG9sd1/uJ2dzHxM=;
	h=To:Subject:From:Message-Id:Date; b=chzTIIa3GwnCgrs51k+1BvRJEkqZ6S/s0AW4PXMG1ol7ABydhsOMqOp8cbN60xoWevSL/n+qX4zYznLnvQHJbEBgTYgf98mVEyzp8/gbLjGv1OY5ziRPitwOU90cFDy/lMCCBbB9kbjMpeKsY2L+l8ROPqRmpU1t05+Vs3/LXHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgL79Swl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgL79Swl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD56EC4CEF2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749846593;
	bh=VGsUWLcpz888bcCdlKmKDiFyJl3ghG9sd1/uJ2dzHxM=;
	h=To:Subject:From:Date:From;
	b=WgL79SwlBW3WJiJAjjzwwnyYgZYCQkDvuF/65KB6Sqr6K20jECTQ/biuXo8FJ5jXc
	 eYZ5sjgJoYrKJPUEl/vKHjz46J/yJchaul47miSscNu7wKxuH2HC5R33u2/B53rUb6
	 UHvqN8TnxXuMqGmhCZPP17s2WJaNrnJDfCq5NAaz96CEDJOkxDZzw9b41k8qQGiDAj
	 Yf6rY7U2m8YCm0ymABs6wL56WZ7Y5LVVwjna8Cg4ya2YP9tT0mC8ZUhoON9E1dEkba
	 pUW/IMj5CCRcQp62C9wAKh++Pc/E75LfEBdzE0qOs2a/7tHAlLr74RnxUbguRhtlW9
	 aAyOyeuagIrww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A9C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984659361.28672.3576666419436798305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aaa58e6b8ce320515cc97d8f68f9b196ea7159add782ebdd04e136a24d581f1
Date: Fri, 13 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749846593
