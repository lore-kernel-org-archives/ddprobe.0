Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFFC3D66
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723856754; cv=none; b=rUfQ57ZB4OOygwcA36+ThS1g9fHqC4Oj/cOPb7nUz3uXhptJAnpm3oGBNxD37eU25tb8LpVscj9dUQfQ3nGABaKG7CynFOHvoBjwHzytNmO/RMYQo578gvy4DbFMTygPXfnSN6ryaedQDcqwocnjrcvRiP1lOcqYmhf6viI4omA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723856754; c=relaxed/simple;
	bh=TgxUPRMg9r8wGMbyBAA5601eKnZAzmCRsXMRjZ9URGw=;
	h=To:Subject:From:Message-Id:Date; b=VPhPLxM/orIon7T9vtAKkCgiNf6LdyHZtIvavdT3YIIvFfPtRA5K2ZOI8gO3c/SvneIAAZ0IabGeT19yws0xopoaXYgD1qPXYfEBcp3nEA6wwcvJXsasW6JiWx/P9CSxAY0xE1zV3FOdWez2ibKdrFGWz1fpD33jrL+/rdhAfDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAsRKX9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAsRKX9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECF7C32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723856753;
	bh=TgxUPRMg9r8wGMbyBAA5601eKnZAzmCRsXMRjZ9URGw=;
	h=To:Subject:From:Date:From;
	b=PAsRKX9YcmquhORnKo7vl9S4x10DZE5fICd895TI68tm88oQu9Kkvk2c1YTg6yuHK
	 B9FljtmbqoQfeDkycUidh+IgKWbTW6OrOGnPr0aU0SbvT1V4BgOTVD+kKVyjQlC2bK
	 l+LtZtIPBTrbXJHuOonud4LKT6rQsrieUk6xaJFBPKznWdNUwGZSDClz32o7YmpcRU
	 qVJ0zwxy3gdK+eJjSFc11nys45xE4j/uHAPcF9SymtsRm0f25YHoWTuwVohgqDMTSE
	 adtpb0KMY/Yp0tfUT72s9OVyrogE8T4uXJQFO6z5MJkZ+Z6F79hka3JUGxPz3r7uAi
	 J9KNvbudfnc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965CAC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385675360.8872.11986945782435893492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e178ca7c0822c86e7bbb915ecf704ec9f02f79b0f5b29ae26e918f82d8587a
Date: Sat, 17 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723856753
