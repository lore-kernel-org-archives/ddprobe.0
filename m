Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290B22F5E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751419794; cv=none; b=BLtNrcyKkBHDcBD5U4ymqtY96Mu1Y0wDZxm24sjGIYkVn6AWAV7dzNMk58YH74vfK5yimNAx2LjyrZAcHl4qOge/3nqXwMh601sDh3TmJsc6QqBPG31dFPDRl8DoO7Nj4T7rZkTlncQFmdYVjogjcWie7ZyJ/WP+Ru7HaKtVhas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751419794; c=relaxed/simple;
	bh=scEW0MrgX+j/njNB034QVkCpOENg+FkekAoWKDUbqWQ=;
	h=To:Subject:From:Message-Id:Date; b=PX0f5RKeSq9ZBhJtzxo6C3DZX2ay5r5B6yrpQbHEbkmwhDriJQfd7gy7Dvb/CMf3UteWgWoGezjb5WmYXq1cNBCtub6ndFC/TzGwKCK4GH6pADX1slAisoKq0C2jPChw4116dVoerIGiC6kLJP1IsFGUmILr4luHXRiew8YM9NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sslNNJZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sslNNJZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751419793;
	bh=scEW0MrgX+j/njNB034QVkCpOENg+FkekAoWKDUbqWQ=;
	h=To:Subject:From:Date:From;
	b=sslNNJZYS4Odju5cq6RLTySFxURDOuAL3D7nKOBL0nzDUJpOU5yWOoGIILmJsdUZG
	 JeDfpj1WfsCrohgXh+aOm+tHlfjKX4W3ZHs/GwShWUyCUeXrjyxGGJI97zvIykFEHx
	 uRrUGIyThmrpLm5UpGOwIzbWxwVsnuNwoZEMB/UyMaeXyiAfIiWIv2ZFJcJW3zk88Q
	 ueUkd+7+kW4yUCmd3ucTGW2CRNeVHnki6gWnR0a6JgBUqVfzJOOCRCADSCnCtqprNm
	 q7Bvh3p47XeFUqiiDHH2i0H9K/hiw+UWdF9ElRVPBxEWqE6M/6jtKjg7TDFyFt8WvQ
	 STqier0HHBmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90588C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141979358.18245.15442561364799511577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d6019d1206990bfcf9d5dae6f1f0e9198f129e63b0393d9672ba9a13784088
Date: Wed, 02 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751419793
