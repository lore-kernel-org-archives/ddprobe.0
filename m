Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264872C159C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764259374; cv=none; b=t+PCDMRFYJWYLqNCnwsN5uT5BbPFLXyrRpq/FV0FaPo4475+3ebjqrATLT+y07eGYrLx1UA19oaAnMipf89LJomedID/rqxX3So9I/jKRtLX9E5GrmYbrgfnvgoJDZQ/UAc+StPJiZvm3f9pKl+cI7nxT5jC7KWKSwLquSdWwYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764259374; c=relaxed/simple;
	bh=sDa1nQnDEwcb1yYs4qIQfm1MT6SzNjnRgdym4vJIThQ=;
	h=To:Subject:From:Message-Id:Date; b=jLodUORqTSoPm9Kbo38ackCtnIPg1QsRVQamxrt4jKWf87Hb5Lgp5x8mdoE19prans6jNzSFTF3laSNyYhqNKeILA4uqwSqDG1gIQZOx4sHZdbyeqHqT0oAeO0kSB4i9xEnlstewKrA1d2BGgIHkMqjYqAp/aKC5ciqRTzlqdSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3a7R9Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3a7R9Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFADBC113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764259373;
	bh=sDa1nQnDEwcb1yYs4qIQfm1MT6SzNjnRgdym4vJIThQ=;
	h=To:Subject:From:Date:From;
	b=N3a7R9YjxmoLHI4R+vge7Dz6OHOybWKYdrYVVtdZhud/3vVfX5zRzSOC7fQ1UCOGP
	 FfEaeu63I6GOvkLF6ECXUTc/S0Djc91IfgiqSPrZVCfreEjprc9uI1NxEzM8lYaMgg
	 N5X95sWuW2r2JEKcx2kLXPPgM4W4xrQW4qFQJ+WMuIopIYPClJGpQwdhq5/ugpAlos
	 vZG+/b78TCQ9o2V/OwQXrhEJLud+7OdJY0wGz07OGXLluxRVREILTNkKI6NAR7ZOMk
	 c2iGtA344UpaOh8YUR89QDK2pHDXLSr7pOIaauaYPcynSJTbps9V3I9dJ1x8RFqef0
	 PsFoPhu0piVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9913AD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425937361.17546.18058063606616660642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d855cdaf4a9a4a333b3cac72cf81e3be0f4a78415da21ec15249cd14c43d06cc
Date: Thu, 27 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764259373
