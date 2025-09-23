Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F220A1FFC48
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758640194; cv=none; b=TzBiUamZyGsb7wxxFEOKfC9Bgo7PllNGvyhQKAcRvZpDAZTc5qCXwTw0nlFNUEn85m6asfvwXcZ7bfQhwevv4hc5qlyBwLxAu7Q3lfCJIct2gBr7ysjvOijyWG1qC3ykMwWtxgVLHt2chMhP1hb8XxyFg5nuM5YbBZeButD3uEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758640194; c=relaxed/simple;
	bh=VwdxZSOfz5n/kRjYprGCPC2pQ1mh/NXtaF4d6uxhtO8=;
	h=To:Subject:From:Message-Id:Date; b=ts/PHCxCe1vcWJ+/7qKl5FBKLS6IUbTYnbuoYCHZepoZL9T9sgv8fHXjST+/ACwGsVWl+1e90xtEukOKr3aEf42suYNsHjSzDiCpT5pNsq6igiNOZCNT3DDMoCWYV+Pnh1z8o5pYE1aRRvtFrJ1sS0cKwAqkgK5jtuM3iznx6tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVUpvQgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVUpvQgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758640193;
	bh=VwdxZSOfz5n/kRjYprGCPC2pQ1mh/NXtaF4d6uxhtO8=;
	h=To:Subject:From:Date:From;
	b=cVUpvQgn3+3HqelOmKTSLU/jV6BK1GS+y8IueVNHVoP53pPeG6yPvdRCWkaOBXS54
	 9wUu5Mr8t/NB2zNMPqmu1UgomrOiq7mpJ+u7vtCUskx7gAUG8RTQpNr5yQ8eZIcfLc
	 MMo2oI8Ow/KUBs6A6UD0V4e9GDNcHkuC54wuyU7wbMixFsO/JL/fgDQMFyX4VnHc5W
	 rLsN7TQySP3Acs+0FkLQNVPdqVYsGXJrny11gsP/9cyC2+KrBHc1izAhUHtr15cuhp
	 3zLn4QymWK5/xrZDIjpqiDwqk3Zoyg82Ugsa3hBNyCMRSj7N2FfdyWLsiRETqFnhoz
	 0bd1tO2wMgIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008ACAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864019358.5279.5650532035945361067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67693f1bdcedebe17567cab72a195a3b2c67ee7cfb7d31eb192b8aec9da0f759
Date: Tue, 23 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758640193
