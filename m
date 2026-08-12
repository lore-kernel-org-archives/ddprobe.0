Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E6383C7B
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786534834; cv=none; b=hDia8ZAHSXyEz0Y25QD8DQ+mvFKQVR4G/O/MdEja1SJp3J11aeDZsri7xIMXNqBmpuGSianh5ek+P3vWMktMvIwWywksNJmJ1b4zFE5R6aCgAyqBFkIXyRYXCTbJeSoixJ3h8+yEI978SuW0cCfffmIPkW6TzNaZ+G18d6oIPNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786534834; c=relaxed/simple;
	bh=dpNX0t5Wuv9dDPh70xq4USrrh6ssN+m+kRDt1gcAzXk=;
	h=To:Subject:From:Message-Id:Date; b=Hp9znVecE/4eDjsVrGbvRsnDzxF39xGHTT6wugXnxZNJaqu9iyTL+eL1Pva6eHymJlvDEReBLd4elKTNVNpxMu3A8rzdUTbeLcIDyUU06ZJr0HphNPwDt3tqpeFXqePOsHLSKJY3Q/mmqF7YLqXQlFNmyH43EnHMfjTJK8edI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU7UvMv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU7UvMv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA147C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786534833;
	bh=dpNX0t5Wuv9dDPh70xq4USrrh6ssN+m+kRDt1gcAzXk=;
	h=To:Subject:From:Date:From;
	b=HU7UvMv7w/Rfi8AHHJ2p2usBmlBCW82RCu+e4MCD2Lh8CMHGNh67pMJVno1xW+xv9
	 wylayJiYUyGoYJprLpdHWqU9JL4+LRRukos6OUpPePjC8UPIRczTnrPHeR1GhvjnP/
	 IfJ9N2TLJYrMPor5FlFM9Bn8+3DXw66GGkVEZHy9O8Es8U36V4TjfO0gqAHTWI0uFW
	 rtaeYzNwz3gPjBYcFmvCox/WZ+J6ffFf5JronBHyfj7RGuibTuZxq5d6LamSGQroGV
	 6jQa5/IDtQtGq5JLnR9Nw45FShfSuh+0jldOMoW+lp/xRmt5kgZlRokdaIhPSI8hle
	 pbht1JQ7mubwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D5C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653483368.20624.13456949193881994618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0adf03c8e5c17a0e41f80a990b35be2ff9c5a7948e26108b83374d67d700c9
Date: Wed, 12 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786534833
