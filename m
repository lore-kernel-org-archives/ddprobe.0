Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B882D7DC4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773853494; cv=none; b=TBSPKh2+x+8dKoz5zEztGZ0OXJkl6AKc0GX/pvmYbtvz/UqzAx7bTloe+1gq18P/6s+8hCae2HaxKLfwmXOmByXQ3lj6j09yFTWSA8lwDuheCKxkgzIKC8LzVFTK5Rg6SE7NtIDIaKrCMg1HFtuOwb2JbkxIFIcTGzD384h1UU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773853494; c=relaxed/simple;
	bh=WYSJzx+arqT10TZNkCffrPsllg5Q543WJ0QHk3q+gnU=;
	h=To:Subject:From:Message-Id:Date; b=ucZn3KzQI8SOva48FbEcKSyT/ui/3BLTtN5JAzIu9N59cp6o6qfSlCWQ3Z9/yFeeiiazzqhFaxEaBBW7qbaJIFgjBWUIf/zEe1IE8kiw7t+9mu3ps5q+eapb7mitEqGHLzonwOdNQctGwjfhBw0ErmNOJ5IuV+0XNaIxZ4uOvq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3uG871M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3uG871M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB5C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773853493;
	bh=WYSJzx+arqT10TZNkCffrPsllg5Q543WJ0QHk3q+gnU=;
	h=To:Subject:From:Date:From;
	b=M3uG871MejkvclZVVgb3ouqZMXPC7/MvzoGXLtFw7Y0Ux4crJyQVGf5PBa4esrF3H
	 IFBXt3MVsDVfqQMKtK+UmPtSeGhdPWKWGJN654uV/BEnZVpfe/hOj7wHr5sbzykf7s
	 bgO+K4L4jd3E1C3Nhm1IwYpZKWdhzLVBm9Mvz94XVdqi/6NNNeouTI8HT8ijrjKGMj
	 UvWCmgnXfmxZDOpZ1oWZCwTCPjQo3mt1/APcryPNQVQHhuYdaBWj67zu601lMPkFJA
	 SxO1dN31hKROLvZKJNHfNXLiLWESr9NzvbBYHmerOSIw0QPsIqEQK26oeHt/7geP3N
	 b7+VAu+sqtNZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEC10775E7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385349358.16108.1976419970128888931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc05e1c4ccecc5907534d89d1534fdbb3fecbc25e8d7e0dfac0d1bdaf68a0754
Date: Wed, 18 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773853493
