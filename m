Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BBC173
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729296354; cv=none; b=PCmwG3NZ1imAmeY7zSihzqAtmwOHZvelvsOvqHcesLhExvKhrrKaaCeHrZ2xniA7hY9fbTNLFVyN0ApH61e73Slnf4OcERRBvPlIVEsH3uHgYr3UX7b1P6QY3pEKt4Q/fy7vvORqBt3aSK04lD2BnXqol6WKU3rKFySVQEUqd8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729296354; c=relaxed/simple;
	bh=aAIzM0rFEEzGPTw+NSxqoKltOYPDnMyrMEguANzAV2A=;
	h=To:Subject:From:Message-Id:Date; b=Ds/OSghjLqJazOa+K50xBGX2sWFff+7yVX+sokhe6gVOoFA8hEPRT/zLgWpKSkMMOM66v6VLyEAnMneygJLMFWQJCzDbIswScdoABO5B8GDBarWx/GzvBB+UdVvqRn3Tc3d0l4W0dn/Ln8v7KsnZBBsCcCnENxXYY3aXNFpl7BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHaGg6NJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHaGg6NJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A412FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729296353;
	bh=aAIzM0rFEEzGPTw+NSxqoKltOYPDnMyrMEguANzAV2A=;
	h=To:Subject:From:Date:From;
	b=tHaGg6NJ/RRN+VgGvMU0sBOiq6n/7VJxapAUfkK2dKDKE3cUJvPjnOnXkRetCK0wT
	 Jii8XOYMsDT0u0Ix/pK/JQMG6Bo4kF2BOcubWhJXn0q6d384YAArZwOSI4SQKr7ygF
	 TLqKwFKdQ7K7lRJ/ujycEodaLLV0ysn9LsOr6Q4Wshh/WAyEeWeJzY1QQXwCATUFCN
	 +t8Wx/EwR9VVc5hda6OTnz9UuxeIRIb/yftMQB4VIdTmWys3Bji6A+75T1uSL7TwVB
	 AuxKabS5JfpjnoR0i/dT2C9WMMom0G9Mj/KGfDE7Udgf99QQoVDhzxEdI7hBAySLsL
	 TetlRi4wHg6CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92468D3E195
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929635359.7766.16128772839536817281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebc3493aab82a657742d514382060a0858d1ba5faf2b9d83b74d1df51c0d136
Date: Sat, 19 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729296353
