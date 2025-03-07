Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CA31F94C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741387134; cv=none; b=BEPl6hMaOAT7brqrPCykwi1Xn9PAQWEzVTpn5vt+rgACw/TUpiPfnYA7dpmEwyi6JbKZf7Q7qYGmR/V/ymSKDqQS+o+2gFoM6WTwo0xpwrU/dmOu/b6zywdXo3nkylCYQwtvIMStt9l52JoKuv1D3ePjnBc0q3Wh838q347YtIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741387134; c=relaxed/simple;
	bh=PfwZkD5tAyw8ZB6OLNZN3Wace54btPnEvR1kmQi4b1o=;
	h=To:Subject:From:Message-Id:Date; b=Sh/j3k5mSqbSmJKs4dr30P5Fv/8e+arjJkDqDsCY/T+6bkGMdH3Rvmsi5WZM2cM1j5uWfem1rh3f/AWLoH/f7QJeyq8q7gNhZdjSdzTMFkWIUdJQA8TUdIO94enVnfQV3b02u3zOiHYrQ3/ww3k4Ayto8q55D0162iN1WpESmFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXUL5YVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXUL5YVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD71C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741387133;
	bh=PfwZkD5tAyw8ZB6OLNZN3Wace54btPnEvR1kmQi4b1o=;
	h=To:Subject:From:Date:From;
	b=DXUL5YVUbqBT5Ak+xOhUbx3wXmYZKmhnGhkMukyHzPrJIP3Yv0QTkI83RIAODhJeJ
	 BB9hnX0Zq80aT931lg+fJEWAnHqi2JCikkNvpmeht+qi0ZMLFLU8CCpJINDwiS8aWk
	 S0BXd2YwFk0DfoG1yZlPmMSd9LeQLNfX5LLkKil6NBYUBV89GvGFezKgimZdCGjMdt
	 9OWPQHOSoGhe1KsBnMjn8ZG4G3XTUJBxEINpke39QZDtWkReAnIuatQH3mc/K4yrHA
	 n5GoecHUL+aT0Szv+GRLqvuapG6ede3iVzcKKbW2IH6r7NZrllsv5/rUhoxFe9IGTB
	 qv8V5E4uo4Txg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999AC28B25
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138713361.15657.8191551935326357062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1b122c14e6924946e449a69b7900fe497ef5592d36c50ad5e1a29aaa2e4c6a
Date: Fri, 07 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741387133
