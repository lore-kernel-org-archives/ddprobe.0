Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4644E64CC0
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714331543; cv=none; b=ajFjbEPB09Fkv/hOSRcLJ95yAPQevnBB+pgXJicp/otC2hQidEmSxGa/7TJvW1qoTjwZUfuhW/Y3zsg9vV8CVRkcX44RJEd22OANuRvKCBLG60U4XzsXcI+lx3vNUxcwjvFy0XzDILNhYr2LQdBCiUddGNMoJyyEgMEJogGbQpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714331543; c=relaxed/simple;
	bh=0poB/tTKWUcF4o4GtS1b2E+BFfw/48Kr6JmPNdSFffA=;
	h=To:Subject:From:Message-Id:Date; b=IUBYXmveGBuYX7CdhE4a11EclcDRA127bFvQVKfCNZN8kqhVbVuyXcLXNria4CUB3DfwtVBkCPSChMEpnuj8zkcjH9HIWALvXLq5UTXULEpspWJCH/G2ua5+CWMShM7Teegqu7jiPfM/0oztNs2CUVezOQ3Khym6rBM4MoGA/Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtQe/j8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtQe/j8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A44C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714331542;
	bh=0poB/tTKWUcF4o4GtS1b2E+BFfw/48Kr6JmPNdSFffA=;
	h=To:Subject:From:Date:From;
	b=jtQe/j8Dwn7FusouXvYev5oi7OCi8uHuPcBB4gHm6gVkkStgbkTs/M3JiohM9/pzK
	 08vcfRqllRWqXqBOA/RO3+wnuyAlXK9i14wKE9B8kLsdZVjkQqiEwcK84dCZ8fer55
	 6V5u5vZHE6hzziNFiqtEmdf4NtXCaJ/mdBKBEW2uWjM6GJBHDO0OqzkeNMZkV2FH6d
	 50F0ijkIVoOZ3loa9nbI5DodwvCtjIrePzyQWhKwTMV+VpkFY2aKuebG9pavEXMlpp
	 S5fn+q96g95GZuQ3tVjw5zqkKRIq8wnNQQMfXpR5m+i/ugvwOuV4ucOO4i/ZHuGAQv
	 hqZ9Ji7EpOAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA65C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433154276.13728.16857960402701523737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337ecd1b325226fc742840bcbfd79315fa7169595dcac4756dbec58309ef37ad
Date: Sun, 28 Apr 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714331542
