Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241F51373
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759337394; cv=none; b=Spbi72QQ1eMSysXKbrhQ39Ix9hCkxaEsz0zwsHlFyoT6IvY6jt7nZdd/HV8AD2d8DzbAZTTgy7UtuDk6Mh7Cyl/7gVjYxHEJG8o7vjvrJJ2/044sEAslZ9LG8BlrZJN4a7c9vpMt2p0yDZp74oVJk3/v/8eYCcS2ruguJXb2QVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759337394; c=relaxed/simple;
	bh=Dg5dYsjkHfks98N6jZ7wOcRz0u5mkVDEZdMzbUQpQ8E=;
	h=To:Subject:From:Message-Id:Date; b=hXBUw3AgFKc3rqHAHt+DzTCMlV3yES1lsn32ISU+phQubTY8eiSk6ZIM0uIoG0qZXNEMFwHioKxGO4YTW2u54BgqXyU/yEuyqhtQ9uez0J0xnoukWkQL5LTqiCGOju65QyBcaDAxPy1LPO8KrkAxXpo1mmaCL+FUaHnJlHgJVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWcOLvb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWcOLvb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759337393;
	bh=Dg5dYsjkHfks98N6jZ7wOcRz0u5mkVDEZdMzbUQpQ8E=;
	h=To:Subject:From:Date:From;
	b=uWcOLvb05S4OFdFF80cgd/C7rV3phlr3WVnTAguxFRBoaK3HGsrR9L3WiFs83M4GO
	 pNyu/KtzjZ74e8EIVa6VzmaKwAneHr6nFqXP/tVZNMlsl4UBj9gXtdkAgWeZTPm1aM
	 1R5+GaTOj29zz+j7SfkXfQ7T0DiSVzYeX8g2ExNMt23FUhQbN8jeIL0koVQRVJVXKu
	 rvEWR8r0TnWf6M+OeXeDfY4CMnQ/fWt31sIY+L6nm1DJ0BAHLoEDPtqbJwLAVBfLVk
	 L5T8SIya6CrnX+ADNsgK8xHWSkJZR5SEsw7IIi0qPbVseIA9rLQNSFKhVHEbMJu7Kk
	 c4NmxlBQ48LDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933739358.17391.463038525941538399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b105734a576070bca98bf0a1b172fb6aea74889b0c9453607de5d56c179cb44
Date: Wed, 01 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759337393
