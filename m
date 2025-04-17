Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8EA1CAA92
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744872595; cv=none; b=fdzYkObcDhsgERWsM0/YImBAq9865nhs4DK58iBHAwfUejJK5KYehb4zI678bEMXwbcdK1I6++Bq5JP+I3ksjVf/jwslBJyvoisGe/XgwwdZ+cenYrD4h5rA6IVSr5HWVRvyGlNlE8S0Gum7i5TklG+LctoUMtezKRWixSmf+GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744872595; c=relaxed/simple;
	bh=OHTZOczmcOvJxR6KXsOE2iSkexEQKKPzYF8qSfoR0EI=;
	h=To:Subject:From:Message-Id:Date; b=oufRH0GpxBltltSTNwPP2UIPfPowSK5Bxt/P604nimNp3uQLvbdkBeHHUiYjnwLxPXq9bP56IBA/c1ww/4U9aq5BySW3mruGinJrQPj1U5n+Ur/0blmDwiLhpkqoPtWbu9E6Oi+YdIktQ+8w3A9I4Jf6U25McsPTmt4vWmVWQQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z174id9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z174id9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B134BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744872593;
	bh=OHTZOczmcOvJxR6KXsOE2iSkexEQKKPzYF8qSfoR0EI=;
	h=To:Subject:From:Date:From;
	b=Z174id9MUMzpqU8MFKBqSa70JgdJ7KRmtIZeCTEA3ILE2n+EFHx8EPUjDREVronrV
	 urDjLuqzhLBPkQmRb5zMhRD/1IesWbCWx+XjlWcfB1X22MbjR7HG7v8AGK24DmI4Gq
	 qzKd+0U0JLVdUQR+uUiTAmL9fiT1sdKxRuEzeiR//WVA5VBw1AEz/jiVtnrtKlUJXH
	 rPfUWapbwUi7lr5iVVzXQmaMzWMEK08PKDiqSa/2pJ7de0eGmUSnGiWB47mUkWwh7N
	 7DrBcYSgj/EMxsyM9lNVJaI8mZ1UsLnoBTVNBUM8miLMfrlCeLJshxWHR4DzF1Oso6
	 HBJbAMDHZGMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E97C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487259361.11543.11589931919511022899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71511bafcc567927555746d9cd0f4bfc371d35d0955be0f7566aa9fad00fe005
Date: Thu, 17 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744872593
