Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BA3261B67
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755581394; cv=none; b=bPtCJ7XUQC7FuJoIdfzjxgNeQ3YmfXUKA1BEcH0hO836QJDjooAUNJI2/vMY8wMjyG0I4hSziMpS+8nD5F/BImqwMn0F/vlYAnbij3RaqjAwX99ZTIYpJtpBRSuaIOnv8iqx2zos9hNntZNFhMK49p6bZdWwW0x0AfEEgn+NAVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755581394; c=relaxed/simple;
	bh=mvs09Ndp3sR6LnNsqmU8jXVV/NOUcKdWkWmILHVQhmw=;
	h=To:Subject:From:Message-Id:Date; b=L9OY3GgfOh2e1CEOKKOYAoLWVpbNhTpLQdrjv2DZsGEEX6B74/H8Y7fKXZXcb6lJDxPDx3YMCF0ZHUSoDYVXLRAXcZotxgSRSfjhPwknUGS1LIVPsh42sfETNAeMbWL2ssNpKByKH+8R98cuh898WhJ/psb21IVRYuLVxtGBRAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg4SniM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg4SniM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755581393;
	bh=mvs09Ndp3sR6LnNsqmU8jXVV/NOUcKdWkWmILHVQhmw=;
	h=To:Subject:From:Date:From;
	b=rg4SniM7GZRSZIKBOBbnEWxg1B00yVupQvgDA5k+xwjyqaA81gIzhsul7E50I83Bb
	 Q6K7m83XYydiS7gSZr13VlT3Q1LhIWwmcyHr7cFH4I/lLIFFPpolrDydztFmM78ZSJ
	 WMDyg5hOApCvM66aSwPN0rsAxnA3sfpzCSYtBg3XDiroZ2Jx7RoRqICu1/9Uvien0H
	 wOrwEm6cELYufcpNQf2wzE4iZ7PH0/OLo/lMAvyi9rhZ5I1TJHTHbH7zXrxTFfHvSN
	 bdhjbKlsBkMHmTUBblx1AOM3ahoOKEkOqwxlAv0/uZammgUXscRGFwVEIQFBkGPuIL
	 cYoH2O8c6bcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330ECA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558139357.3160.8628122841328882033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107400fedbafcebef32219bc233ee8469f8af455f8da17ec755edd1066e3e958
Date: Tue, 19 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755581393
