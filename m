Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4868E20A5E5
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748686194; cv=none; b=OlqeH/qQ/pah1LH5BiyhczFz/+VdI0fJCC0Aepp7rRMs2oGDm0aSvK6IOcJVZ+b2kvb+vhtgOr7SN6cjvn6M2NLfMrNF8B5FIf+7Kox3PEAe6OfFVEhg8EHVdd9v/wNg8lyn1Rz9RZLgqlaKdfHMUVkZjqST/blL5E3ZirGhWzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748686194; c=relaxed/simple;
	bh=sY/US7K2ZDedMOuPl29Pyu9oZY+Eply50A35TokocJ8=;
	h=To:Subject:From:Message-Id:Date; b=JFtnab30uSses6ploJ/ssyW/qFG1md2+C73oqbC+VqANmOG/PWbfrHLLVLGjcTDl2BnkVslId9HPnYfOWWDcg3mA4V1cmDQayTUx5dCqEPzCvcOUCf71ZobkgLRUQE+ARalFWXewrgoSB80EaK2CrbHUM6ZGohSy86ChrSHR1sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzwZg9Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzwZg9Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748686193;
	bh=sY/US7K2ZDedMOuPl29Pyu9oZY+Eply50A35TokocJ8=;
	h=To:Subject:From:Date:From;
	b=fzwZg9SjfjAmdI5Xl3lkxi64l8J1q0Ll7n1S8JkOITiFwg6cG2R6/PTZ3N4yxiV2t
	 wl0bO6s2RmEUQE9WG1MVVFeASritTW0fsoa0vf18SE6H/Fy+B1yHYfk0/tbLnM+1xD
	 c9lgyGTZj/wwJlEGfVlKZp1KiQq62FbA9B5LVliOcyI86bLcp9I6ThrY+hJ8uJJWVt
	 zDiUFFSjyQbHJ58ROTqsn8fGlxiIn5bEzb0C9225bosRtbd+2bxn0PEt8LIsN8Qljx
	 wsxffuSaKeL3gGUd6JVqw19P0IXobasZAd+20oigDgBDZZRCnuxOlFuFnzhh3U0AcX
	 NYbACSHq1GiFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E2C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868619357.4638.10121935402141517702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35de424c284e46f90d414addb3985c3ec177657752f7b1fcf7fb36a88a5f3df
Date: Sat, 31 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748686193
