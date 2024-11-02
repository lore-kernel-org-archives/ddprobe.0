Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341681DFE4
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730517354; cv=none; b=YXiGdAjgC6MZ1TnOb/Pyhg2d5pJnKkPefD6xjm2bVY2CufsgLPtDGhSMzn1hdmpLE+7xpe1hCPUpfv9oSC/5HTdO8ie4o7zYCHvFmB96pFs/pwX+56ghoi4JK9PEvBiZ7lRpPYIZ5DZei4IyRf1XejKuM3y/YX5MBw65fcx3voY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730517354; c=relaxed/simple;
	bh=9JTuJPkFwyE9V8otywDNCjyELRIXf/Ki6Q/wjYvS6rs=;
	h=To:Subject:From:Message-Id:Date; b=RLelLs3nHMfkhrUnuzibuphvqUeNTzWWJapCUuXqWY3sTasoo0i84mIegOfIFONChua75SwgkAaXP7fMY/fYymTlFomkoZxv67ftFjGZzwKxXUy0PcN9ThyRLKozUfOuSK9jUcYUZY/1vCWIHPwEPGvyehQc9yRmfUOiBA0FyOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJXSONnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJXSONnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA10C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730517353;
	bh=9JTuJPkFwyE9V8otywDNCjyELRIXf/Ki6Q/wjYvS6rs=;
	h=To:Subject:From:Date:From;
	b=WJXSONnheLqJKRmIUasHjwOZZnbvnDLIyw2si6a9G1nWMIAQckYp7ntuaEetCHan1
	 2Cg3852MqmVgnj2HGXjmTKxMVoBy0troIl68Vj4bISawOvH3EfJopI4HVxEbZXtwqo
	 9mZVHXig96pheVkz8sq9DNjjjaIhMEnV2/Iu0MGQmcAezYAHmmiq0Y2oIjbImI/Xfe
	 usS8FsVWZrie9h5nvsMBCWdCZXRcHGw7bBhl73YsS/LyaSfbAhf7b1iCjuIfx559Vz
	 rc+A57DXSxVXBxZPfEynPSf2WvJw/r1e18K+32osMFoN9dBF5dIQZ2PWMs4If3JEQz
	 teCaEdBQj/2tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B67E6F07E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173051735359.20964.15694189804127029674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c14f6ea83edc0ac6d1d1798144d5ed14c8df3ff2316079fcbd9f7b508ae238
Date: Sat, 02 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730517353
