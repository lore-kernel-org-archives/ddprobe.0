Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296361990B3
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731108354; cv=none; b=PqJbqo9TVBQgnCz4isG2HAXVafbIeyqA8liP13SQjquyNCBD+weZJMOuQekJhKpKUxGt9JCVkyG2S2u3lP9awqW2wOC9P6O20WMAxdrZ4u1CIkBis1nJMjF+BNj+qMq5lR0xcT7H3Tf5qUmQgWy7SuIVQeUz/2FvDWizHDJHI8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731108354; c=relaxed/simple;
	bh=6j1y7u0FDeUwXckzzhNKMa+sfY1s5DGjG4sy659zqcs=;
	h=To:Subject:From:Message-Id:Date; b=NPm8rN9h/FHtyRC5ISIC2Q8SIvA9nYITPd7iwsT4BmQ0EKwUQ3LdwyceBmYVGWGWLYfHdaaTS9ngNJXJLX2J6OHBTyFTbaaSECtOvrHaqUaeXtgP9V0phhzJ9pOiNKq7pmysKe4DfLvOZ3onE36Gw3CN+NlNe0lGGNRGGUb9xug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrAol3pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrAol3pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF6C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731108353;
	bh=6j1y7u0FDeUwXckzzhNKMa+sfY1s5DGjG4sy659zqcs=;
	h=To:Subject:From:Date:From;
	b=TrAol3ppSSeGCqH8ppMl1H2ycWTKuV+3oBxomFM//ShLqjyeiv4jSvjfnXRn/e4Jc
	 uhAwfO3rEsojXuA7993baqMALEofQ7mptDksctJt/crNfJCz4rAmk9Ejaf8Bw25DC0
	 4oK4pWkw+uEhtevuV0oEHCoAJk01iL4GeE/G01pvC/MkLdwLVEcpry6FgPfICeS39u
	 U0l32SLSoquZOyZm+knvRdBgssVXlOMVK0m8P4R483EDzLiH1RNhpdoVfK/ipq4g8a
	 68cLYvhHLfEnykigjUoXFVf8gjhG0LZ/ewtQ36M8HO23jpM9ykzZUTqpTN5D7KAn9/
	 rin82jiD7VdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A6D64097
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173110835363.26151.7868727585252763117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b3bc429b855a14fe9f40e76478362202aab60a4ace1c5370133b118eff1c95
Date: Fri, 08 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731108353
