Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC22673A5
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747046394; cv=none; b=Ibl9tHsOMoGObBVxCoH+TyPwx214Ne8DEXMyjaoER18PwzNKo2cvIsUIPWn58dg+rF9I9AOK0AKxR6+xW/WZoXX7+9vUBjc4VNVNv/pao5bn8P4pZ+woYAPkA+7RN2i1vPaBQjyG9dh8ewffET4TWnmSqtXrrjeJqmxy5qoeA6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747046394; c=relaxed/simple;
	bh=LTkXUcz3ClIDOBxAXgr+zHVdq1z/gpkuK1FmceUWIIY=;
	h=To:Subject:From:Message-Id:Date; b=qR6RyUirYWGANl68bGaziDF8G+b6P11zseyi15yMWTayQlAxcCh+E3OdbFlG6Yjn058nWsaYQtLJcAV98I67yCeBZTSqTi5hoqcEOh9auBISRzMrlYX33KYEFmAeH2JJC9IB5g1t9D5DSkHwC9rEO+BcCSiWAn0ByUhnj18Cetw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7JNumhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7JNumhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB5FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747046393;
	bh=LTkXUcz3ClIDOBxAXgr+zHVdq1z/gpkuK1FmceUWIIY=;
	h=To:Subject:From:Date:From;
	b=c7JNumhS1J7xm9yMDmO0rDBNx3JjOsLO3fGx84Sfb6LCBsg55q4liRmKA0wWrDxLN
	 S0RpPkRJKINjiVDfzhb7r6PQQUeKC8jrje4qpFwPfQb0/+F/A+F2SnAiDY3ncMBfL7
	 RVVGT8itlscKgcq4o4zM4MLKmRJz7oIKBiZpoGPhkeo8xSKIF3RQykCz+Kjis8+6n/
	 3NFFVlSJiMA7flrzKCiC2GvhLH/3IFkp3d0v4axB766/jiHJV+M+zcinvr0Lu779qP
	 REseWR2pboyyzljLtm0ETkZXoDdx7hGbrxXXGdWLug9DJXjt1eCFHgGtgCGKzhqrnS
	 Cd4n5hiULTfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03DC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704639357.3296.767325649656388850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7049c107f6010f2c66f83c357384d5a796ae8f2267e786ebee7a220cbf6db6
Date: Mon, 12 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747046393
