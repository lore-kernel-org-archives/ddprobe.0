Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141E229B77C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756917594; cv=none; b=IwjXwGyWj7aMouJILW3Xrd5aiDhV/kscBgqxoxAyaO/nQiZ6FbmToky/yQsUsOEQCQvD0eN5zCZA6Udi/N6xm++frZi/S16GwttUVQvfolvq0xtzZQAhaZ3HT7TFeIDcUftQt60PY1hzQ7UY7Xz7newjtN+fSyey4hrGRuIqcD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756917594; c=relaxed/simple;
	bh=nVr4fpTrF1uKYApPpgwePGoy5PByAQ0asQHYiFBUXm8=;
	h=To:Subject:From:Message-Id:Date; b=kfn6MjF1JizJePyXqN4mu02SM92TTibUTZnjPyo37iNf/+m0kiAHsLdnqrYi+sSZibi9T40yK8icRSxPnyh6B9QxFhUN2NWxuDS6DvIFbBCW019Xza1lw+bpF6lSBCpQjvqop50ncKcx39VMiQxsbtaZ0fsNvlyFWJanM7a7SeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6E0XLdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6E0XLdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756917593;
	bh=nVr4fpTrF1uKYApPpgwePGoy5PByAQ0asQHYiFBUXm8=;
	h=To:Subject:From:Date:From;
	b=l6E0XLdgtF4KH+XDj6aqBmnTkeayQPpa0PeFaIIxjzPwE2600njrbbdStG2ysseXt
	 I+wrWRsBelFPb0dcPqqewLb0/MHm34wiNWgU0fo+0bJkK3Rce5imU9xm4QnTr96WEY
	 /tzz+cNOweff/8uid07Aa2A5iU70qDvCItmBZHQ7r+wPNICxeZ+U0ZQ71eNV/lWAcd
	 SF5Gb087kzQjwQYCwTAyUubIcQBmxXtMgGPulXFITgYxW3KoIX5CdCd0spWGvkRB27
	 YUWx6UMJQbUeYUOCEq0K7NFhWzIL+jnEZChjsk11/N7X3CylRw6Rx0dMYC4AqIvaDj
	 QuZBh5un8DRjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C0CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691759357.9145.3554125794395934037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462b1d7389c9e81592db47faaf79e1fde9f44fd07cfeeb63575227479809f2d4
Date: Wed, 03 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756917593
